import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="answer"
export default class extends Controller {
  static targets = ['article', 'noun']

  connect() {
    // set the first word as visible
    this.nounTarget.classList.add('active')
  }

  checkAnswer(event) {
    const clickedElement = event.currentTarget
    const currentNoun = document.querySelector('.active')

    // if the correct answer was chosen
    if (event.target.innerText == currentNoun.dataset.article) {
      // add the article to the noun bubble
      currentNoun.innerHTML = `<p>${currentNoun.dataset.article}</p>
                               <p>${currentNoun.innerText}</p>`

      // pause so the player can see the combination
      setTimeout(() => {
        // switch the active element
        currentNoun.classList.remove('active')
        currentNoun.nextElementSibling.classList.add('active')
      }, 1000);

    // if the incorrect answer was chosen
    } else {
      // Add the "shake" class to the clicked element
      clickedElement.classList.add('shake');

      // Remove the "shake" class after the animation duration (adjust as needed)
      setTimeout(() => {
        clickedElement.classList.remove('shake');
      }, 3000);
    }
  }

}
