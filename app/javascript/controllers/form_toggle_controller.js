import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-toggle"
export default class extends Controller {
  static targets = ["togglableElement"]

  connect() {
    console.log("Hello again");
  }

  fire() {
    this.togglableElementTarget.classList.toggle("d-none");
  }
}
