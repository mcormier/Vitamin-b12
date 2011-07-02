#!/usr/bin/osascript
set defaultVal to "25 minutes"
set choices to { "30 minutes", defaultVal , "15 minutes", "10 minutes" } 
set vitPrompt to "Run VitaminB12 for?"

tell app "Finder"
  activate
  choose from list choices with prompt vitPrompt default items { defaultVal }
end tell
