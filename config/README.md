# Config Spotifyd (spotifyd.conf)

```
[global]
username = "login"
password = "senha"
device_name = "Spotifyd"
device_type = "computer"

backend = "pulseaudio" 
bitrate = 160

initial_volume = "90"
normalisation_pregain = -10
volume_normalisation = true
```

# Config GTK 3 (settings.ini)
```
[Settings]
gtk-theme-name = MatBlack
#gtk-font-name = RobotoMono Nerd Font 11
#gtk-icon-theme-name= Titan
```

# Config kitty (kitty.conf | Mais facil fazer por comando)
incluir no final de tudo a linha.
`include ~/.cache/wal/colors-kitty.conf`
