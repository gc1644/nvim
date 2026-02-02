<p align="center">
  <img src="https://placehold.co/1200x400/0d1117/00ff9d?text=neovim%20config%20that%20makes%20vscode%20users%20cry" alt="header" width="100%"/>
</p>

<h1 align="center">gleb's nvim config</h1>
<h3 align="center">minimal. fast. pretty. dangerous.</h3>

<p align="center">
  <a href="https://github.com/gleb/nvim/stargazers">
    <img src="https://img.shields.io/github/stars/gleb/nvim?style=for-the-badge&color=00ff9d&logo=starship&logoColor=00ff9d" alt="stars"/>
  </a>
  <a href="https://github.com/gleb/nvim/forks">
    <img src="https://img.shields.io/github/forks/gleb/nvim?style=for-the-badge&color=ff69b4&logo=git&logoColor=ff69b4" alt="forks"/>
  </a>
  <img src="https://img.shields.io/badge/made%20with%20pain%20and%20caffeine-181926?style=for-the-badge&logo=neovim&logoColor=00ff9d" alt="pain"/>
  <img src="https://img.shields.io/badge/0%20plugins%20I%20didn't%20write%20myself-181926?style=for-the-badge&logo=lua&logoColor=00ff9d" alt="zero"/>
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/palette/mocha.png" width="400"/>
  <br/>
  <sub>(vague but make it actually usable)</sub>
</p>

### Why your config is mid and mine isn't

- <kbd>0.03s</kbd> startup (measured with hyperfine because I'm not coping)
- Relative numbers because absolute numbers are for people who count with fingers
- System clipboard without asking permission like some electron garbage
- <kbd><leader>e</kbd> opens mini.files faster than you can say "telescope is bloated"
- Vague theme that makes everything else look like Windows XP
- Treesitter so lua doesn't bluescreen on startup
- vim-be-good because I'm actually grinding movement instead of coping with hjkl excuses

### Installation (skill issue if you can't do this)

```bash
# 1. Backup your trash config (optional but recommended for mid users)
mv ~/.config/nvim ~/.config/nvim-mid 2>/dev/null || true

# 2. Steal mine (the only correct choice)
git clone https://github.com/gleb/nvim ~/.config/nvim

# 3. Open nvim and let lazy cook (yes it will download everything)
nvim

# 4. Run once (or suffer)
:TSUpdate
