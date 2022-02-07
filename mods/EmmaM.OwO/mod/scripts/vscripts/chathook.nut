global function addCallback

ClServer_MessageStruct function callbacktest(ClServer_MessageStruct message) {

    if (message.message.tolower().find("nft") != null) {
        ServerCommand("kickid "+ message.player.GetUID())
        message.shouldBlock = true
    }

    message.message = StringReplace(message.message, "r", "w", true, false)
    message.message = StringReplace(message.message, "l", "w", true, false)
    message.message = StringReplace(message.message, "R", "W", true, false)
    message.message = StringReplace(message.message, "L", "W", true, false)

    return message
}

void function addCallback() {
    AddCallback_OnRecievedSayTextMessage( callbacktest )
}