<h1 align="center">Makurai Theme</h1>  
<div align="center">
<p align="center">A simple, bright and lively dark theme for neovim</p> 
    
[![Static Badge](https://img.shields.io/badge/main%20repo-D2A6FF?style=for-the-badge&label=Check%20the&labelColor=1e2029)](https://github.com/Skardyy/makurai-theme)
</div>

---
```lua
vim.cmd.colorscheme("makurai_mage")
```
![image](https://github.com/user-attachments/assets/2024cb16-1e36-493a-90bd-7d07cbdf051e)  

```lua
vim.cmd.colorscheme("makurai_rogue")
```
![image](https://github.com/user-attachments/assets/08c7c6da-2c70-4a0b-a299-1f1f760416ec)

```lua
vim.cmd.colorscheme("makurai_druid")
```
![image](https://github.com/user-attachments/assets/658e2c40-72da-49a8-a248-4cbbeb6f85d6)

```lua
vim.cmd.colorscheme("makurai_healer")
```

<div align="center">
<details>
<summary>🚧 Light Theme Alert 🚧</summary>

![image](https://github.com/user-attachments/assets/5e3ae7db-1190-4d43-b3d7-738d19c28f3c)

</details>
</div>


## 🚀 Installation   
lazy:  
```lua
return {
  "Skardyy/makurai-nvim",
  config = function()
    -- you don't have to call setup
    require "makurai".setup({
      transparent = false -- removes the bg color
    })

    vim.cmd.colorscheme("makurai_mage")
  end
}
```
<details>
<summary>⚙️ Overriding the palette </summary>

> the below example converts makurai_mage into makurai_rogue
```lua
require("makurai").modify("mage", {
  fg = "#e8e8ea",
  purple = "#FF7733",
  green = "#92c468",
  yellow = "#9d9eb0",
  blue = "#8e8e90",
  orange = "#f7e254",
  light_orange = "#24221a",
})

```
the options are 
  * fg
  * bg
  * surface
  * bg_alt
  * surface_alt
  * on_fg
  * comment
  * selection
  * border
  * line
  * LineNr
  * guide
  * error
  * purple
  * green
  * yellow
  * blue
  * orange
  * light_orange
  * cyan
  * cursor
  * command
  * normal
  * insert
  * visual
  * dark_green
  * dark_red
  * dark_yellow

</details>

check the main repo [here](https://github.com/Skardyy/makurai-theme)

<p align="center">no usuage is not a real word..</p>
