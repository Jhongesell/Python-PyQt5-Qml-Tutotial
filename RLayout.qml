import QtQuick 2.4
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4

ApplicationWindow {
    visible: true
    width: 1024
    height: 480
    title: qsTr("Photoshop cc 2018")
    color: "#3a3a3a"

    Rectangle {
        width: parent.width
        height: 160
        color: "black"

        RowLayout {

            width: parent.width
            height: parent.height
            spacing: 0

            Rectangle {
                width: 1000
                Layout.fillHeight: true
                color: "dodgerblue"
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "green"
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "orangered"
            }

            Rectangle {
                Layout.minimumWidth: 200
                Layout.fillHeight: true
                color: "red"
            }


        }

    }

}
