import QtQuick 2.0
import QtQuick.Controls.Styles 1.4

Item {
    property Component  btnStylePoint: comPoint;



    Component {
       id: comPoint;
       ButtonStyle {
           background: ItmBtnStyleBackground {
               ms_image_btn_press: "btn_ir_point_press.png";
               ms_image_btn_release: "btn_ir_point_normal.png";
           }

//               Rectangle {
//               implicitWidth: 45;
//               implicitHeight: 45;

//                border.width: control.activeFocus ? 2 : 1;
//                border.color: "#888";
//                radius: 4;

//                Image {
//                    source: control.pressed ? "btn_ir_point_press.png" : "btn_ir_point_normal.png";
//                }
//           }
       }
    }
}

