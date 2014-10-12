@ECHO OFF
"C:\Program Files\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "Y:\Projects\ledSplash\labels.tmp" -fI -W+ie -C V0E -o "Y:\Projects\ledSplash\ledSplash.hex" -d "Y:\Projects\ledSplash\ledSplash.obj" -e "Y:\Projects\ledSplash\ledSplash.eep" -m "Y:\Projects\ledSplash\ledSplash.map" "Y:\Projects\ledSplash\ledSplash.asm"
