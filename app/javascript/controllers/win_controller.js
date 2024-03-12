import { Controller } from "@hotwired/stimulus"
// import confetti from "canvas-confetti";

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

  // testConfetti(event) {
  //   event.preventDefault();
  //   confetti({particleCount: 400, spread: 60, zIndex: 1003, gravity:1.5, colors:["#B65B69", "#B65BA1", "#1FFA0D", "#1B0DFA","#F6FA0D", "#0DEFFA", "#FB0526", "#FB0584", "#FB7905", "#05FBF7" ], shapes: ["star"]});
  // }
}
