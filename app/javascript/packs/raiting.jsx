import React from "react";
import ReactDOM from "react-dom";
import Raiting from '../components/shared/Raiting'
import { RaitingSetter } from "../components/shared/RaitingSetter";

// document.addEventListener("DOMContentLoaded", () => {
//   ReactDOM.render(
//     <PayType name="React" />,
//     document.body.appendChild(document.createElement("div"))
//   );
// });

document.addEventListener('turbolinks:load', function() {
  let element = document.getElementById("raiting-component");
  ReactDOM.render(<RaitingSetter />, element);
});
