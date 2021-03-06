//Mobile hamburger variables
const hamburger = document.querySelector(".hamburger");
const lines = document.querySelectorAll(".line");
const hamburgerClose = document.querySelector(".hamburger-close");
const mobileMenu = document.querySelector(".mobile-menu");

//Mobile menu to retract when any link in the menu is clicked
const menuItems = document.querySelectorAll(".menu-item");

menuItems.forEach((menuItem) => {
  menuItem.addEventListener("click", () => {
    mobileMenu.classList.replace("menu-visible", "menu-hidden");
  });
});

//Mobil hamburger
hamburger.addEventListener("click", () => {
  hamburgerClose.classList.toggle("toggle");
  lines.forEach((line) => {
    line.classList.toggle("toggle");
  });

  if (mobileMenu.classList.contains("d-none")) {
    mobileMenu.classList.replace("d-none", "d-flex");
  }

  if (mobileMenu.classList.contains("menu-visible")) {
    mobileMenu.classList.replace("menu-visible", "menu-hidden");
  } else if (mobileMenu.classList.contains("menu-hidden")) {
    mobileMenu.classList.replace("menu-hidden", "menu-visible");
  } else {
    mobileMenu.classList.add("menu-visible");
  }
});
