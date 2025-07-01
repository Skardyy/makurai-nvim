<div align="center">
    
# Makurai Theme
***Minimal highlighting with maximum clarity***
    
[![Static Badge](https://img.shields.io/badge/Click%20Here-fac25a?style=for-the-badge&label=For%20Extras&labelColor=1e2029)](https://github.com/Skardyy/makurai-theme)
</div>

---

<details>
<summary>Dark</summary>

```lua
vim.cmd.colorscheme("makurai_dark")
```
![image](https://github.com/user-attachments/assets/126a33a0-e2a1-4403-8cf4-239959c01d8f)
</details>

<details>
<summary>Autumn</summary>

```lua
vim.cmd.colorscheme("makurai_autumn")
```
![250629_02h44m09s_screenshot](https://github.com/user-attachments/assets/21378f50-990c-43d2-bdcf-ef47fd0d2a34)
</details>

<details>
<summary>Spring</summary>

```lua
vim.cmd.colorscheme("makurai_spring")
```
![image](https://github.com/user-attachments/assets/ab941573-f2a3-48ef-8e57-8c4f5c03cbcf)
</details>

<details>
<summary>Light</summary>

```lua
vim.cmd.colorscheme("makurai_light")
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

    vim.cmd.colorscheme("makurai_dark")
  end
}
```
<details>
<summary>⚙️ Overriding the palette </summary>

> the below example converts makurai_dark into makurai_spring
```lua
require("makurai").modify("dark", {
  orange  = "#FFB347",
  yellow  = "#D4FF59",
  green   = "#8CEB3A",
  purple  = "#D8A5FF",
  blue    = "#66E6FF",
})

```
the options are everything in the palette [here](./lua/makurai/palettes/mage.lua#L40)

</details>

## 🤔 Theme Philosophy
The core philosophy behind this theme is minimal highlighting with maximum clarity. Instead of overwhelming the code with color, it uses **five distinct colors** to emphasize the most critical syntax elements, grouped by role:  

1. Orange – Keywords
2. Yellow – Functions, methods, functions constructors..
3. Green – Strings
4. Blue – Types, modules, interfaces, structs, namespaces..
5. Purple – Constants, enums, numbers..

All other elements remain in white to reduce visual noise and maintain focus.
