import QtQuick
import QtMultimedia

Item {
  id: root

  Video {
    id: splashscreen_video

    anchors.fill: parent

    source: "qrc:/splashscreen.mp4"
    autoPlay: true

    // loops: MediaPlayer.Infinite
    onErrorOccurred: console.log(errorString)

    onStopped: default_stack_view.push("LoginOrRegisterScreen.qml")
  }
}
