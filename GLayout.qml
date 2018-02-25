import QtQuick 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.3

ApplicationWindow {
    title: "Photoshop Unregistered"
    width: 720
    height: 480

    GridLayout {
        width: 480
        columns: 3
        anchors.centerIn: parent

        Rectangle {
            Layout.fillWidth: true
            Layout.columnSpan: 2
            height: 120
            color: "#0078d7"
        }

        Rectangle {
            width: 160
            height: 120
            color: "#2993cc"
        }

        Rectangle {
            width: 160
            height: 120
            color: "#F7630C"
        }


        Rectangle {
            width: 160
            height: 120
            color: "#E81123"
        }

        Rectangle {
            width: 160
            height: 120
            color: "#9BCC29"
        }

        Rectangle {
            width: 160
            height: 120
            color: "#486860"
        }


        Rectangle {
            width: 160
            height: 120
            color: "#68768A"
        }

        Rectangle {
            width: 160
            height: 120
            color: "#2993cc"
        }

    }
}
