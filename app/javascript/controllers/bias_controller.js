import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'bias' ];

  analyse() {
    this.biasTarget.classList.remove("d-none");
    
  }

  stopanalyse() {
    this.biasTarget.classList.add("d-none");
  }
}