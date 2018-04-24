import QtQuick 2.6
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    width: 512
    height: 512
    visible: true

    Rectangle {
        width: parent.width
        height: parent.height
        color: "dodgerblue"

        Rectangle {
            anchors.centerIn: parent
            width: 256
            height: 32
            color: "white"

            focus: true
            Text {
                id: label
                padding: 8
                anchors.verticalCenter: parent.verticalCenter
                text: ""
                font.pixelSize: 16
            }

            Keys.onPressed: {
                label.text += event.text
            }
        }

        Keys.onPressed: {
            console.log('sodj')
        }

    }



}
