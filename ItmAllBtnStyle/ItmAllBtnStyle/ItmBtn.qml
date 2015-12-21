import QtQuick 2.0

Rectangle {
    id: itmBtn;

    property string pic_current: "";
    property string pic_normal: "/images/delta_normal.png";
    property string pic_hover: "/images/delta_hover.png";
    property string pic_pressed: "/images/delta_pressed.png";

    signal sig_btn_pressed();
    signal sig_btn_release();

    width: 34;
    height: 28;
    z: 3;

    Image {
       source: pic_current;
    }

    state: "normal";
    color: "transparent";

    MouseArea {
        hoverEnabled: true;
        anchors.fill: parent;
        onEntered: {
            itmBtn.state == "pressed"? itmBtn.state = "pressed" : itmBtn.state = "hover";
        }
        onExited: {
            itmBtn.state == "pressed"? itmBtn.state = "pressed" : itmBtn.state = "normal";
        }
        onPressed: {
            itmBtn.state = "pressed";
            itmBtn.sig_btn_pressed();
        }
        onReleased: {
            itmBtn.state = "normal";
            itmBtn.sig_btn_release();
        }
    }

    states:[
        State {
            name: "hover";
            PropertyChanges {
                target: itmBtn;
                pic_current: pic_hover;
            }
        },
        State {
            name: "normal";
            PropertyChanges {
                target: itmBtn;
                pic_current: pic_normal;
            }
        },
        State {
            name: "pressed";
            PropertyChanges {
                target: itmBtn;
                pic_current: pic_pressed;
            }
        }

    ]

}
