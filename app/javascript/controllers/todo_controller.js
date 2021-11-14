import { Controller } from "stimulus"
export default class extends Controller {
    static targets = [ "completed" ]
    toggle(event) {
        // Code to follow
        let formData = new FormData()
        formData.append("todo[completed]", this.completedTarget.checked);
    }
}