import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bubble"
export default class extends Controller {
  static targets = ['box']

  connect() {
    this.addBubbles()
  }

  popBubble(event) {
    // Perform actions to pop the bubble, e.g., hide or remove it
    event.target.closest(".bubble").style.display = 'none';
    // console.log(event.target.closest(".bubble"))
    this.audioBubble()
  }

  getRandomInt(max) {
    return Math.floor(Math.random() * max);
  }

  addBubbles() {
    const articles = ["der", "die", "das"]
    console.log(articles.sample)
    this.boxTarget.insertAdjacentHTML("beforeend",
    `<div class="bubble b1" data-action="click->bubble#popBubble click->answer#checkAnswer">
      <div class="bubble-text"><p>der</p></div>
    </div>
    <div class= "bubble b2" data-action="click->bubble#popBubble click->answer#checkAnswer">
      <div class="bubble-text"><p>die</p></div>
    </div>
    <div class= "bubble b3" data-action="click->bubble#popBubble click->answer#checkAnswer">
      <div class="bubble-text"><p>das</p></div>
    </div>
    <div class= "bubble b4" data-action="click->bubble#popBubble click->answer#checkAnswer">
      <div class="bubble-text"><p>${articles[this.getRandomInt(3)]}</p></div>
    </div>
    <div class= "bubble b5" data-action="click->bubble#popBubble click->answer#checkAnswer">
      <div class="bubble-text"><p>${articles[this.getRandomInt(3)]}</p></div>
    </div>`)
  }

  audioBubble() {
    const audio = document.getElementById("bubble")
    audio.play();
  }
}
