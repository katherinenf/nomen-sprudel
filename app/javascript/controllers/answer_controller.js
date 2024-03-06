import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="answer"
export default class extends Controller {
  static targets = ['article', 'noun']

  connect() {
    // set the first word as visible
    this.nounTarget.classList.add('active')
  }


  checkAnswer(event) {
    console.log()
    const clickedElement = event.currentTarget
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
        // switch visibility
        currentNoun.classList.classList.toggle('d-none')
        currentNoun.nextElementSibling.classList.toggle('d-none')
      }, 1000);
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
