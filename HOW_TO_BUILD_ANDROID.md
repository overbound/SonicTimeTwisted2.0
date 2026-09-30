# How to Build Sonic Time Twisted for Android

## Prerequisites
- GameMaker Studio 2 runtime installed at `C:\ProgramData\GameMakerStudio2\Cache\runtimes\runtime-2024.14.3.260`
- Valid GM license in user folder `C:\Users\class\AppData\Roaming\GameMakerStudio2\overbound_724712`
- Android SDK/NDK set up in GM's `local_settings.json`

## Command

Run from PowerShell with the working directory set to `src/`:

```powershell
$igor = "C:\ProgramData\GameMakerStudio2\Cache\runtimes\runtime-2024.14.3.260\bin\igor\windows\x64\Igor.exe"
$rp   = "C:\ProgramData\GameMakerStudio2\Cache\runtimes\runtime-2024.14.3.260"
$uf   = "C:\Users\class\AppData\Roaming\GameMakerStudio2\overbound_724712"
$yyp  = "src\SonicTimeTwisted.yyp"
$out  = "..\SonicTimeTwisted.apk"

& $igor --rp=$rp --uf=$uf --project=$yyp -j=8 --config=Android --tf="$out" android Package
```

The working directory **must** be the `src` folder:
```
cd C:\Users\class\git\SonicTimeTwisted2.0_new\src
```

## Critical: `--config=Android`

Without `--config=Android`, the build uses the `Default` configuration which has `com.company.game` / "Created with GameMaker" as the app name. The `Android` configuration is defined in `.yyp` under `configs` and carries the real values:

| Option | Default | Android config |
|---|---|---|
| Display name | Created with GameMaker | Sonic Time Twisted |
| Package | com.company.game | com.overboundstudio.SonicTimeTwisted |
| compile_sdk | 33 | 34 |

## Output
The APK is written to the repo root: `C:\Users\class\git\SonicTimeTwisted2.0_new\SonicTimeTwisted.apk`

Build time is ~8-12 minutes on this machine.