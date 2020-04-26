const toggler = document.querySelector(".navbar-toggler");
const navHeader = document.querySelector("#navbarHeader");

toggler.addEventListener("click", function () {
  navHeader.classList.toggle("show");
  navHeader.classList.toggle("collapse");
});
