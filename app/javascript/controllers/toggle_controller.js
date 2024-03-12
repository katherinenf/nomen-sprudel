import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ['static', 'dynamic']
  connect() {
    console.log("hi from toggle")
  }

  changeMode() {
    this.staticTarget.classList.toggle("d-none")
    this.dynamicTarget.classList.toggle("d-none")
  }
}
