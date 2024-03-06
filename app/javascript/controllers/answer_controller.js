import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="answer"
export default class extends Controller {
  static targets = ['article', 'noun']

  connect() {
    this.nounTarget.classList.add('active')
  }

  checkAnswer(event) {
    console.log()
    const clickedElement = event.currentTarget

    if (event.target.innerText == document.querySelector('.active').dataset.article) {
      console.log('Correct!');
    } else {
      console.log('Incorrect!');

      // Add the "shake" class to the clicked element
      clickedElement.classList.add('shake');

      // Remove the "shake" class after the animation duration (adjust as needed)
      setTimeout(() => {
        clickedElement.classList.remove('shake');
      }, 3000);
    }
  }
}
