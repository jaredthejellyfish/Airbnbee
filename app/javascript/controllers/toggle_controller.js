import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="map-toggle"
export default class extends Controller {
  static targets = ["mapContainer", "toggle"];

  isHidden() {
    if (getComputedStyle(this.mapContainerTarget).display === "block") return false;
    else return true;
  }

  fadeOut(element) {
    let height = 400; // initial opacity
    const timer = setInterval(function () {
      if (height <= 0.5) {
        clearInterval(timer);
        element.style.height = "0px";
        element.style.display = "none";
      }
      element.style.height = height + "px";
      height -= height * 0.1;
    }, 10);
  }

  fadeIn(element) {
    let height = 1; // final height
    element.style.display = "block";
    const timer = setInterval(function () {
      if (height >= 370) {
        clearInterval(timer);
      }
      element.style.height = height + "px";
      height += height * 0.1;
    }, 10);
  }

  toggle() {
    if (this.isHidden() ){
      this.fadeIn(this.mapContainerTarget);
      this.toggleTarget.innerHTML = "Hide Map";

    }
    else {
      this.fadeOut(this.mapContainerTarget);
      this.toggleTarget.innerHTML = "Show Map";
      this.mapContainerTarget.style.border = "2.4px solid transparent";
    }
  }
}
