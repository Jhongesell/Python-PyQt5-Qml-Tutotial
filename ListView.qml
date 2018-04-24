import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.3

ApplicationWindow {
    width: 512
    height: 512
    visible: true

    ListView {
        id: listV
        width: parent.width
        height: parent.height

        model: StudentsData {}

        Component {
            id: listDelegate

            ColumnLayout {
                id: cont
                width: parent.width

                Text {
                    text: name
                    color: cont.ListView.isCurrentItem ? "white" : "black"
                }

                Text {
                    text: age
                    color: cont.ListView.isCurrentItem ? "white" : "black"
                }

                Text {
                    text: height + "''"
                    color: cont.ListView.isCurrentItem ? "white" : "black"
                }


                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true

                    onEntered: {
                        var x = parent.x
                        var y = parent.y
                        var index = listV.indexAt(x, y)
                        listV.currentIndex = index
                    }
                }

            }

        }

        delegate: listDelegate
        highlight: Rectangle { color: "dodgerblue" }
        focus: true

    }

}
