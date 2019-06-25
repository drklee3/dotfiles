command: "date +\"%A %y%m%d | %I:%M:%S%p\""

render: (output) ->
  "<div class='screen'><div class='pecanclock'>#{output}</div></div>"
