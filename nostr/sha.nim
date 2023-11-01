##[
  Simple SHA hashing.
]##

import
  pkg/[
    nimSHA2
  ]

proc getSHA256Hex*(s: string): string =
  var sha = initSHA[SHA256]()
  sha.update(s)
  sha.final.toHex