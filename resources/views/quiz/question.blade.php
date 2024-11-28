
@include('head')
<main>
    <div class="container">
        @include('header')
        <div class="question-box">
        <div class="wrap">
            <div class="count" ><span >15</span></div>
            <div class="border">
            <div class="question gradient-border">
            <div>
            {{ $questionNumber }}. {{ $question->question_text }}
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
                    <li><label for="input-ID{{ $option->id }}" class="radio-label"><input type="radio" class="quiz-radio" id="input-ID{{ $option->id }}" name="option_id" value="{{ $option->id }}" required>{{ $option->option_text }}</label></li>
                @endforeach
            </ul>
            <button type="button" onclick="submitAnswer()" class="glow-on-hover mt2">NEXT</button>
           </form>
            </ul>

            </div>

        </div>
    </div>
</main>
<!-- Popup Modal -->
<!-- <div class="notification-card success" >
  <div class="icon">
    <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24" fill="green">
      <path d="M9.55 16.45 5.1 12l1.4-1.4 3.05 3.05L17.5 5.7l1.4 1.4Z" />
    </svg>
  </div>
  <div class="content">
    <h3>Success</h3>
    <p id="success_msg"></p>
  </div>
  <button class="close-btn" onclick="hideNotification(this)">×</button>
</div> -->

<!-- <div class="notification-card danger">
  <div class="icon">
    <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24" fill="red">
      <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z" />
    </svg>
  </div>
  <div class="content">
    <h3>Danger</h3>
    <p class="danger">ghsfdgfsdfs</p>
  </div>
  <button class="close-btn" onclick="hideNotification(this)">×</button>
</div> -->

<!-- <div id="answerModal" class="modal" style="display: none;">
        <div class="modal-content">
            <span class="close">&times;</span>
            <p id="answerFeedback"></p>
        </div>
</div> -->

<script>
        $(document).ready(function () {
            // On radio button click
            $('.quiz-radio').on('click', function () {
                $('.radio-label').removeClass('checked');
                $(this).parent().addClass('checked');
            });
        });
        function toggleDrawer() {
            const drawer = document.getElementById('notificationDrawer');
            drawer.classList.toggle('open');
            }

        function submitAnswer() {
            document.getElementById("quizForm").submit();
        }

        document.addEventListener("DOMContentLoaded", function() {
          let timerDuration = 15; // Time in seconds
            const timerDisplay = document.getElementById('time-left');
            const quizForm = document.getElementById('quizForm');

            // Countdown function
            function startTimer() {
                const countdown = setInterval(() => {
                    timerDuration--;
                    timerDisplay.textContent = timerDuration;

                    if (timerDuration === 5) {
                        timerDisplay.style.color = 'red'; // Change timer text to red
                    }
                    // Check if time is up
                    if (timerDuration <= 0) {
                        clearInterval(countdown);
                        removeRequiredAndSubmit();
                    }
                }, 1000);
            }

 
            // Auto-submit function
            function removeRequiredAndSubmit() {
            // Remove the `required` attribute from checkboxes or any input
            const requiredInputs = quizForm.querySelectorAll('[required]');
            requiredInputs.forEach(input => input.removeAttribute('required'));

            alert('Time is up! Submitting the quiz.');
            quizForm.submit(); // Automatically submit the form
          }
            // Start the timer when the page loads
            startTimer();
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
        body {
  font-family: Arial, sans-serif;
  background-color: #f0f0f0;
  padding: 20px;
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.notification-card {
  display: flex;
  align-items: center;
  border-radius: 12px;
  padding: 20px;
  width: 400px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  position: fixed;
    right: 0;
    bottom: 45px;

}

.notification-card .icon {
  flex-shrink: 0;
  margin-right: 20px;
}

.notification-card .content h3 {
  margin: 0;
  font-size: 18px;
}

.notification-card .content p {
  margin: 5px 0 0;
  font-size: 14px;
}

.notification-card .close-btn {
  position: absolute;
  top: 15px;
  right: 15px;
  background: none;
  border: none;
  font-size: 20px;
  color: #666;
  cursor: pointer;
  transition: color 0.2s ease;
}

.notification-card .close-btn:hover {
  color: #000;
}

/* Success */
.notification-card.success {
  background-color: #c8f7c5;
  border: 2px solid #4caf50;
}

.notification-card.success h3 {
  color: #2e7d32;
}

/* Info */
.notification-card.info {
  background-color: #d1ecf1;
  border: 2px solid #17a2b8;
}

.notification-card.info h3 {
  color: #0c5460;
}

/* Warning */
.notification-card.warning {
  background-color: #fff3cd;
  border: 2px solid #ffc107;
}

.notification-card.warning h3 {
  color: #856404;
}

/* Danger */
.notification-card.danger {
  background-color: #f8d7da;
  border: 2px solid #dc3545;
}

.notification-card.danger h3 {
  color: #721c24;
}

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