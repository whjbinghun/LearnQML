import QtQuick 2.5

Rectangle {
    id: group_preview
    width: 364
    height: 140

    border.color: "black"
    IrSimpleFrame {
        id: ir_preview
        anchors.left: parent.left
        anchors.top: parent.top
        height: 117
        width: height*4/3;

        Component.onCompleted: {
          console.log( "ir_preview width", width );
        }
    }

    ViSimpleFrame {
        id: vi_preview
        anchors.left: ir_preview.right
        anchors.top: ir_preview.top
        height: 117
        width: height*16/9;
        Component.onCompleted: {
          console.log( "vi_preview width", width );
        }
    }

    Text {
        id: text_group_name
        anchors.left: parent.left
        anchors.top: ir_preview.bottom
        anchors.right: vi_preview.right
        anchors.bottom: parent.bottom
        text: "88-云台-老残测器-1#";
        horizontalAlignment: Text.AlignHCenter;
        verticalAlignment: Text.AlignVCenter;
    }
}

