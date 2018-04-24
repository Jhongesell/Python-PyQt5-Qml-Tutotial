import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.3

ApplicationWindow {
    width: 512
    height: 512
    visible: true

    ColumnLayout {
        width: parent.width - 24
        anchors.centerIn: parent

        MyOwnButton {
            anchors.horizontalCenter: parent.horizontalCenter
            label: "Log In"
        }

        MyOwnButton {
            anchors.horizontalCenter: parent.horizontalCenter
            label: "Log Out"
            textColor: "yellow"
        }

        MyOwnButton {
            anchors.horizontalCenter: parent.horizontalCenter
            onClick: {
                console.log('yousjfkajdksjf')
            }

        }

        MyOwnButton {
            onClick: {
                console.log('I have Clicked')
            }
        }

    }
}
