import QtQuick 2.4
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4

ApplicationWindow {

    visible: true
    width: 1024
    height: 480
    title: qsTr("Photoshop cc 20xx")
    color: "#3a3a3a"


    RowLayout {

        width: parent.width
        height: parent.height - 80
        anchors.centerIn: parent
        spacing: 0

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "white"
        }





        Rectangle {

            Layout.preferredWidth: 2 * parent.width / 3
            Layout.fillHeight: true
            color: "#777777"



            ColumnLayout {

                width: parent.width - 48
                height: parent.height
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 0


                Rectangle {
                    Layout.fillWidth: true
                    height: 80
                    anchors.top: parent.top
                    color: "white"
                }

                Rectangle {
                    Layout.fillWidth: true
                    height: 80
                    color: "white"
                }

                Rectangle {
                    Layout.fillWidth: true
                    height: 80
                    color: "white"
                }


            }



        }





        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "white"
        }

    }


}
