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
![image](https://github.com/user-attachments/assets/fe5989e8-2dfa-419c-9394-24b3a2e81ee2)
</details>

<details>
<summary>Light</summary>

```lua
vim.cmd.colorscheme("makurai_light")
``` 
![image](https://github.com/user-attachments/assets/382137a1-cdc5-4617-9467-3aad60cb608f)
</details>


## Installation   
lazy:  
```lua
return {
  "Skardyy/makurai-nvim",
  config = function()
    -- you don't have to call setup
    require "makurai".setup({
      transparent = false, -- removes the bg color
      bordered = false, -- removes the bg color from floats/popups
      increase_contrast = false, -- only changes the line number and active line number for now.
    })

    vim.cmd.colorscheme("makurai_dark")
  end
}
```
<details>
<summary>Overriding the palette </summary>

> the below example "converts" makurai_dark into makurai_autumn
```lua
require("makurai").modify("dark", {
  orange    = "#ff6340",
  yellow    = "#facc75",
  green     = "#a2d93d",
  purple    = "#e67399",
  blue      = "#60bfbf",
})

```
the options are everything in the palette [here](./lua/makurai/palettes/dark.lua#L1)

</details>

## Theme Philosophy
The core philosophy behind this theme is minimal highlighting with maximum clarity. Instead of overwhelming the code with color, it uses **up to five distinct colors** to emphasize the most critical syntax elements, grouped by role:  

1. Orange – Keywords
2. Yellow – Functions, methods, functions constructors..
3. Green – Strings
4. Blue – Types, modules, interfaces, structs, namespaces..
5. Purple – Constants, enums, numbers..

All other elements remain in white to reduce visual noise.
