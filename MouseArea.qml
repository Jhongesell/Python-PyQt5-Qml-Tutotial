import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 512
    height: 512
    title: qsTr("MouseArea")
    color: "white"

    GridLayout {
        anchors.centerIn: parent
        width: 200

        Rectangle {
            anchors.centerIn: parent
            width: parent.width
            height: 48
            color: "green"

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: "PointingHandCursor"
                acceptedButtons: Qt.AllButtons

                onEntered: {
                    parent.color = "#F7630C"
                }

                onExited: {
                    parent.color = "green"
                }

                onPressed: {
                    parent.color = "lightgreen"
                    if(!mouse.source) {
                        console.log(mouse.source)
                    }
                }

            }

            Text {
                id: texxer
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Click on me"
                font.pixelSize: 24
                color: "white"
            }
        }

    }

}
