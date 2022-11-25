import { Controller } from "@hotwired/stimulus";

let address;

// Connects to data-controller="geolocation"
export default class extends Controller {
  static targets = ["field"];

  // Get coordinates from Browser
  getPosition() {
    return new Promise((res, rej) => {
      navigator.geolocation.getCurrentPosition(res, rej);
    });
  }

  // Reverse geocode coords to address
  async formatLatLonToAddress(latLon) {
    const lat = latLon.coords.latitude;
    const lon = latLon.coords.longitude;

    const url = `https://api.geoapify.com/v1/geocode/reverse?lat=${lat}&lon=${lon}&apiKey=ff4ae31a526c4cf4b4baab1bdd6ff32e`;

    const data = await fetch(url).then((response) => response.json());
    return data.features[0].properties.formatted;
    //return data.display_name;
  }

  // Get set the address in the field
  async connect() {
    this.fieldTarget.value = "Loading...";

    const coords = await this.getPosition();
    const address = await this.formatLatLonToAddress(coords);

    this.fieldTarget.value = address;
  }
}
