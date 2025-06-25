<h1 align="center">Makurai Theme</h1>  
<div align="center">
<p align="center">A simple, bright and lively dark theme for neovim</p> 
    
[![Static Badge](https://img.shields.io/badge/Click%20Here-D2A6FF?style=for-the-badge&label=For%20Extras&labelColor=1e2029)](https://github.com/Skardyy/makurai-theme)
</div>

---

<details>
<summary>Mage</summary>

```lua
vim.cmd.colorscheme("makurai_mage")
```
![image](https://github.com/user-attachments/assets/01501016-e0b4-4b30-a92e-0d7730559ab1)
</details>

<details>
<summary>Rogue</summary>

```lua
vim.cmd.colorscheme("makurai_rogue")
```
![image](https://github.com/user-attachments/assets/a40a2ca0-d064-40f4-8e9b-5d7cfea4c768)
</details>

<details>
<summary>Warrior</summary>

```lua
vim.cmd.colorscheme("makurai_warrior")
```
![image](https://github.com/user-attachments/assets/4508ea6a-ac04-42f1-82bc-8d903b93531a)
</details>



<details>
<summary>Healer</summary>

```lua
vim.cmd.colorscheme("makurai_healer")
``` 
![image](https://github.com/user-attachments/assets/382137a1-cdc5-4617-9467-3aad60cb608f)
</details>


## 🚀 Installation   
lazy:  
```lua
return {
  "Skardyy/makurai-nvim",
  config = function()
    -- you don't have to call setup
    require "makurai".setup({
      transparent = false -- removes the bg color
      bordered = false -- removes the bg color from floats/popups
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
the options are everything in the palette [here](./lua/makurai/palettes/mage.lua#L40)

</details>
