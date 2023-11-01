type
  Kind* = enum
    ## Metadata (NIP01 and NIP05)
    Metadata,
    ## Short Text Note (NIP01)
    TextNote,
    ## Recommend Relay (NIP01)
    RecommendRelay,
    ## Contacts (NIP02)
    ContactList,
    ## Encrypted Direct Messages (NIP04)
    EncryptedDirectMessage,
    ## Event Deletion (NIP09)
    EventDeletion,
    ## Repost (NIP18)
    Repost,
    ## Reaction (NIP25)
    Reaction,
    ## Badge Award (NIP58)
    BadgeAward,
    ## Channel Creation (NIP28)
    ChannelCreation,
    ## Channel Metadata (NIP28)
    ChannelMetadata,
    ## Channel Message (NIP28)
    ChannelMessage,
    ## Channel Hide Message (NIP28)
    ChannelHideMessage,
    ## Channel Mute User (NIP28)
    ChannelMuteUser,
    ## Public Chat Reserved (NIP28)
    PublicChatReserved45,
    ## Public Chat Reserved (NIP28)
    PublicChatReserved46,
    ## Public Chat Reserved (NIP28)
    PublicChatReserved47,
    ## Public Chat Reserved (NIP28)
    PublicChatReserved48,
    ## Public Chat Reserved (NIP28)
    PublicChatReserved49,
    ## Wallet Service Info (NIP47)
    WalletConnectInfo,
    ## Reporting (NIP56)
    Reporting,
    ## Zap Request (NIP57)
    ZapRequest,
    ## Zap Receipt (NIP57)
    ZapReceipt,
    ## Mute List (NIP51)
    MuteList,
    ## Pin List (NIP51)
    PinList,
    ## Relay List Metadata (NIP65)
    RelayList,
    ## Client Authentication (NIP42)
    Authentication,
    ## Wallet Connect Request (NIP47)
    WalletConnectRequest,
    ## Wallet Connect Response (NIP47)
    WalletConnectResponse,
    ## Nostr Connect (NIP46)
    NostrConnect,
    ## Categorized People List (NIP51)
    CategorizedPeopleList,
    ## Categorized Bookmark List (NIP51)
    CategorizedBookmarkList,
    ## Live Event (NIP53)
    LiveEvent,
    ## Live Event Message (NIP53)
    LiveEventMessage,
    ## Profile Badges (NIP58)
    ProfileBadges,
    ## Badge Definition (NIP58)
    BadgeDefinition,
    ## Long-form Text Note (NIP23)
    LongFormTextNote,
    ## Application-specific Data (NIP78)
    ApplicationSpecificData,
    ## File Metadata (NIP94)
    FileMetadata,
    ## HTTP Auth (NIP98)
    HttpAuth,
    ## Set stall (NIP15)
    SetStall,
    ## Set product (NIP15)
    SetProduct,
    ## Regular Events (must be between 1000 and <=9999)
    Regular,
    ## Replaceable event (must be between 10000 and <20000)
    Replaceable,
    ## Ephemeral event (must be between 20000 and <30000)
    Ephemeral,
    ## Parameterized replaceable event (must be between 30000 and <40000)
    ParameterizedReplaceable,
    ## Custom
    Custom