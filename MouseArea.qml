import QtQuick 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.2
import './applications.js' as MyFunction

ApplicationWindow {
    visible: true
    title: "Calculator"
    width: 512
    height: 512

    property string eval_string: ""
    property string result: ""


    ColumnLayout {

        width: parent.width
        height: parent.height

        Rectangle {
            width: parent.width
            height: parent.height / 4
            color: "#9BCC29"

            Text {
                id: screen
                text: ""
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 72
                color: 'white'
                elide: Text.ElideLeft
            }
        }

        GridLayout {
            width: parent.width
            Layout.fillHeight: true
            anchors.bottom: parent.bottom
            columns: 4
            columnSpacing: 0
            rowSpacing: 0


            CalculatorKey {
                value: "CE"
                onClick: {
                    var signs = ['x', '+', '-', '/'];
                    var prevIndex = -1;
                    for(var x=0;x<4; x++) {
                        var lastIndex = screen.text.lastIndexOf(signs[x], screen.text)
                        if(lastIndex > prevIndex) {
                            prevIndex = lastIndex;
                        }
                    }

                    var sum = prevIndex + 1;
                    var remainder = screen.text.slice(0, sum);
                    var e_rem = eval_string.slice(0, sum);

                    screen.text = remainder;
                    eval_string = e_rem;
                    console.log(eval_string);

                }
            }


            CalculatorKey {
                value: "C"
                onClick: {
                    eval_string = ''
                    screen.text = ''
                }
            }


            CalculatorKey {
                value: "Del"
                onClick: {
                    var count = eval_string.length - 1;
                    eval_string = eval_string.substring(0, count)
                    screen.text = screen.text.substring(0, count)
                }
            }


            CalculatorKey {
                value: "/"
                onClick: {
                    eval_string += value
                    screen.text += value
                }
            }




            CalculatorKey {
                value: "7"
                onClick: {
                    eval_string += value
                    screen.text += value
                }
            }


            CalculatorKey {
                value: "8"
                onClick: {
                    eval_string += value
                    screen.text += value
                }
            }


            CalculatorKey {
                value: "9"
                onClick: {
                    eval_string += value
                    screen.text += value
                }
            }


            CalculatorKey {
                value: "x"
                onClick: {
                    eval_string += '*'
                    screen.text += value

                }
            }



            CalculatorKey {
                value: "4"
                onClick: {
                    eval_string += value
                    screen.text += value
                }
            }


            CalculatorKey {
                value: "5"
                onClick: {
                    eval_string += value
                    screen.text += value
                }
            }


            CalculatorKey {
                value: "6"
                onClick: {
                    eval_string += value
                    screen.text += value
                }
            }


            CalculatorKey {
                value: "-"
                onClick: {
                    eval_string += value
                    screen.text += value
                }
            }



            CalculatorKey {
                value: "1"
                onClick: {
                    eval_string += value
                    screen.text += value
                }
            }


            CalculatorKey {
                value: "2"
                onClick: {
                    eval_string += value
                    screen.text += value
                }
            }


            CalculatorKey {
                value: "3"
                onClick: {
                    eval_string += value
                    screen.text += value
                }
            }


            CalculatorKey {
                value: "+"
                onClick: {
                    eval_string += value
                    screen.text += value
                }
            }


            CalculatorKey {
                value: "^"
                onClick: {
                    eval_string += value
                    screen.text += value
                }
            }


            CalculatorKey {
                value: "0"
                onClick: {
                    eval_string += value
                    screen.text += value
                }
            }


            CalculatorKey {
                value: "."
                onClick: {
                    eval_string += value
                    screen.text += value
                }
            }


            CalculatorKey {
                value: "="
                onClick: {
                    if(1){
                        console.log(eval_string);
                        result = MyFunction.bodmas(eval_string);
                        screen.text = result
                    }

                    /*mouse.eval(eval_string)*/
                }
            }
        }

    }



    Connections {
        target: mouse

        onResult: {
            result = eval
            screen.text = result
        }

    }

}
