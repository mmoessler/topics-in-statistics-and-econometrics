
//..............................
// handling of collapsibles
// see: https://www.w3schools.com/howto/howto_js_collapsible.asp
// var coll = document.getElementsByClassName("collapsible");
// var i;

// for (i = 0; i < coll.length; i++) {
//   coll[i].addEventListener("click", function() {
//     this.classList.toggle("active");
//     var content = this.nextElementSibling;
//     if (content.style.display === "block") {
//       content.style.display = "none";
//     } else {
//       content.style.display = "block";
//     }
//   });
// }

// handling of all collapsible(s) and content(s) 
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {    
    this.classList.toggle("active");
    var codContent = this.nextElementSibling;
    // handle codes
    var preRcode = codContent.querySelector("pre.r code");
    if (preRcode) {
      if (preRcode.style.display === "block") {
        preRcode.style.display = "none";
      } else {
        preRcode.style.display = "block";
      }
    }
    var preR = codContent.querySelector("pre.r");
    if (preR) {
      if (preR.style.display === "block") {
        preR.style.display = "none";
      } else {
        preR.style.display = "block";
      }
    }
    // handle figures
    var pImg = codContent.querySelector("p > img");
    if (pImg) {
      if (pImg.style.display === "block") {
        pImg.style.display = "none";
      } else {
        pImg.style.display = "block";
      }
    }

  });
}
