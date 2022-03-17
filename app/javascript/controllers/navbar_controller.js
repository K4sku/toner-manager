import { Controller } from "@hotwired/stimulus";

export default class extends Controller {

    connect() {
        console.log("Hello, Stimulus!", this.element)
    }

    hamburger_toggle(event) {
        // Get the target from the "data-target" attribute
        const $target = document.getElementById(event.params.id);
 
        // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
        event.currentTarget.classList.toggle('is-active');
        $target.classList.toggle('is-active');
    }
}