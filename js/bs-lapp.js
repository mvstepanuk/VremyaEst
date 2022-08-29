const linksLanch = document.querySelectorAll(".lanch1_link");
const modal = document.getElementById("modal");
const close = document.getElementById("close");

linksLanch.forEach((lanch1_link) => {
  lanch1_link.addEventListener("click", function () {
    modal.classList.add("modal_opened");
  });
});

close.addEventListener("click", function () {
  modal.classList.remove("modal_opened");
});
