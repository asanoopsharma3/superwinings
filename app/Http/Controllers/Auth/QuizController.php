<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Question;
use App\Models\Options;
use App\Models\UserAnswer;
use App\Models\QuizAttempt;
use Carbon\Carbon;
use Auth;

class QuizController extends Controller
{

    public function __construct()
    {

    }

    public function showQuestion($questionNumber = 1)
    {


        $correctAnswer = QuizAttempt::where('user_id',auth()->id())->get();
        $correctAnswerCount = 0;
        if(!empty($correctAnswer) && count($correctAnswer) > 0){
            $correctAnswerCount = $correctAnswer[0]->correct_answers;
        }
        $question = Question::with('options')->skip((int) $questionNumber - 1)->first();
        if (!$question) {
            return redirect()->route('quiz.results');
        }

        return view('quiz.question', compact('question', 'questionNumber', 'correctAnswerCount'));
    }

    public function answerQuestion(Request $request)
    {
        $request->validate([
            'question_id' => 'required|exists:questions,id',
            'option_id' => 'required|exists:options,id'
        ]);

        
        $option = Options::find($request->option_id);
        $isCorrect = $option->is_correct;
        // $isCorrect = $userAnswer === $correctAnswer;    
        UserAnswer::create([
            'user_id' => auth()->id(),
            'question_id' => $request->question_id,
            'option_id' => $request->option_id
        ]);

        if ($isCorrect) {
            $quizAttempt = QuizAttempt::firstOrCreate(
                ['user_id' => auth()->id()],
                ['correct_answers' => 0]
            );
            $quizAttempt->increment('correct_answers');
        }
        return redirect()->route('quiz.show', ['questionNumber' => (int) $request->questionNumber + 1])->with(['isCorrect' => $isCorrect]);
    }

    public function showPurchasePlan()
    {
        $plans = \App\Models\Plan::all();
        return view('quiz.purchase', compact('plans'));
    }

    public function purchasePlan($planId)
    {
        $plan = Plan::findOrFail($planId);
        $user = auth()->user();

        $expirationDate = match($plan->duration) {
            'daily' => Carbon::now()->addDay(),
            'weekly' => Carbon::now()->addWeek(),
            'monthly' => Carbon::now()->addMonth(),
        };

        $user->update([
            'plan_id' => $plan->id,
            'plan_expiration' => $expirationDate,
        ]);

        return redirect()->route('quiz.show', ['questionNumber' => 1]);
    }

    public function showResults()
    {
        // Logic to display results
        return view('quiz.plans');
    }
}
