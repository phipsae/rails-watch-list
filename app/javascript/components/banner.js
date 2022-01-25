import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["COOOOOOOOOL", "Movie WAAAAATCH LIIIIIIST"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
