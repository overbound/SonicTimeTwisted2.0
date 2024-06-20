function macros() {
#macro VERSION "v2.0.0-dev"
#macro GAMEPAD_POV_Y 7
#macro GAMEPAD_POV_X 6
#macro GAMEPAD_AXIS_V 5
#macro GAMEPAD_AXIS_U 7
#macro GAMEPAD_AXIS_R 3
#macro GAMEPAD_AXIS_Z 2
#macro GAMEPAD_AXIS_Y 1
#macro GAMEPAD_AXIS_X 0
#macro CHARS_COUNT 3
#macro EMERALDS "k9(2h@"
#macro STATS "LDGaS"
#macro PAST "c20n1("
#macro FUTURE "top204"
#macro LEVELS "9z1kj"
#macro BIG_RINGS "y6[4hjf"
#macro LIVES "lk[]]"
#macro COINS "Y29pbnM="
#macro CHARACTER "k2nlKft"
#macro cUP (1 << 0)
#macro cDOWN (1 << 1)
#macro cLEFT (1 << 2)
#macro cRIGHT (1 << 3)
#macro cA (1 << 4)
#macro cB (1 << 5)
#macro cC (1 << 6)
#macro cSTART (1 << 7)
#macro cBACK (1 << 8)
#macro cACTION cA | cB | cC
#macro cCANCEL cB | cBACK
#macro cCONFIRM cA | cSTART
#macro cPAUSE cSTART | cBACK
#macro BINDING_TYPE_NONE 0
#macro BINDING_TYPE_KEY 1
#macro BINDING_TYPE_BUTTON 2
#macro BINDING_TYPE_AXIS 3
#macro aAA1_f "*%sfdg"
#macro aAA1_p "sfdg7#%"
#macro aAA2_f "fda@%"
#macro aAA2_p "$@dgf"
#macro aRR1_f "}P{L?>"
#macro aRR1_p "dsa@("
#macro aRR2_f "fds(_&_"
#macro aRR2_p "gfdas"
#macro aFF1_f "_)*()"
#macro aFF1_p "@*(#kjdfa"
#macro aFF2_f "HJ8u*"
#macro aFF2_p "*(Uk"
#macro aVV1_f "1*(8"
#macro aVV1_p "}{AF13*"
#macro aVV2_f "kla4()sk"
#macro aVV2_p "adfs24"
#macro aDD1_f "afds24230"
#macro aDD1_p "j}{^&*"
#macro aDD2_f "kjl4325"
#macro aDD2_p "kjdfas*("
#macro aTT1_f ":K90"
#macro aTT1_p "()kjs"
#macro aTT2_f "Ldfas"
#macro aTT2_p ".lladfa"
#macro aSS1 "ldfa234@$"
#macro aPP1 "&*(kjda"
#macro aPP2 "A:Lfda"
#macro aMM1 "^&*(jkl"
#macro RUMBLE_START_TIME 0
#macro RUMBLE_END_TIME 1
#macro RUMBLE_FORCE 2
#macro RUMBLE_APPEND_MODE 4
#macro DEVICE_TYPE_COMPUTER (1 << 0)
#macro DEVICE_TYPE_SMARTPHONE (1 << 1)
#macro DEVICE_TYPE_CONSOLE (1 << 2)
#macro DEVICE_TYPE_UNKNOWN (1 << 3)
#macro DEVICE_OS_WINDOWS (1 << 4)
#macro DEVICE_OS_MACOS (1 << 5)
#macro DEVICE_OS_LINUX (1 << 6)
#macro DEVICE_OS_IOS (1 << 7)
#macro DEVICE_OS_ANDROID (1 << 8)
#macro DEVICE_OS_PLAYSTATION (1 << 9)
#macro DEVICE_OS_XBOX (1 << 10)
#macro DEVICE_OS_SWITCH (1 << 11)
#macro DEVICE_OS_BROWSER (1 << 12)
#macro DEVICE_OS_UNKNOWN (1 << 13)
#macro DEVICE_INFO DEVICE_TYPE_COMPUTER | DEVICE_OS_WINDOWS
#macro DEVICE_BACK_BUTTON vk_escape
#macro INPUT_KEYBOARD 0
#macro INPUT_TOUCHSCREEN 1
#macro INPUT_GAMEPAD 2
#macro INPUT_AUTO 3
#macro INPUT_OS_SPECIFIC_1 4
#macro DEVICE_SUPPORTS_FILE_FIND 1
#macro LIVES_CLASSIC (1 << 0) // classic lives system (default)
#macro LIVES_ORIGINS (1 << 1) // origins coin system (optional)
#macro sine global._sine_lookup
#macro cosine global._cosine_lookup
#macro Android:DEVICE_INFO DEVICE_TYPE_SMARTPHONE | DEVICE_OS_ANDROID
#macro Android:DEVICE_BACK_BUTTON vk_backspace
#macro MacOS:DEVICE_INFO DEVICE_TYPE_COMPUTER | DEVICE_OS_MACOS
#macro MacOS:DEVICE_BACK_BUTTON vk_escape
#macro Linux:DEVICE_INFO DEVICE_TYPE_COMPUTER | DEVICE_OS_LINUX
#macro Linux:DEVICE_BACK_BUTTON vk_escape
#macro PlayStation:DEVICE_INFO DEVICE_TYPE_CONSOLE | DEVICE_OS_PLAYSTATION
#macro PlayStation:DEVICE_SUPPORTS_FILE_FIND 0
#macro Xbox:DEVICE_INFO DEVICE_TYPE_CONSOLE | DEVICE_OS_XBOX
#macro Xbox:DEVICE_SUPPORTS_FILE_FIND 0
#macro Switch:DEVICE_INFO DEVICE_TYPE_CONSOLE | DEVICE_OS_SWITCH
#macro Switch:DEVICE_SUPPORTS_FILE_FIND 0
#macro Browser:DEVICE_INFO DEVICE_TYPE_COMPUTER | DEVICE_OS_BROWSER
#macro Browser:DEVICE_BACK_BUTTON vk_escape
#macro Browser:DEVICE_SUPPORTS_FILE_FIND 0



}
