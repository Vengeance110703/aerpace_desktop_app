import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
  id: root

  property alias username: userscreen_username_text.text

  ColumnLayout {
    anchors.centerIn: parent

    width: parent.width / 8

    spacing: 20

    Text {
      id: userscreen_username_text
      Layout.fillWidth: true

      color: "white"
      horizontalAlignment: Text.AlignHCenter
      verticalAlignment: Text.AlignVCenter

      font.pixelSize: 20
    }

    Button {
      id: login_user_button

      Layout.fillWidth: true

      Text {
        id: login_user_button_text

        anchors.centerIn: parent
        text: "Logout"
      }

      onClicked: default_stack_view.pop()
    }
  }
}
