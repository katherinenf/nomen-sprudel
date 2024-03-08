import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="selection"
export default class extends Controller {
  static targets = ['dropdown', 'list', 'form']
  connect() {
  }

  listWords() {
    const url = `${this.formTarget.action}/${(this.dropdownTarget.value)}`
    // const url = word_sets_path(this.dropdownTarget.value)
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.listTarget.innerHTML = data
      })
  }
}
