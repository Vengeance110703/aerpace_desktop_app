import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
  id: root

  property string username_temp: ""

  ColumnLayout {
    id: login_screen_layoout

    anchors.centerIn: parent

    spacing: 20

    height: parent.height
    width: parent.width

    Text {
      id: login_title

      Layout.fillWidth: true

      color: "white"
      horizontalAlignment: Text.AlignHCenter
      verticalAlignment: Text.AlignVCenter

      font.bold: true
      font.pixelSize: 20

      text: "Login"
    }

    TextField {
      id: login_username

      Layout.fillWidth: true

      placeholderText: "Enter username"
    }

    TextField {
      id: login_password

      Layout.fillWidth: true

      echoMode: TextInput.Password
      placeholderText: "Enter password"
    }

    Button {
      id: login_submit_button

      Layout.fillWidth: true

      Text {
        id: login_submit_button_text

        anchors.centerIn: parent
        text: "Login"
      }

      onClicked: {
        if (login_username.text !== "" && login_password.text !== "") {
          username_temp = login_username.text
          login_username.clear()
          login_password.clear()
          default_stack_view.push("UserScreen.qml", {
                                    "username": username_temp
                                  })
        } else {
          console.log("enter username and password")
        }
      }
    }

    RowLayout {
      id: register_user_layout

      Layout.fillWidth: true

      spacing: 3

      Text {
        id: new_user_text

        color: "white"

        text: "Not an existing User?"
      }

      Button {
        id: register_user_button

        Layout.fillWidth: true

        Text {
          id: register_user_button_text

          anchors.centerIn: parent
          text: "Register"
        }

        onClicked: {
          login_username.clear()
          login_password.clear()
          login_register_stack_view.push("RegisterScreen.qml")
        }
      }
    }
  }
}
