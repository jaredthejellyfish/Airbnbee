import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
}

const fetch_insects = () => {
  fetch('http://localhost:3000/api/insects')
    .then((response) => response.json())
    .then((data) => data['data']);
}