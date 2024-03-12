import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ['static', 'dynamic']
  connect() {
    console.log("hi from toggle")
  }

  changeMode() {
    console.log("change is good")
    console.log(this.staticTarget)
    console.log(this.dynamicTarget)
  }
}
