import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="answer"
export default class extends Controller {
  static targets = ['article', 'noun', 'answers']

  connect() {
    // set the first word as visible
    this.nounTarget.classList.add('active')
  }


  checkAnswer(event) {
    const clickedElement = event.currentTarget
    // find the active noun
    const currentNoun = document.querySelector('.active')

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
    } else {
      // Add the "shake" class to the clicked element
      clickedElement.classList.add('shake');

      //check if this word is already the last in the list
      if (this.answersTarget.lastElementChild.dataset.english != currentNoun.dataset.english) {

      // Add the word to the end of the list
      this.answersTarget.insertAdjacentHTML('beforeend',
      `<button class="round-button d-none" data-answer-target='noun' data-english=${currentNoun.dataset.english} data-article=${currentNoun.dataset.article}>
          ${currentNoun.innerText}
          </button>`)
      }

      // Remove the "shake" class after the animation duration (adjust as needed)
      setTimeout(() => {
        clickedElement.classList.remove('shake');
      }, 3000);
    }
  }

}
