import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
  id: root

  property string username_temp: ""

  ColumnLayout {
    id: register_screen_layoout

    anchors.centerIn: parent

    spacing: 20

    width: parent.width
    height: parent.height

    Text {
      id: register_title

      Layout.fillWidth: true

      color: "white"
      horizontalAlignment: Text.AlignHCenter
      verticalAlignment: Text.AlignVCenter

      font.bold: true
      font.pixelSize: 20

      text: "Register"
    }

    TextField {
      id: register_username

      Layout.fillWidth: true

      placeholderText: "Enter username"
    }

    TextField {
      id: register_password

      Layout.fillWidth: true

      echoMode: TextInput.Password
      placeholderText: "Enter password"
    }

    Button {
      id: register_submit_button

      Layout.fillWidth: true

      Text {
        id: register_submit_button_text

        anchors.centerIn: parent
        text: "Register"
      }

      onClicked: {
        if (register_username.text !== "" && register_password.text !== "") {
          username_temp = register_username.text
          register_username.clear()
          register_password.clear()
          default_stack_view.push("UserScreen.qml", {
                                    "username": username_temp
                                  })
        } else {
          console.log("enter username and password")
        }
      }
    }

    RowLayout {
      id: login_user_layout

      Layout.fillWidth: true

      spacing: 8

      Text {
        id: existing_user_text

        color: "white"

        text: "Existing User?"
      }

      Button {
        id: login_user_button

        Layout.fillWidth: true

        Text {
          id: login_user_button_text

          anchors.centerIn: parent
          text: "Login"
        }

        onClicked: login_register_stack_view.pop()
      }
    }
  }
}
