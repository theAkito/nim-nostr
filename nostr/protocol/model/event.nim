import ../../[ utils, sha ], std/[ strutils, json, with, times ]

type
  Event* = object       ## https://github.com/nostr-protocol/nips/blob/master/01.md#events-and-signatures
    id*: string         ## 32-bytes lowercase hex-encoded sha256 of the serialized event data
    pubkey*: string     ## 32-bytes lowercase hex-encoded public key of the event creator
    created_at*: int64  ## UNIX Timestamp in seconds
    kind*: int          ## Integer between 0 and 65535
    tags*: seq[string]  ## Arbitrary String
    content*: string    ## Arbitrary String
    sig*: string        ## 64-bytes lowercase hex of the signature applied to the sha256 hash of the `id` field

func obtainEventIdJArray(event: Event): JsonNode =
  result = newJArray()
  with result:
    add(%0)
    add(%event.pubkey)
    add(%event.created_at)
    add(%event.kind)
    add(%event.tags)
    add(%event.content)
    add(%event.sig)

func obtainEventIdJArrayString(event: Event): string =
  $event.obtainEventIdJArray

func obtainEventId(event: Event): string =
  event.obtainEventIdJArrayString.getSHA256Hex

func setEventId(event: Event): Event =
  event.edit:
    it.id = event.obtainEventId

proc constructEvent*(
  pubkey: string,
  kind: int,
  tags: seq[string],
  content: string,
  sig: string
): Event =
  Event(
    id: string.default,
    pubkey: pubkey.toHex,
    created_at: getTime().toUnix,
    kind: kind,
    tags: tags,
    content: content,
    sig: sig
  ).setEventId