let theme = localStorage.getItem("theme");

const themeIcon = document.querySelector(".theme");
const navbar = document.querySelector("nav");
const btn = document.querySelector(".btn");
/*const table = document.querySelector("table");*/

if (theme === "light") {
  document.body.classList.replace("text-bg-light", "text-bg-dark");
  navbar.classList.add("navbar-dark");
  btn.classList.replace("btn-outline-dark", "btn-outline-light");
  /* table.classList.add("table-dark");*/
} else {
  document.body.classList.replace("text-bg-light", "text-bg-dark");
  navbar.classList.add("navbar-dark");
  btn.classList.replace("btn-outline-dark", "btn-outline-light");
}

themeIcon.addEventListener("click", function () {
  if (theme === "night") {
   document.body.classList.replace("text-bg-light", "text-bg-dark");

    /* table.classList.replace("table-light", "table-dark");*/
    navbar.classList.add("navbar-dark");
    btn.classList.replace("btn-outline-dark", "btn-outline-light");
    this.classList.replace("bi-brightness-high", "bi-moon-stars");
    theme = "night";
    localStorage.setItem("theme", theme);
  } else {
    // turn night
    document.body.classList.replace("text-bg-light", "text-bg-dark");

    /* table.classList.replace("table-light", "table-dark");*/
    navbar.classList.add("navbar-dark");
    btn.classList.replace("btn-outline-dark", "btn-outline-light");
    this.classList.replace("bi-brightness-high", "bi-moon-stars");
    theme = "night";
    localStorage.setItem("theme", theme);
  }
});
