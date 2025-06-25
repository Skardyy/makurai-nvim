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
![image](https://github.com/user-attachments/assets/477000d5-b062-40fb-90cc-bb05217298d8)
</details>

<details>
<summary>Rogue</summary>

```lua
vim.cmd.colorscheme("makurai_rogue")
```
![image](https://github.com/user-attachments/assets/2565480a-805f-498c-af0f-331b4877752c)
</details>

<details>
<summary>Warrior</summary>

```lua
vim.cmd.colorscheme("makurai_warrior")
```
![image](https://github.com/user-attachments/assets/33aa84bc-909b-470a-b098-0296810a7069)
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
