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
        id: itmBearBtnPtz
        ItmBearBtn {
            id: itmBtnTop
            x: 47
            y: 0
            onClicked: {
                console.log( "往上移动..." );
            }
        }

        ItmBearBtn {
            id: itmBtnRightTop
            x: 84
            y: 15
            rotation: 45
            onClicked: {
                console.log( "往右上移动..." );
            }
        }
        ItmBearBtn {
            id: itmBtnRight
            x: 99
            y: 51
            rotation: 90
        }

        ItmBearBtn {
            id: itmBtnRightBottom
            x: 84
            y: 87
            rotation: 135
        }
        ItmBearBtn {
            id: itmBtnBottom
            x: 48
            y: 102
            rotation: 180
        }
        ItmBearBtn {
            id: itmBtnLeftBottom
            x: 12
            y: 87
            rotation: 225
        }
        ItmBearBtn {
            id: itmBtnLeft
            x: -3
            y: 51
            rotation: 270
        }
        ItmBearBtn {
            id: itmBtnLeftTop
            x: 12
            y: 15
            rotation: 315
        }
    }
}

