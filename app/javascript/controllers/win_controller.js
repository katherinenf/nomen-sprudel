import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="win"
export default class extends Controller {
  static targets = ["word"]

  connect() {
  }

  updateMasteries(event) {
    event.preventDefault()
    let updateIDs = ""
    // make a string of all the ids for which mastered is "true"
    this.wordTargets.forEach(word => {
      if (word.dataset.mastery === "true")
      {updateIDs += `${word.dataset.id} `}
    });
    // make a post request to masteries controller to update these words
    fetch('/masteries', {
      method: "POST",
      headers: { "Accept": "text/plain" },
      body: updateIDs
    })
  }
}
