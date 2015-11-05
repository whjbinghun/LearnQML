import QtQuick 2.5

Rectangle {
    id: itmGroupFrame
    width: 374
    height: 150
    z: 1

    property int group_spacing_width: 5
    property int group_spacing_height: 5
    property int n_width: width - group_spacing_width*2
    property int n_height: height - group_spacing_height*2
    //红外高度：文本高度 = 1:5
    //红外宽度：可见光宽度 = 3:4
    property int n_simple_height: n_height/6
    property int n_ir_width: n_width*3/7;
    property int n_ir_height: n_simple_height*5;
    property int n_vi_width: n_width*4/7;
    property int n_text_width: n_width
    property int n_text_height: n_simple_height

    border.color: "black"
    ItmIrSimpleFrame {
        id: itmIrSimpleFrame
        anchors.left: parent.left
        anchors.leftMargin: group_spacing_width
        anchors.top: parent.top
        anchors.topMargin: group_spacing_height
        height: n_ir_height
        width: n_ir_width;

        Component.onCompleted: {
          console.log( "ir_preview width", width );
        }
    }

    ItmViSimpleFrame {
        id: itmViSimpleFrame
        anchors.left: itmIrSimpleFrame.right
        anchors.top: itmIrSimpleFrame.top
        height: n_ir_height
        width: n_vi_width;
        Component.onCompleted: {
          console.log( "vi_preview width", width );
        }
    }

    Text {
        id: itmTextGroupName
        anchors.left: parent.left
        anchors.top: itmIrSimpleFrame.bottom
        anchors.right: itmViSimpleFrame.right
        anchors.bottom: parent.bottom
        width: n_text_width
        height: n_text_height
        //text: "88-云台-老残测器-1#";
        horizontalAlignment: Text.AlignHCenter;
        verticalAlignment: Text.AlignVCenter;
    }

    onWidthChanged: {
        n_width = width - group_spacing_width*2
        n_ir_width = n_width*3/7;
        n_vi_width = n_width*4/7;
        n_text_width = n_width

    }

    onHeightChanged: {
        n_height = height - group_spacing_height*2
        n_simple_height = n_height/6
        n_ir_height = n_simple_height*5;
        n_text_height = n_simple_height
    }
}

