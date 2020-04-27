import Sortable from "sortablejs";
document.addEventListener("DOMContentLoaded", () => {
  const sortableItem = document.querySelector(".sortable");
  const card = document.querySelectorAll(".portfolio-item");

  card.forEach((e) => {
    e.addEventListener("drop", () => {
      set_position(card);
    });
  });

  set_position();
  var sortable = Sortable.create(sortableItem);
});

function set_position() {
  let x = 1;
  const card = document.querySelectorAll(".portfolio-item");
  card.forEach((e) => {
    e.setAttribute("data-pos", x);
    console.log(
      "data-id:",
      e.getAttribute("data-id"),
      "data-pos:",
      e.getAttribute("data-pos")
    );
    x++;
  });
}
