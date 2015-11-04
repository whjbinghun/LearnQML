import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true
    id: root
    title: "美盛红外在线监控系统-实时预览客户端"
    x: 0
    y: 0
    width: 1920
    height: 1080
    property int n_area_width: 145
    property int n_ir_height: 549
    MouseArea {
        anchors.fill: parent
        onClicked: {
            //Qt.quit();
        }
    }

    /*Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }*/

    IrPreview {
        id: ir_preview
        anchors.left: parent.left
        anchors.leftMargin: n_area_width
        height: n_ir_height;
        width: n_ir_height*4/3;
    }

    ViPreview {
        id: vi_preview
        anchors.left: ir_preview.right
        height: n_ir_height;
        width: n_ir_height*16/9;
    }
}

