import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bubble"
export default class extends Controller {
  static targets = ['box']

  connect() {
    this.addBubbles()
  }

  addBubble(bubble, article) {
    this.boxTarget.insertAdjacentHTML("beforeend",
    `<div class="bubble ${bubble} answer" data-action="click->bubble#popBubble click->answer#checkAnswer">
      <div class="bubble-text"><p>${article}</p></div>
    </div>`)
  }

  popBubble(event) {
    // Perform actions to pop the bubble, e.g., hide or remove it
    event.target.closest(".bubble").classList.toggle('d-none');
    // console.log(event.target.closest(".bubble"))
    this.audioBubble()
    const bubble_type = event.target.closest(".bubble").classList[1]
    const article = event.target.innerText
    this.addBubble(bubble_type, article)
  }

  addBubbles() {
    this.boxTarget.insertAdjacentHTML("beforeend",
    `<div class="bubble b1 answer" data-action="click->bubble#popBubble click->answer#checkAnswer">
      <div class="bubble-text"><p>der</p></div>
    </div>
    <div class= "bubble b2 answer" data-action="click->bubble#popBubble click->answer#checkAnswer">
      <div class="bubble-text"><p>die</p></div>
    </div>
    <div class= "bubble b3 answer" data-action="click->bubble#popBubble click->answer#checkAnswer">
      <div class="bubble-text"><p>das</p></div>
    </div>`)
  }

  audioBubble() {
    const audio = document.getElementById("bubble")
    audio.play();
  }
}
