// RESPONSIVE NAVBAR

const navSlide = () => {
  const burgerMenu = document.querySelector('.burger-menu');
  const nav = document.querySelector('.nav-links');
  const navLinks = document.querySelectorAll('.nav-links li');

  burgerMenu.addEventListener('click', () => {
    // Toggle Nav
    nav.classList.toggle('nav-active');
    // Animate Links
    navLinks.forEach((link, index) => {
      if (link.style.animation) {
        link.style.animation = '';
      } else {
        link.style.animation = `navLinkFade 0.5s ease forwards ${
          index / 7 + 0.5
        }s`;
      }
    });

    // Animate burger menu
    burgerMenu.classList.toggle('toggle');
  });
};

export { navSlide };
