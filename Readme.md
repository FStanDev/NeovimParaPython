# Nvim Config para Python

Este es el repo del [video]() donde configuramos neovim para usarlo con Python.

Si quieres saltarte toda la parte del vídeo, borra tu contenido anterior de nvim, haz un backup antes por si acaso, en serio.

Después, ejecuta:

**Mac/Linux:**

```
rm -rf ~/.config/nvim

rm -rf ~/.local/share/nvim

git clone https://github.com/FStanDev/NeovimParaPython ~/.config/nvim && nvim
```

**On Windows:**

```
rm -Force ~\AppData\Local\nvim
rm -Force ~\AppData\Local\nvim-data

git clone https://github.com/FStanDev/NeovimParaPython $ENV:USERPROFILE\AppData\Local\nvim && nvim
```
