(() => {
  const root = document.documentElement;
  const toggle = document.getElementById('theme-toggle');

  toggle.addEventListener('click', () => {
    const theme = root.dataset.theme === 'light' ? 'dark' : 'light';
    root.dataset.theme = theme;
    localStorage.setItem('DARK_LIGHT_THEME', theme);
  });
})();
