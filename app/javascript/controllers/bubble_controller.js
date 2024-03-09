import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bubble"
export default class extends Controller {
  connect() {
    console.log("Hello");
    // Add click event listener to the element
    this.element.addEventListener('click', () => {
      this.popBubble();
    });
  }

  popBubble() {
    // Perform actions to pop the bubble, e.g., hide or remove it
    this.element.style.display = 'none';
    this.audioBubble()
  }

  audioBubble() {
    const audio = document.getElementById("bubble")
    audio.play();
    console.log("pop");
  }
}
