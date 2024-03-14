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
      headers: {'Content-Type': 'application/json',
                'Accept': 'application/json',
                'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
                }
    })

    .then(response => {
      this.element.style.backgroundColor = '#8EC3AE';
      event.target.classList.add("d-none");
    })
  }
}
