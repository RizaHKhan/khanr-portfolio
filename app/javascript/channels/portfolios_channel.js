import Sortable from "sortablejs";
document.addEventListener("DOMContentLoaded", () => {
  var sortableItem = document.querySelector(".sortme");
  var sortable = Sortable.create(sortableItem);
});
