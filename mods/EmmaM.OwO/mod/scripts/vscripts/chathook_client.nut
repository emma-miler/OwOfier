global function addCallback

string function OwOFy(string toConvert) {
    string converted;
    converted = StringReplace(toConvert, "r", "w", true, false)
    converted = StringReplace(converted, "l", "w", true, false)
    converted = StringReplace(converted, "R", "W", true, false)
    converted = StringReplace(converted, "L", "W", true, false)
    converted = StringReplace(converted, "no", "nya", true, true)
    return converted
}

ClClient_MessageStruct function callbacktest(ClClient_MessageStruct message) {

    message.playerName = OwOFy(message.playerName)
    message.message = OwOFy(message.message)

    return message
}

void function addCallback() {
    AddCallback_OnReceivedSayTextMessage( callbacktest )
}