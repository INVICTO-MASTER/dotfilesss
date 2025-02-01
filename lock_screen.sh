                                           
#!/bin/bash

# Image Path
IMAGE="/home/sikandar/Downloads/la.jpg"

# Apply a blur effect to the image (requires ImageMagick)
BLURRED_IMAGE="/tmp/lockscreen.png"
convert $IMAGE -blur 0x8 $BLURRED_IMAGE

# Lock the screen with custom settings
i3lock \
  -i $BLURRED_IMAGE \
  --clock \
  --indicator \
  --time-str="%H:%M:%S" \
  --time-color=ffffffee \
  --time-font="JetBrainsMono Nerd Font" \
  --time-size=60 \
  --time-pos="x+w/2:h/8" \
  --date-str="%A, %d %B" \
  --date-color=ffffffcc \
  --date-font="JetBrainsMono Nerd Font" \
  --date-size=25 \
  --date-pos="x+w/2:h/8+40" \
  --verif-color=00ff00cc \
  --wrong-color=ff5555cc \
  --inside-color=00000055 \
  --ring-color=00bcd4cc \
  --ring-width=10 \
  --radius=180 \
  --keyhl-color=88c0d0ff \
  --greeter-text="Welcome, Sikandar!" \
  --greeter-color=ffffffcc \
  --greeter-size=30 \
  --greeter-pos="x+w/2:h/5" \  # Positioned higher, but still centered horizontally
  --verif-text="Authenticating..." \
  --wrong-text="Access Denied!" \
  --noinput-text="No Input" \
  --insidever-color=282a36cc \
  --insidewrong-color=282a36cc \
  --ringver-color=50fa7bcc \
  --ringwrong-color=ff5555cc \
  --separator-color=00000000
