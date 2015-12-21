import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true;

    ItmButtonStyle {
        id: itmBtnStyle;
    }

    Button {
        id: btnPoint;
        width: 32;
        height: 32;
        //iconSource: "btn_ir_point_normal.png";
        style: itmBtnStyle.btnStylePoint;


//        onPressedChanged: {
//            if( pressed ) {
//                iconSource = "btn_ir_point_press.png";
//            } else {
//                iconSource = "btn_ir_point_normal.png";
//            }
//        }

//        onHoveredChanged: {
//            if( hovered ) {
//                iconSource = "btn_ir_point_press.png";
//            } else {
//                iconSource = "btn_ir_point_normal.png";
//            }
//        }
    }
}

