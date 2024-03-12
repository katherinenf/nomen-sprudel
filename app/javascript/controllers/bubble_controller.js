import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bubble"
export default class extends Controller {
  static targets = ['box']

  connect() {
  }

  popBubble(event) {
    // Perform actions to pop the bubble, e.g., hide or remove it
    event.target.closest(".bubble").style.display = 'none';
    console.log(event.target.closest(".bubble"))
    this.audioBubble()
  }

  addBubble() {
    const bubbles = ["bubble b1", "bubble b2", "bubble b3", "bubble b4", "bubble b5"]
    console.log(bubbles.sample)
    const articles = ["der", "die", "das"]
    this.boxTarget.insertAdjacentHTML("beforeend",
    `<div class= ${bubbles.sample} data-controller="bubble" data-action="click->bubble#popBubble click->answer#checkAnswer">
    <div class="bubble-text"><p>${articles.sample}</p></div>
    </div>`
    )
  }

  audioBubble() {
    const audio = document.getElementById("bubble")
    audio.play();
  }
}
