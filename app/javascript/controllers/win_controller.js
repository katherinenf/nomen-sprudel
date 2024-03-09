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
    console.log(JSON.stringify({updateIDs}))
    
    // everything above this comment works
    fetch('/update_many', {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: JSON.stringify(updateIDs)
    })
    .then(response => response.json())
    .then(data => {
      console.log(data);
    })
  }
}
