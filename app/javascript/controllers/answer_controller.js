import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="answer"
export default class extends Controller {
  static targets = ['article', 'noun']

  connect() {
    this.nounTarget.classList.add('active')
  }

  checkAnswer(event) {
    console.log(event.target.innerText === document.querySelector('.active').dataset.article)
  }
}
