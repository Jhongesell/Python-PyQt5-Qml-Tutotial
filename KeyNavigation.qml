import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.3

ApplicationWindow {
    width: 512
    height: 512
    color: "dodgerblue"
    visible: true

    ColumnLayout {
        width: parent.width
        anchors.centerIn: parent


        Rectangle {
            id: first
            anchors.horizontalCenter: parent.horizontalCenter
            width: 256
            height: 48
            border.color: focus ? "black" : "white"
            focus: true

            Keys.onPressed: {
                this.children[0].text += event.text
            }

            KeyNavigation.down: second
            KeyNavigation.up: third

            Text {
                padding: 8
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 16
                text: ""
            }

        }


        Rectangle {
            id: second
            anchors.horizontalCenter: parent.horizontalCenter
            width: 256
            height: 48
            border.color: focus ? "black" : "white"

            Keys.onPressed: {
                this.children[0].text += event.text
            }

            KeyNavigation.right: third

            Text {
                padding: 8
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 16
                text: ""
            }

        }

        Rectangle {
            id: third
            anchors.horizontalCenter: parent.horizontalCenter
            width: 256
            height: 48
            border.color: focus ? "black" : "white"

            KeyNavigation.priority: KeyNavigation.AfterItem

            Keys.onPressed: {
                this.children[0].text += event.text
            }

            KeyNavigation.backtab: first

            Text {
                padding: 8
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 16
                text: ""
            }

        }

    }
}
