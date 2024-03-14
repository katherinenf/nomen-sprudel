import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="clear-form"
export default class extends Controller {
  static targets = ['input', 'search', 'modal']

  connect() {
    this.inputTarget.value = ''
  }

  filter() {
    const id = this.element.dataset.id
    const url = `/word_set_create/${id}?query=${this.inputTarget.value}`
    fetch(url, { headers: { "Accept": "text/plain"}})
    .then(response =>
       response.text()
    )
    .then((data) => {
      this.modalTarget.innerHTML = data
    })
  }
}
