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
![image](https://github.com/user-attachments/assets/5e5c63aa-9d90-4c06-a90d-bd615f26a77b)
</details>

<details>
<summary>Autumn</summary>

```lua
vim.cmd.colorscheme("makurai_autumn")
```
![image](https://github.com/user-attachments/assets/2b18105f-b399-462c-83fe-723fc4d64e80)

</details>

<details>
<summary>Light</summary>

```lua
vim.cmd.colorscheme("makurai_light")
``` 
![image](https://github.com/user-attachments/assets/d2f8bccd-8de1-449f-aba5-773951bf3809)
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
  syntax = {
    keyword = "#ff6340",
    fn      = "#facc75",
    str     = "#a2d93d",
    const   = "#e67399",
    type    = "#60bfbf",
  },
})

```
the options are everything in the palette [here](./lua/makurai/palettes/dark.lua)

</details>

## Theme Philosophy
The core philosophy behind this theme is minimal highlighting with maximum clarity. Instead of overwhelming the code with color, it uses **up to five distinct colors** to emphasize the most critical syntax elements, grouped by role:  

1. Orange – Keywords
2. Yellow – Functions, methods, functions constructors..
3. Green – Strings
4. Blue – Types, modules, interfaces, structs, namespaces..
5. Purple – Constants, enums, numbers..

All other elements remain in white to reduce visual noise.
