import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="create-new-instance"
export default class extends Controller {
  static targets = ["word"]

  connect() {
    console.log("Hello from the controller");
  }

  add_word(event) {
    console.log("Hello again");
    event.preventDefault();

    fetch(this.wordTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json" }, // don't know what this does yet
      body: new FormData(this.wordTarget)
    })
    .then((data) => {
    if (data.inserted_item) {
      // beforeend could also be dynamic with Stimulus values
      this.itemsTarget.insertAdjacentHTML("beforeend", data.inserted_item)
    }
    this.wordTarget.outerHTML = data.form
    })
  }
}
