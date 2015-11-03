import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 1920
    height: 300
    id: root
    MouseArea {
        anchors.fill: parent
        onClicked: {
            //Qt.quit();
        }
    }

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }

    RealPreview {
        id: real_preview
        x: 0
        y: ( parent.height - real_preview.height )/2
    }

    /*Button {
        id: btn_add_group
        text: "增加"
        x: parent.right - btn_add_group.width;
        y: parent.left
        signal sig_add_group();
        onClicked: {
            sig_add_group;

        }
    }

    Connections {
        target: btn_add_group;


    }*/
}

