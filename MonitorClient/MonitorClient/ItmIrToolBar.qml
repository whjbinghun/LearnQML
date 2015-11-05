import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    id: itmIrToolBar
    property int n_tool_space_width: 35
    property int n_tool_space_height: 5
    anchors.top: parent.top;
    anchors.topMargin: n_tool_space_height
    anchors.left: parent.left
    anchors.leftMargin: n_tool_space_width
    width: 400
    height: 55
    z: 2
    radius: 8
    border.width: 1
    border.color: "white"
    opacity: 0.6

    property int n_spacing: 10
    property int n_btn_width: (width-n_spacing*2)/8
    property int n_btn_height: height - n_spacing
    Row {
        anchors.left: parent.left
        anchors.leftMargin: n_spacing
        anchors.top: parent.top
        anchors.topMargin: 5

        Button {
            id: itmButtonPoint
            width: n_btn_width
            height: n_btn_height
            iconSource: "/images/images/point.png"
        }

        Button {
            id: itmButtonLine
            width: n_btn_width
            height: n_btn_height
            iconSource: "/images/images/line.png"
        }
        Button {
            id: itmButtonRect
            width: n_btn_width
            height: n_btn_height
            iconSource: "/images/images/rect.png"
        }
        Button {
            id: itmButtonNear
            width: n_btn_width
            height: n_btn_height
            text: "—"
        }
        Button {
            id: itmButtonFar
            width: n_btn_width
            height: n_btn_height
            text: "+"
        }
        Button {
            id: itmButtonCalibration //校准
            width: n_btn_width
            height: n_btn_height
            text: "A"
        }
        Button {
            id: itmButtonSet
            width: n_btn_width
            height: n_btn_height
            text: "设置"
            //iconSource: "/images/images/auto_login.png"
        }
        Button {
            id: itmButtonFullscreen
            width: n_btn_width
            height: n_btn_height
            text: "全屏"
        }
    }

    onWidthChanged: {
        n_btn_width = (width - n_spacing*2)/8;
        console.log( "onWidthChanged", n_btn_width, width );
    }
    onHeightChanged: {
        n_btn_height = height-n_spacing;
    }
}

