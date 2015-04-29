on run {input, parameters}
  tell application "Finder"
    set dir_path to quoted form of (POSIX path of (input as string))
  end tell
  CD_to(dir_path)
end run

on CD_to(theDir)
  tell application "iTerm"
    activate

    try
      set _session to current session of current terminal
    on error
      set _term to (make new terminal)
      tell _term
        launch session "Default"
        set _session to current session
      end tell
    end try

    tell _session
      write text "cd " & theDir & ";clear;"
    end tell
  end tell
end CD_to