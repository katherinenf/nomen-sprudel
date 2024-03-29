import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="selection"
export default class extends Controller {
  static targets = ['dropdown', 'list', 'form', 'button']
  connect() {
  }

  listWords() {
    if(this.dropdownTarget.value == "") {
      this.buttonTarget.classList.add('d-none')
      this.listTarget.classList.add('d-none')
    } else {
      this.buttonTarget.classList.remove('d-none')
      const url = `${this.formTarget.action}/${(this.dropdownTarget.value)}`
      fetch(url, {headers: {"Accept": "text/plain"}})
        .then(response => response.text())
        .then((data) => {
          this.listTarget.innerHTML = data
        })
    }
  }
}
