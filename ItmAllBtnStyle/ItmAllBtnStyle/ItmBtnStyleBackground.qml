import QtQuick 2.0

Rectangle {

    property string ms_image_btn_press: "";//btn_ir_point_press.png";
    property string ms_image_btn_release: "";//btn_ir_point_normal.png";
   //implicitWidth: 45;
   //implicitHeight: 45;

    border.width: control.activeFocus ? 2 : 1;
    border.color: "#888";
    radius: 4;

    Image {
        source: control.pressed ?  ms_image_btn_press : ms_image_btn_release;
    }
}

