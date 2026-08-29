(() => {
  const root = document.documentElement;
  const toggle = document.getElementById('theme-toggle');

  const updateLabel = () => {
    const nextTheme = root.dataset.theme === 'light' ? 'dark' : 'light';
    toggle.setAttribute('aria-label', `Switch to ${nextTheme} theme`);
    toggle.setAttribute('title', `Switch to ${nextTheme} theme`);
  };

  updateLabel();

  toggle.addEventListener('click', () => {
    const theme = root.dataset.theme === 'light' ? 'dark' : 'light';
    root.dataset.theme = theme;
    localStorage.setItem('DARK_LIGHT_THEME', theme);
    updateLabel();
  });
})();
