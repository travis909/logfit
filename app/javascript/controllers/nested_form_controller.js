import { Controller } from 'stimulus';

export default class extends Controller {
    static targets = ['add_exercise', 'template']

    add_association(event) {
        event.preventDefault()
        let content = this.templateTarget.innerHTML.replace(/TEMPLATE_RECORD/g, Math.floor(Math.random() * 20))
        this.add_exerciseTarget.insertAdjacentHTML('beforebegin', content)
    }
    remove_association(event){
        event.preventDefault()
        let item = event.target.closest(".nested-fields")
        item.querySelector("input[name+='_destroy']").value = 1
        item.style.display = 'none'
    }
}