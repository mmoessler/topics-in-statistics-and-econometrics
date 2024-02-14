
//..............................
// handling of collapsibles
// see: https://www.w3schools.com/howto/howto_js_collapsible.asp
// var coll = document.getElementsByClassName("collapsible01");
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


//..............................
// handling of collapsibles
// see: https://www.w3schools.com/howto/howto_js_collapsible.asp
var coll = document.getElementsByClassName("collapsible02");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}

// handling of collapsibles for .cod_content pre.r
var coll = document.getElementsByClassName("collapsible01");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    // Toggle the button's active state
    this.classList.toggle("active");

    // Find the next .cod_content element
    var codContent = this.nextElementSibling;
    // console.log(codContent.innerHTML);
    // while (codContent && !codContent.classList.contains("cod_content")) {
    //   codContent = codContent.nextElementSibling;
    // }

    // Ensure .cod_content is found
    // if (codContent) {
      // Find the pre.r element inside .cod_content
      // var preR = codContent.querySelector("pre.r");
      // console.log(preR.innerHTML);

      var preRcode = codContent.querySelector("pre.r code");
      console.log(preRcode.style);
      //console.log(preRcode.style.CSS2Properties.display);
      console.log(preRcode.style.display);

      // If found, toggle its display
      // if (preR) {
        if (preRcode.style.display === "block") {
          preRcode.style.display = "none";
        } else {
          preRcode.style.display = "block";
        }
      // }
    // }


    
    var preR = codContent.querySelector("pre.r");
    console.log(preR.style);
    //console.log(preR.style.CSS2Properties.display);
    console.log(preR.style.display);

    // If found, toggle its display
    // if (preR) {
      if (preR.style.display === "block") {
        preR.style.display = "none";
      } else {
        preR.style.display = "block";
      }
    // }
    // }

  });
}