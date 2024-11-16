
@include('head')
<main>
    <div class="container">
        @include('header')
        <div class="question-box">
        <div class="wrap">
            <div class="count">{{ $questionNumber }}</div>
            <div class="border">
            <div class="question gradient-border">
            <div>
                {{ $question->question_text }}
            </div>
            </div>
            </div>
            <ul type="A">
            <form action="{{ route('quiz.answer') }}" method="POST" id="quizForm">
            @csrf
            <input type="hidden" name="question_id" value="{{ $question->id }}">
            <input type="hidden" name="questionNumber" value="{{ $questionNumber }}">
            <ul type="A">
                @foreach($question->options as $option)
                    <li><input type="radio" name="option_id" value="{{ $option->id }}" required>{{ $option->option_text }}</li>
                @endforeach
            </ul>
            <button type="button" onclick="submitAnswer()" class="glow-on-hover">Submit Answer</button>
           </form>
            </ul>

            </div>

        </div>
    </div>
</main>
<!-- Popup Modal -->
<div id="answerModal" class="modal" style="display: none;">
        <div class="modal-content">
            <span class="close">&times;</span>
            <p id="answerFeedback"></p>
        </div>
</div>

<script>
        function submitAnswer() {
            document.getElementById("quizForm").submit();
        }

        document.addEventListener("DOMContentLoaded", function() {
            @if(session('isCorrect') !== null)
                // Display feedback based on the answer correctness
                const answerFeedback = "{{ session('isCorrect') ? 'Hurray ! That’s the right answer ' : 'Sorry ! That’s the wrong answer' }}";
                document.getElementById("answerFeedback").innerText = answerFeedback;
                document.getElementById("answerModal").style.display = "block";

                // Close the popup and redirect to the next question after 5 seconds
                setTimeout(function() {
                    document.getElementById("answerModal").style.display = "none";
                }, 3000);
            @endif
        });
    </script>

    <style>
        .modal {
            display: block;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgb(0, 0, 0);
            background-color: rgba(0, 0, 0, 0.4);
            padding-top: 60px;
        }
        .modal-content {
            background-color: #fefefe;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
    </style>
@include('footer')