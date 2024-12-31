import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
  id: root

  ColumnLayout {
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.topMargin: parent.height / 4

    width: parent.width / 8

    Image {
      source: "qrc:/aerpace_official_logo.jpg"
    }

    StackView {
      id: login_register_stack_view

      Layout.fillWidth: parent

      initialItem: "LoginScreen.qml"

      pushExit: Transition {}
      pushEnter: Transition {}
      popEnter: Transition {}
      popExit: Transition {}
    }
  }
}
