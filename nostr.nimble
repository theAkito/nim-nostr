# Package

version       = "0.1.0"
author        = "Akito <the@akito.ooo>"
description   = "NOSTR Protocol implementation."
license       = "GPL-3.0-or-later"
skipDirs      = @["tasks"]
skipFiles     = @["README.md"]


# Dependencies

requires "nim             >= 2.0.0"
requires "puppy           >= 1.0.3"
requires "timestamp       >= 0.4.2"
requires "timezones       >= 0.5.4"
requires "zero_functional >= 1.3.0"
requires "yaml#189844a72b90ba7ade864f997280809efcb21d0a"
requires "nimSHA2"


# Tasks

task configure, "Configure project. Run whenever you continue contributing to this project.":
  exec "git fetch --all"
  exec "nimble check"
  exec "nimble --silent refresh"
  exec "nimble install --accept --depsOnly"
  exec "git status"
task fbuild, "Build project.":
  exec """nim c \
            --define:danger \
            --opt:speed \
            --out:nostr_danger \
            src/nostr && \
          strip nostr_danger \
            --strip-all \
            --remove-section=.comment \
            --remove-section=.note.gnu.gold-version \
            --remove-section=.note \
            --remove-section=.note.gnu.build-id \
            --remove-section=.note.ABI-tag
       """
task dbuild, "Debug Build project.":
  exec """nim c \
            --define:debug:true \
            --debuginfo:on \
            --out:nostr_debug \
            src/nostr
       """
