import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'bias' ];

  analyse() {
    this.biasTarget.classList.toggle("d-none");
  }
}