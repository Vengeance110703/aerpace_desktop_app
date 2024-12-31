import QtQuick
import QtQuick.Controls

Window {
  id: root
  width: 640
  height: 480
  visible: true
  visibility: Qt.WindowFullScreen

  title: qsTr("Aerpace App")

  color: "black"

  StackView {
    id: default_stack_view

    anchors.fill: parent

    initialItem: "SplashScreen.qml"
  }
}
