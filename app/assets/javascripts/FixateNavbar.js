function fixateNavbar(){
  var navbar = document.getElementById("navbar");
  var rect = navbar.getBoundingClientRect();

  // var top  = window.pageYOffset || document.documentElement.scrollTop;

  if (rect.top <= 0){
    navbar.style.position = 'fixed';
    navbar.style.top = 0;
    navbar.style.zIndex = 1000;

  }

}

document.addEventListener('scroll', fixateNavbar, false);
