import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Look controller connected");
  }

  showForm(event) {
    event.preventDefault();
    const frame = document.getElementById("new_look");
    frame.style.display = "block";
  }

  hideForm(event) {
    event.preventDefault();
    const frame = document.getElementById("new_look");
    frame.style.display = "none"; 
  }
}
