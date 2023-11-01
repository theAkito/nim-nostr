template edit*(o, body: untyped): untyped =
  block:
    var it {.inject.} = `o`
    `body`
    it