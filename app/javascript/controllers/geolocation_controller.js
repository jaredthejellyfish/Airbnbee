import { Controller } from "@hotwired/stimulus";

let address = "";

// Connects to data-controller="geolocation"
export default class extends Controller {
  static targets = ["field"];

  getLocation() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(this.formatLatLonToAddress);
    } else {
      console.log("Geolocation is not supported by this browser.");
    }
  }

  async formatLatLonToAddress(latLon) {
    const lat = latLon.coords.latitude;
    const lon = latLon.coords.longitude;

    const url = `https://nominatim.openstreetmap.org/reverse?format=jsonv2&lat=${lat}&lon=${lon}`;

    const response = await fetch(url);
    const data = await response.json();
    address = data.display_name;
  }

  fillInputField() {
    this.fieldTarget.value = address;
  }

   delay(delayInms) {
    return new Promise(resolve => setTimeout(resolve, delayInms));
  }

  async connect() {
    this.getLocation();
    const slowdown = await this.delay(1000);
    this.fillInputField();
  }
}
