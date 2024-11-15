import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="clearform"
export default class extends Controller {
  clear() {
    console.log("Form submitted");
    this.element.reset();
  }
}
