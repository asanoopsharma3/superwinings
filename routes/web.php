<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\Auth\AuthOtpController;
use App\Http\Controllers\Auth\QuizController;
use Inertia\Inertia;
use Illuminate\Support\Facades\Auth;

use \App\Http\Middleware\CheckQuestionLimit;

// Route::get('/', function () {

//     return Inertia::render('Welcome', [
//         'canLogin' => Route::has('login'),
//         'canRegister' => Route::has('register'),
//         'laravelVersion' => Application::VERSION,
//         'phpVersion' => PHP_VERSION,
//     ]);
// });

Route::get('/dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
});

Route::get('/', function () {
    return view('home');
});

Route::controller(App\Http\Controllers\Auth\AuthOtpController::class)->group(function(){
    Route::get('otp/login', 'login')->name('otp.login');
    Route::match(['get', 'post'],'otp/generate', 'generate')->name('otp.generate');
    Route::get('otp/verification', 'verification')->name('otp.verification');
    Route::post('otp/login', 'loginWithOtp')->name('otp.getlogin');


});

Route::get('/logout', function () {
    Auth::logout();
    return redirect('/otp/login')->with('status', 'Logged out successfully!');
})->name('logout');

Route::middleware(['auth'])->group(function () {
    Route::get('/quiz/{questionNumber?}', [QuizController::class, 'showQuestion'])->name('quiz.show')->middleware(CheckQuestionLimit::class);;
    Route::post('/quiz/answer', [QuizController::class, 'answerQuestion'])->name('quiz.answer');
    Route::get('/purchase-plan', [QuizController::class, 'showPurchasePlan'])->name('quiz.purchasePlan');
    Route::post('/quiz/purchase-plan/{planId}', [QuizController::class, 'purchasePlan'])->name('quiz.purchasePlan.purchase');
    Route::get('subscription-done', [QuizController::class, 'buySubcription'])->name('subscription-done');

    Route::get('/play', function () {
        return view('auth.startplay');
    });
});

//Route::get('/user-login',[UsersController::class, 'index']);

require __DIR__.'/auth.php';
