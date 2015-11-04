import QtQuick 2.0

Rectangle {
    width: 130
    height: 130
    z: 2
    radius: 65
    border.width: 1
    border.color: "white"
    opacity: 0.6

    Item {
        id: bear_btn_ptz
        BearBtn {
            id: btn_top
            x: 47
            y: 0
            onClicked: {
                console.log( "往上移动..." );
            }
        }

        BearBtn {
            id: btn_right_top
            x: 84
            y: 15
            rotation: 45
            onClicked: {
                console.log( "往右上移动..." );
            }
        }
        BearBtn {
            id: btn_right
            x: 99
            y: 51
            rotation: 90
        }

        BearBtn {
            id: btn_right_bottom
            x: 84
            y: 87
            rotation: 135
        }
        BearBtn {
            id: btn_bottom
            x: 48
            y: 102
            rotation: 180
        }
        BearBtn {
            id: btn_left_bottom
            x: 12
            y: 87
            rotation: 225
        }
        BearBtn {
            id: btn_left
            x: -3
            y: 51
            rotation: 270
        }
        BearBtn {
            id: btn_left_top
            x: 12
            y: 15
            rotation: 315
        }
    }
}

