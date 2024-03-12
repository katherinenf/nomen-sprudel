import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="answer"
export default class extends Controller {
  static targets = ['article', 'noun', 'answers', 'info', 'quit', 'win', 'overlay', 'english']

  connect() {
    // set the first word as visible
    this.nounTarget.classList.add('active')
  }

  popupWin() {
    this.winTarget.classList.toggle("show");
    this.overlayTarget.classList.toggle("show");
  }

  popupQuit() {
    this.quitTarget.classList.toggle("show");
    this.overlayTarget.classList.toggle("show");
  }

  showEnglish() {
    this.englishTarget.classList.toggle("d-none")
  }

  // triggered when a der/die/das bubble is clicked
  checkAnswer(event) {
    const clickedElement = event.currentTarget
    // find the active noun
    const currentNoun = document.querySelector('.active')
    // if the correct answer was chosen
    console.log(event.target.innerText)
    console.log(currentNoun.dataset.article)
    if (event.target.innerText == currentNoun.dataset.article) {
      // add the article to the noun bubble
      currentNoun.innerHTML = `<p>${currentNoun.dataset.article}</p>
                               <p>${currentNoun.innerText}</p>`
      // display green
      this.nounTargets.forEach(target => {
      console.log(target);
      target.classList.add("right")
      });

      // display the win pop up if player has reached the end of the set
      if (currentNoun.nextElementSibling == null) {
        this.popupWin()
      } else {
      // pause so the player can see the combination
      setTimeout(() => {
        // switch the active element
        this.nounTargets.forEach(target => {
          target.classList.remove("right")
        });
        currentNoun.classList.remove('active')
        currentNoun.nextElementSibling.classList.add('active')
        }, 1500);
      }
      // if in bubble mode, create more bubbles
      this.triggerSecondControllerMethod()
    // if the incorrect answer was chosen
    } else {
      // update the instance mastery to false
      currentNoun.dataset.mastery="false"

      // Add the "shake" class to the clicked element
      clickedElement.classList.add('shake');

      // displaye red
      this.nounTargets.forEach(target => {
        target.classList.add("wrong")
      });

      //check if this word is already the last in the list
      if (this.answersTarget.lastElementChild.dataset.id != currentNoun.dataset.id) {

      // Add the word to the end of the list
      this.answersTarget.insertAdjacentHTML('beforeend',
      `<button class="round-button d-none"
      data-answer-target='noun'
      data-english=${currentNoun.dataset.english}
      data-article=${currentNoun.dataset.article}
      data-mastery='false'
      data-id=${currentNoun.dataset.id}>
      ${currentNoun.innerText}
      </button>`)
    }
    // Remove the "shake" and green after the animation duration
    setTimeout(() => {
      this.nounTargets.forEach(target => {
        target.classList.remove("wrong")
      });
      clickedElement.classList.remove('shake');
      }, 1500);
    }
  }

    popupInfo() {
    this.infoTarget.classList.toggle("show");
    this.overlayTarget.classList.toggle("show");
  }

  postMasteries() {
    let masteryString = ""
    this.answersTarget.children.forEach(word => {
      if(word.dataset.mastery) {
        masteryString += word.dataset.id
      }
    });
  }

  triggerSecondControllerMethod() {
    const element = document.querySelector('[data-controller="bubble"]');
    const secondController = this.application.getControllerForElementAndIdentifier(element, "bubble")
    if (secondController) {
      secondController.addBubbles()
    }
  }
}
