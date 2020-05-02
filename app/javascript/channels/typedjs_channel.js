import Typed from "typed.js";
document.addEventListener("DOMContentLoaded", () => {
  var typed = new Typed("#typed-paragraph", {
    strings: ["This is some text", "This is some more text"],
    typeSpeed: 30,
    backSpeed: 30,
    backDelay: 700,
  });
});
