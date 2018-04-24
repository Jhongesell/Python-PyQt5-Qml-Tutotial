import QtQuick 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.3

Rectangle {
    width: 120
    height: 36
    color: "dodgerblue"
    property string label: "Click Me"
    property color textColor: "white"
    signal hover()
    signal click()

    onHover: {
        console.log('you have hovered')
    }

    Text {
        anchors.centerIn: parent
        text: label
        color: textColor
        font.pixelSize: 24
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor

        onEntered: {
            parent.color = "lightblue"
            parent.children[0].color = "orange"
            hover()
        }

        onPressed: click()

        onExited: {
            parent.color = "dodgerblue"
            parent.children[0].color = textColor
        }
    }

}
