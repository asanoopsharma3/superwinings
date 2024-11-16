    <div class="container">
        <h2>Select a Plan to Continue</h2>
        <p>Choose a plan to unlock more questions.</p>

        <ul>
            @foreach($plans as $plan)
                <li>
                    <h4>{{ ucfirst($plan->duration) }} Plan</h4>
                    <p>Price: ${{ $plan->price }}</p>
                    <p>Question Limit: {{ $plan->question_limit }}</p>
                    <form action="{{ route('quiz.purchasePlan.purchase', $plan->id) }}" method="POST">
                        @csrf
                        <button type="submit" class="btn btn-primary">Purchase</button>
                    </form>
                </li>
            @endforeach
        </ul>
    </div>
