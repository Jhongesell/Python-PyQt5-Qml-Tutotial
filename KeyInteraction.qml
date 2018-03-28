import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 512
    height: 512
    color: "white"
    title: qsTr("Key Interaction")
    property string text_string: ""

    GridLayout {
        anchors.centerIn: parent
        columnSpacing: 0

        Rectangle {
            width: 256
            height: 48
            color: "white"
            border.color: "black"
            border.width: 1

            Text {
                id: text_content
                width: parent.width
                anchors.verticalCenter: parent.verticalCenter
                text: ""
                elide: Qt.ElideLeft
            }

            focus: true
            Keys.onPressed: {
                if(event.key == Qt.Key_Backspace) {
                    text_string = text_string.slice(0, text_string.length - 1)
                    text_content.text = text_string
                } else if(event.text == "B") {
                    console.log(event.key)
                } else {
                    text_string += event.text
                    text_content.text = text_string
                }
            }

        }

        Rectangle {
            width: 48
            height: 48
            color: "green"
            border.color: "black"
            border.width: 1

            Text {
                anchors.centerIn: parent
                text: "Go"
                color: "white"
                font.pixelSize: 16
            }

        }

    }
}
