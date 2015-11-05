import QtQuick 2.0
/*方向键按钮*/

Rectangle {
    id: itmBearBtn

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
            itmBearBtn.state == "pressed"? itmBearBtn.state = "pressed" : itmBearBtn.state = "hover";
        }
        onExited: {
            itmBearBtn.state == "pressed"? itmBearBtn.state = "pressed" : itmBearBtn.state = "normal";
        }
        onPressed: {
            itmBearBtn.state = "pressed";
        }
        onReleased: {
            itmBearBtn.state = "normal";
            itmBearBtn.clicked()
        }
    }

    states:[
        State {
            name: "hover"
            PropertyChanges {
                target: itmBearBtn
                pic_current: pic_hover
            }
        },
        State {
            name: "normal"
            PropertyChanges {
                target: itmBearBtn
                pic_current: pic_normal
            }
        },
        State {
            name: "pressed"
            PropertyChanges {
                target: itmBearBtn
                pic_current: pic_pressed
            }
        }

    ]

}
