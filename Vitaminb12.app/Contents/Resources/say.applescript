#!/usr/bin/osascript

# Voices
# ----------
# Albert - male voice
# Bad News - singing funereal voice
# Bahh - an old male voice
# Bells - singing, ringing bell effect voice
# Boing - a springy effect voice
# Bruce - male voice
# Bubbles - bubble effect voice
# Cellos - singing voice
# Deranged - a nervous voice
# Fred - male voice
# Hysterical - laughing voice
# Junior - young boy's voice
# Kathy - female voice
# Pipe Organ - singing organ effects voice
# Princess - young girl's voice
# Ralph - deep male voice
# Trinoids - alien voice
# Victoria - female voice
# Whisper - whispering voice
# Zarvox - alien voice

on run argv
      set input to argv as string
      say input & " minutes left" using "Boing"
end run
