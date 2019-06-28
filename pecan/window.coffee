command: "/usr/local/bin/chunkc tiling::query --window tag"

refreshFrequency: 1000

render: (output) ->
  "<div class='screen'><div class='holder'><div class='pecandate'>#{output}</div></div></div>"
