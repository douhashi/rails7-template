import { Controller } from "@hotwired/stimulus" 

export default class extends Controller {
  connect() { // => «connect» method is similar to initialize method in a ruby-class
    console.log("Hello, ExampleComponent!")
  }
}


