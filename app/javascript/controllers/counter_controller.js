import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'number' ];

  connect() {
    // puts @numberTarget
    // console.log(this.numberTarget);
    setInterval(this.refresh, 1000);
    // run the refresh function for this class 
  }

  // refresh() {
  refresh = () => {
    console.log('refresh is running')

    // fetch the restaurants from the backend
    fetch('/restaurants', { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        // change the innerText of the numberTarget with that number
        const restaurants = data.restaurants;
        this.numberTarget.innerText = restaurants.length;
      });
  }
}

// class Name < Controller
//     def connect
//       puts "Hello!"
//     end
// end