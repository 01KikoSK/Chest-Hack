# ChestEspHack.ps1

Add-Type -AssemblyName System.Drawing

$style = New-Object EspStyleSetting

$basicChests = New-Object ChestEspBlockGroup -Property @{
    Color = New-Object ColorSetting -Property @{
        Name = "Chest color"
        Description = "Normal chests will be highlighted in this color."
        Value = [System.Drawing.Color]::Green
    }
    Enabled = $true
}

$trapChests = New-Object ChestEspBlockGroup -Property @{
    Color = New-Object ColorSetting -Property @{
        Name = "Trap chest color"
        Description = "Trapped chests will be highlighted in this color."
        Value = [System.Drawing.Color]::FromArgb(0xFF8000)
    }
    Enabled = New-Object CheckboxSetting -Property @{
        Name = "Include trap chests"
        Value = $true
    }
}

$enderChests = New-Object ChestEspBlockGroup -Property @{
    Color = New-Object ColorSetting -Property @{
        Name = "Ender color"
        Description = "Ender chests will be highlighted in this color."
        Value = [System.Drawing.Color]::Cyan
    }
    Enabled = New-Object CheckboxSetting -Property @{
        Name = "Include ender chests"
        Value = $true
    }
}

$chestCarts = New-Object ChestEspEntityGroup -Property @{
    Color = New-Object ColorSetting -Property @{
        Name = "Chest cart color"
        Description = "Minecarts with chests will be highlighted in this color."
        Value = [System.Drawing.Color]::Yellow
    }
    Enabled = New-Object CheckboxSetting -Property @{
        Name = "Include chest carts"
        Value = $true
    }
}

$chestBoats = New-Object ChestEspEntityGroup -Property @{
    Color = New-Object ColorSetting -Property @{
        Name = "Chest boat color"
        Description = "Boats with chests will be highlighted in this color."
        Value = [System.Drawing.Color]::Yellow
    }
    Enabled = New-Object CheckboxSetting -Property @{
        Name = "Include chest boats"
        Value = $true
    }
}

$barrels = New-Object ChestEspBlockGroup -Property @{
    Color = New-Object ColorSetting -Property @{
        Name = "Barrel color"
        Description = "Barrels will be highlighted in this color."
        Value = [System.Drawing.Color]::Green
    }
    Enabled = New-Object CheckboxSetting -Property @{
        Name = "Include barrels"
        Value = $true
    }
}

$pots = New-Object ChestEspBlockGroup -Property @{
    Color = New-Object ColorSetting -Property @{
        Name = "Pots color"
        Description = "Decorated pots will be highlighted in this color."
        Value = [System.Drawing.Color]::Green
    }
    Enabled = New-Object CheckboxSetting -Property @{
        Name = "Include pots"
        Value = $false
    }
}

$shulkerBoxes = New-Object ChestEspBlockGroup -Property @{
    Color = New-Object ColorSetting -Property @{
        Name = "Shulker color"
        Description = "Shulker boxes will be highlighted in this color."
        Value = [System.Drawing.Color]::Magenta
    }
    Enabled = New-Object CheckboxSetting -Property @{
        Name = "Include shulkers"
        Value = $true
    }
}

$hoppers = New-Object ChestEspBlockGroup -Property @{
    Color = New-Object ColorSetting -Property @{
        Name = "Hopper color"
        Description = "Hoppers will be highlighted in this color."
        Value = [System.Drawing.Color]::White
    }
    Enabled = New-Object CheckboxSetting -Property @{
        Name = "Include hoppers"
        Value = $false
    }
}

$hopperCarts = New-Object ChestEspEntityGroup -Property @{
    Color = New-Object ColorSetting -Property @{
        Name = "Hopper cart color"
        Description = "Minecarts with hoppers will be highlighted in this color."
        Value = [System.Drawing.Color]::Yellow
    }
    Enabled = New-Object CheckboxSetting -Property @{
        Name = "Include hopper carts"
        Value = $false
    }
}

$droppers = New-Object ChestEspBlockGroup -Property @{
    Color = New-Object ColorSetting -Property @{
        Name = "Dropper color"
        Description = "Droppers will be highlighted in this color."
        Value = [System.Drawing.Color]::White
    }
    Enabled = New-Object CheckboxSetting -Property @{
        Name = "Include droppers"
        Value = $false
    }
}

$dispensers = New-Object ChestEspBlockGroup -Property @{
   