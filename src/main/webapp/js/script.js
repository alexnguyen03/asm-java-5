document.querySelector(".jsFilter").addEventListener("click", function () {
  document.querySelector(".filter-menu").classList.toggle("active");
});

document.querySelector(".grid").addEventListener("click", function () {
  document.querySelector(".list").classList.remove("active");
  document.querySelector(".grid").classList.add("active");
  document.querySelector(".products-area-wrapper").classList.add("gridView");
  document
    .querySelector(".products-area-wrapper")
    .classList.remove("tableView");
});

document.querySelector(".list").addEventListener("click", function () {
  document.querySelector(".list").classList.add("active");
  document.querySelector(".grid").classList.remove("active");
  document.querySelector(".products-area-wrapper").classList.remove("gridView");
  document.querySelector(".products-area-wrapper").classList.add("tableView");
});

var modeSwitch = document.querySelector(".mode-switch");

document.documentElement.classList.toggle("light");
modeSwitch.classList.toggle("active");

modeSwitch.addEventListener("click", function () {
  document.documentElement.classList.toggle("light");
  modeSwitch.classList.toggle("active");
});

// Upload img
//Upload review
const upload = document.querySelector("#Video-edit-myPicture");
const preview = document.querySelector(".video-edit-preview");
const error = document.querySelector(".error");

upload.addEventListener("change", function (e) {
  const file = upload.files[0];
  if (!file) {
    return;
  }

  // if (!file.name.endsWith(".jpg")) {
  //   error.innerText = "Png is not allow here";
  //   return;
  // } else {
  //   error.innerText = "";
  // }

  if (file.size / (1024 * 1024) > 5) {
    error.innerText = "Image must lower than 5mb";
    return;
  } else {
    error.innerText = "";
  }

  const img = document.createElement("img");
  img.src = URL.createObjectURL(file);
  preview.appendChild(img);
});
