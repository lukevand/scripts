#!/bin/sh
spare_modifier="Hyper_R"

xmodmap -e "keycode 65 = $spare_modifier"
xmodmap -e "add Control = $spare_modifier"
xmodmap -e "keycode 247 = space"

xcape -t 200 -e "$spare_modifier=space"

