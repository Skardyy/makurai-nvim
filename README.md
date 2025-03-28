<h1 align="center">Makurai Theme</h1>  
<div align="center">
<p align="center">A simple, bright and lively dark theme for neovim</p> 
    
[![Static Badge](https://img.shields.io/badge/Main%20Repo-1e2029?logo=github&label=Part%20of&labelColor=15161b)](https://github.com/Skardyy/makurai-theme) ˙ [![Static Badge](https://img.shields.io/badge/neovim-1e2029?logo=neovim&label=built%20for&labelColor=15161b)](https://neovim.io)
</div>

---
```lua
vim.cmd.colorscheme("makurai")
```
![image](https://github.com/user-attachments/assets/2024cb16-1e36-493a-90bd-7d07cbdf051e)  

```lua
vim.cmd.colorscheme("makurai_less")
```
![image](https://github.com/user-attachments/assets/08c7c6da-2c70-4a0b-a299-1f1f760416ec)

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

    vim.cmd.colorscheme("makurai")
  end
}
```
<details>
<summary>⚙️ Overriding the palette </summary>

> the below example converts makurai into makurai_less
```lua
require "makurai".modify("makurai", {
  fg = "#e8e8ea",
  purple = "#FF7733",
  green = "#92c468",
  yellow = "#9d9eb0",
  blue = "#8e8e90",
  orange = "#f7e254",
  light_orange = "#24221a",
})
}

```
the options are 
* bg 
* fg 
* surface 
* surface2 
* on_fg 
* comment 
* selection 
* cursor 
* border 
* line 
* guide 
* light_red 
* purple 
* green 
* yellow 
* blue 
* orange 
* light_orange 
* cyan 
* command 
* normal 
* insert 
* visual 
</details>

check the main repo [here](https://github.com/Skardyy/makurai-theme)

<p align="center">no usuage is not a real word..</p>
