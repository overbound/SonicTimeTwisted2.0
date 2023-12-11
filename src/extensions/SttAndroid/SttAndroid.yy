{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "SttAndroid",
  "androidactivityinject": "",
  "androidclassname": "SttAndroid",
  "androidcodeinjection": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidPermissions": [
    "android.permission.VIBRATE",
  ],
  "androidProps": true,
  "androidsourcedir": "",
  "author": "",
  "classname": "",
  "copyToTargets": 2097160,
  "date": "2023-09-19T18:22:05.7423826+02:00",
  "description": "",
  "exportToGame": true,
  "extensionVersion": "1.0.0",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"SttAndroid.ext","constants":[],"copyToTargets":2097160,"filename":"SttAndroid.ext","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_input_get_state","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_input_get_state","help":"sttandroid_input_get_state(inputNumber)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_hwmap_reset","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_hwmap_reset","help":"sttandroid_gamepad_hwmap_reset(inputNumber)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_hwmap_start","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_hwmap_start","help":"sttandroid_gamepad_hwmap_start(inputNumber)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_hwmap_newfile","argCount":0,"args":[],"documentation":"","externalName":"sttandroid_gamepad_hwmap_newfile","help":"sttandroid_gamepad_hwmap_newfile()","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_hwmap_feed_row","argCount":1,"args":[
            1,
          ],"documentation":"","externalName":"sttandroid_gamepad_hwmap_feed_row","help":"sttandroid_gamepad_hwmap_feed_row(row) ","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_hwmap_finish","argCount":0,"args":[],"documentation":"","externalName":"sttandroid_gamepad_hwmap_finish","help":"sttandroid_gamepad_hwmap_finish()","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_doubledetect_start","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_doubledetect_start","help":"sttandroid_gamepad_doubledetect_start(inputNumber)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_doubledetect_get_input_number","argCount":0,"args":[],"documentation":"","externalName":"sttandroid_gamepad_doubledetect_get_input_number","help":"sttandroid_gamepad_doubledetect_get_input_number()","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_doubledetect_get_detect_state","argCount":0,"args":[],"documentation":"","externalName":"sttandroid_gamepad_doubledetect_get_detect_state","help":"sttandroid_gamepad_doubledetect_get_detect_state()","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_doubledetect_cancel","argCount":0,"args":[],"documentation":"","externalName":"sttandroid_gamepad_doubledetect_cancel","help":"sttandroid_gamepad_doubledetect_cancel()","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_doubledetect_is_success","argCount":0,"args":[],"documentation":"","externalName":"sttandroid_gamepad_doubledetect_is_success","help":"sttandroid_gamepad_doubledetect_is_success()","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_disconnect","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_disconnect","help":"sttandroid_gamepad_disconnect(inputNumber)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_anykey_set_mode","argCount":2,"args":[
            2,
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_anykey_set_mode","help":"sttandroid_gamepad_anykey_set_mode(inputNumber, value)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_anykey_get_mode","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_anykey_get_mode","help":"sttandroid_gamepad_anykey_get_mode(inputNumber)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_anykey_get_value","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_anykey_get_value","help":"sttandroid_gamepad_anykey_get_value(inputNumber)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_swmap_set","argCount":3,"args":[
            2,
            2,
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_swmap_set","help":"sttandroid_gamepad_swmap_set(inputNumber, inputCode, keyCode)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_swmap_clear","argCount":3,"args":[
            2,
            2,
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_swmap_clear","help":"sttandroid_gamepad_swmap_clear(inputNumber, inputCode, isBackupMap)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_swmap_get_descriptor","argCount":2,"args":[
            2,
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_swmap_get_descriptor","help":"sttandroid_gamepad_swmap_get_descriptor(inputNumber, inputCode)","hidden":false,"kind":11,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_get_label","argCount":2,"args":[
            2,
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_get_label","help":"sttandroid_gamepad_get_label(inputNumber, truncate)","hidden":false,"kind":11,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_rumble_perform","argCount":2,"args":[
            2,
            2,
          ],"documentation":"","externalName":"sttandroid_rumble_perform","help":"sttandroid_rumble_perform(inputNumber, power)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_mode_set","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_mode_set","help":"sttandroid_mode_set(isExternal)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_rumble_set_enabled","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_rumble_set_enabled","help":"sttandroid_rumble_set_enabled(isExternal)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_get_descriptor","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_get_descriptor","help":"sttandroid_gamepad_get_descriptor(inputNumber)","hidden":false,"kind":11,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_mode_get","argCount":0,"args":[],"documentation":"","externalName":"sttandroid_mode_get","help":"","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_rumble_get_enabled","argCount":0,"args":[],"documentation":"","externalName":"sttandroid_rumble_get_enabled","help":"","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_swmap_get","argCount":3,"args":[
            2,
            2,
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_swmap_get","help":"sttandroid_gamepad_swmap_get(inputNumber,inputCode,isBackup)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_is_double","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_is_double","help":"sttandroid_gamepad_is_double(inputNumber)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_swmap_get_both","argCount":2,"args":[
            2,
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_swmap_get_both","help":"sttandroid_gamepad_swmap_get_both(inputNumber,inputCode)","hidden":false,"kind":11,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_swmap_set_both","argCount":3,"args":[
            2,
            2,
            1,
          ],"documentation":"","externalName":"sttandroid_gamepad_swmap_set_both","help":"sttandroid_gamepad_swmap_set_both(inputNumber,inputCode,configuration)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_has_assigned","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_has_assigned","help":"sttandroid_gamepad_has_assigned(inputNumber)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_swmap_is_complete","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_swmap_is_complete","help":"sttandroid_gamepad_swmap_is_complete(inputNumber)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_device_get_type","argCount":-1,"args":[],"documentation":"","externalName":"sttandroid_device_get_type","help":"sttandroid_device_get_type()","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_get_state","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_get_state","help":"sttandroid_gamepad_get_state(inputNumber)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_input_check_any_pressed","argCount":-1,"args":[],"documentation":"","externalName":"sttandroid_input_check_any_pressed","help":"sttandroid_input_check_any_pressed()","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_get_id","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_get_id","help":"sttandroid_gamepad_get_id(inputNumber)","hidden":false,"kind":11,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_keyboard_swmap_set_both","argCount":3,"args":[
            2,
            2,
            1,
          ],"documentation":"","externalName":"sttandroid_keyboard_swmap_set_both","help":"sttandroid_keyboard_swmap_set_both(inputNumber, inputCode, keyCodes)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_input_set_any_pressed_handled","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_input_set_any_pressed_handled","help":"sttandroid_input_set_any_pressed_handled(anyPressHandled)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_keyboard_swmap_get_descriptor","argCount":2,"args":[
            2,
            2,
          ],"documentation":"","externalName":"sttandroid_keyboard_swmap_get_descriptor","help":"sttandroid_keyboard_swmap_get_descriptor(inputNumber,inputCode)","hidden":false,"kind":11,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_keyboard_swmap_is_complete","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_keyboard_swmap_is_complete","help":"sttandroid_keyboard_swmap_is_complete(inputNumber)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_keyboard_swmap_get_both","argCount":2,"args":[
            2,
            2,
          ],"documentation":"","externalName":"sttandroid_keyboard_swmap_get_both","help":"sttandroid_keyboard_swmap_get_both(inputNumber, inputCode)","hidden":false,"kind":11,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_keyboard_anykey_set_mode","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_keyboard_anykey_set_mode","help":"sttandroid_keyboard_anykey_set_mode(value)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_keyboard_anykey_get_value","argCount":0,"args":[],"documentation":"","externalName":"sttandroid_keyboard_anykey_get_value","help":"sttandroid_keyboard_anykey_get_value()","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_keyboard_swmap_set","argCount":3,"args":[
            2,
            2,
            2,
          ],"documentation":"","externalName":"","help":"sttandroid_keyboard_swmap_set(inputNumber,inputCode,keyCode)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_get_deadzone","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_get_deadzone","help":"sttandroid_gamepad_get_deadzone(inputNumber)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_set_deadzone","argCount":2,"args":[
            2,
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_set_deadzone","help":"sttandroid_gamepad_set_deadzone(inputNumber,deadzone)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_set_analog_controls_enabled","argCount":2,"args":[
            2,
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_set_analog_controls_enabled","help":"sttandroid_gamepad_set_analog_controls_enabled(inputNumber,enabled)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_get_analog_x_axis","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_get_analog_x_axis","help":"sttandroid_gamepad_get_analog_x_axis(inputNumber)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_gamepad_get_analog_y_axis","argCount":1,"args":[
            2,
          ],"documentation":"","externalName":"sttandroid_gamepad_get_analog_y_axis","help":"sttandroid_gamepad_get_analog_y_axis(inputNumber)","hidden":false,"kind":11,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"sttandroid_device_has_gyroscope","argCount":-1,"args":[],"documentation":"","externalName":"sttandroid_device_has_gyroscope","help":"sttandroid_device_has_gyroscope()","hidden":false,"kind":11,"returnType":2,},
      ],"init":"","kind":4,"order":[],"origname":"extensions\\SttAndroid.ext","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
  ],
  "gradleinject": "",
  "hasConvertedCodeInjection": true,
  "helpfile": "",
  "HTML5CodeInjection": "",
  "html5Props": false,
  "IncludedResources": [],
  "installdir": "",
  "iosCocoaPodDependencies": "",
  "iosCocoaPods": "",
  "ioscodeinjection": "",
  "iosdelegatename": "",
  "iosplistinject": "",
  "iosProps": true,
  "iosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "license": "Free to use, also for commercial games.",
  "maccompilerflags": "",
  "maclinkerflags": "",
  "macsourcedir": "",
  "options": [],
  "optionsFile": "options.json",
  "packageId": "",
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
  "productId": "",
  "sourcedir": "",
  "supportedTargets": 2097160,
  "tvosclassname": "",
  "tvosCocoaPodDependencies": "",
  "tvosCocoaPods": "",
  "tvoscodeinjection": "",
  "tvosdelegatename": "",
  "tvosmaccompilerflags": "",
  "tvosmaclinkerflags": "",
  "tvosplistinject": "",
  "tvosProps": false,
  "tvosSystemFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
}