import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="win"
export default class extends Controller {
  static targets = ["word"]

  connect() {
  }

  updateMasteries(event) {
    event.preventDefault()
    let updateIDs = ""
    this.wordTargets.forEach(word => {
      if (word.dataset.mastery === "true")
      {updateIDs += `${word.dataset.id} `}
    });
    console.log(updateIDs)
    fetch(this.winTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: updateIDs
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
      })
  }
}
