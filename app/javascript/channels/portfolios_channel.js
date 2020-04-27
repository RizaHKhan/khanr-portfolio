import Sortable from "sortablejs";
document.addEventListener("DOMContentLoaded", () => {
  const sortableItem = document.querySelector(".sortable");
  const card = document.querySelectorAll(".portfolio-item");

  card.forEach((e) => {
    e.addEventListener("drop", () => {
      set_position(true);
    });
  });

  set_position();
  Sortable.create(sortableItem);
});

function getCookie() {
  const tokenMeta = document.querySelector("meta[name='csrf-token']");
  return tokenMeta.getAttribute("content");
}

function set_position(boolean) {
  let x = 1;
  let newArr = [];
  const card = document.querySelectorAll(".portfolio-item");
  card.forEach((e) => {
    e.setAttribute("data-pos", x);

    if (boolean) {
      newArr.push({
        id: e.getAttribute("data-id"),
        pos: e.getAttribute("data-pos"),
      });
    }

    x++;
  });

  if (boolean) {
    const csrfToken = getCookie("csrf-token");
    fetch("/portfolios/sort", {
      method: "PUT",
      headers: {
        "Content-Type": "application/json; charset=utf-8",
        "X-CSRF-TOKEN": csrfToken,
      },
      body: JSON.stringify(newArr),
    });
  }
}
