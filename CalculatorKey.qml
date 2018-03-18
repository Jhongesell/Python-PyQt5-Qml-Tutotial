import QtQuick 2.3
import QtQuick.Layouts 1.3

Rectangle {
    property string value: "4"

    Layout.fillWidth: true
    height: 76.8
    color: "#4a4a4a"
    signal hover(); signal click()

    onHover: {
        color = "#1a1a1a"
    }

    onClick: {
        color = "#7a7a7a"
    }

    Text {
        text: value
        anchors.centerIn: parent
        font.pixelSize: 24
        color: "white"
    }

    MouseArea {
       anchors.fill: parent
       hoverEnabled: true
       cursorShape: Qt.PointingHandCursor

       onEntered: hover()

       onExited: {
           parent.color = "#4a4a4a"
       }

       onPressed: click()

    }

}
