' ********** Copyright 2019 Roku Corp.  All Rights Reserved. **********

' There are two functions depending on whether or not a focus index and isContentList are provided
function OpenVideoPlayer(content as Object, index as Integer, isContentList as Boolean) as Object
    ' Create VideoView Object and set its fields
    video = CreateObject("roSGNode", "VideoView")
    video.content = content
    video.jumpToItem = index
    video.isContentList = isContentList
    ' Set it to start playing, it wont begin playback until show() is called
    video.control = "play"
    ' Show the video view
    m.top.ComponentController.CallFunc("show", {
        view: video
    })
    return video
end function

function OpenVideoPlayerItem(contentItem as Object) as Object
    ' Create VideoView Object and set its fields
    video = CreateObject("roSGNode", "VideoView")
    video.content = contentItem
    video.isContentList = false
    ' Set it to start playing, it wont begin playback until show() is called
    video.control = "play"
    ' Show the video view
    m.top.ComponentController.CallFunc("show", {
        view: video
    })
    return video
end function
