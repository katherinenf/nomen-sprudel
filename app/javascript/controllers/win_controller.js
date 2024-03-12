import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="win"
export default class extends Controller {
  static targets = ["words"]

  connect() {
  }

  updateMasteries() {
    console.log(this.wordsTarget)
  }
}
