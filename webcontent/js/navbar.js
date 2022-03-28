const toggleBtn = document.querySelector('.toggleButton');
const menu = document.querySelector('.menu');
const befPro = document.querySelector('.before_profile');

toggleBtn.addEventListener('click', () => {
  menu.classList.toggle('active');
  befPro.classList.toggle('active');
});
