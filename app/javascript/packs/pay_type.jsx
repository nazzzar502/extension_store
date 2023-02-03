import React from "react";
import ReactDOM from "react-dom";
import PayTypeSelector from 'PayTypeSelector'

// document.addEventListener("DOMContentLoaded", () => {
//   ReactDOM.render(
//     <PayType name="React" />,
//     document.body.appendChild(document.createElement("div"))
//   );
// });

document.addEventListener('turbolinks:load', function() {
  let element = document.getElementById("pay-type-component");
  ReactDOM.render(<PayTypeSelector />, element);
});
