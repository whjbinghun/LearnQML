import QtQuick 2.0
/*方向键按钮*/

Rectangle {
    id: btn_bear

    property string pic_current: ""
    property string pic_normal: "/images/images/delta_normal.png"
    property string pic_hover: "/images/images/delta_hover.png"
    property string pic_pressed: "/images/images/delta_pressed.png"

    signal clicked();

    width: 34
    height: 28
    z: 3

    Image {
       source: pic_current
    }

    state: "normal"
    color: "transparent"

    MouseArea {
        hoverEnabled: true;
        anchors.fill: parent
        onEntered: {
            console.log( "1111 ", btn_bear.state );
            btn_bear.state == "pressed"? btn_bear.state = "pressed" : btn_bear.state = "hover";
            console.log( "2222 ", btn_bear.state );
        }
        onExited: {
            console.log( "3333 ", btn_bear.state );
            btn_bear.state == "pressed"? btn_bear.state = "pressed" : btn_bear.state = "normal";
            console.log( "4444 ", btn_bear.state );
        }
        onPressed: {
            console.log( "5555 ", btn_bear.state );
            btn_bear.state = "pressed";
            console.log( "6666 ", btn_bear.state );
        }
        onReleased: {
            console.log( "7777 ", btn_bear.state );
            btn_bear.state = "normal";
            btn_bear.clicked()
            console.log( "8888 ", btn_bear.state );
        }
    }

    states:[
        State {
            name: "hover"
            PropertyChanges {
                target: btn_bear
                pic_current: pic_hover
            }
        },
        State {
            name: "normal"
            PropertyChanges {
                target: btn_bear
                pic_current: pic_normal
            }
        },
        State {
            name: "pressed"
            PropertyChanges {
                target: btn_bear
                pic_current: pic_pressed
            }
        }

    ]

}
