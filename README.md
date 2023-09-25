# League of Legends Language Changer Script

This batch script allows you to quickly change the language of your League of Legends client and launch the game.

## Prerequisites

Make sure you have PowerShell installed on your system.

## Instructions

1. Download the batch script or create a new `.bat` file and copy the code into it.
2. Open the batch script using a text editor like Notepad or any code editor you prefer.
3. Modify the `src_path` and `dst_path` variables to match the location of your `LeagueClient.exe` on your system.
   - `src_path`: The path to the League of Legends `LeagueClient.exe` file.
   - `dst_path`: The path where the temporary shortcut file `LeagueClientShortcut.lnk` will be created.

Example:

```batch
set "src_path=G:\Riot Games\League of Legends\LeagueClient.exe"
set "dst_path=G:\Riot Games\League of Legends\LeagueClientShortcut.lnk"
```

Change the --locale argument to the language you want to set your League of Legends client to.
Here are some examples of locale codes:

ja_JP: Japanese
ko_KR: Korean
zh_CN: Chinese
zh_TW: Taiwanese
es_ES: Spanish (Spain)
es_MX: Spanish (Latin America)
en_US: English (alternatives en_GB, en_AU)
fr_FR: French
de_DE: German
it_IT: Italian
pl_PL: Polish
ro_RO: Romanian
el_GR: Greek
pt_BR: Portuguese
hu_HU: Hungarian
ru_RU: Russian
tr_TR: Turkish

Example:

```batch
Copy code
$s.Arguments = '--locale=zh_CN';
```

Save your changes and run the batch file.
This will create a shortcut, run the game in the specified language, and then delete the shortcut.

#Disclaimer
Use this script at your own risk. Always make sure you know what a script does before running it on your system.
