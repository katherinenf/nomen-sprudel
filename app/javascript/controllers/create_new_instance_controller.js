import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="create-new-instance"
export default class extends Controller {
  static targets = ["word"]
  static values = {url: String, wordId: Number}

  connect() {
    console.log("Hello from the controller");
  }

  add_word(event) {
    console.log("Hello again");
    console.log(this.wordTarget);
    //console.log(this.buttonTarget);
    // event.preventDefault();

    fetch(this.urlValue, {
      method: "POST",
      headers: {"Content-Type": "application/json"}, //respond_to as in the lecture
      body: this.wordIdValue
      })
    .then(response => response.json)
    .then((data) => {
      console.log(data)
      //create new instance in set
      // changing on the view
    })
  }
}
