import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    id: realPreview
    width: 1920
    height: 150
    border.width: 1
    border.color: "red"

    Button {
        id: btn_left
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        text: "左边"
        z: 10
        onClicked: {
            group_preview_1.x = group_preview_1.x - group_preview_1.width
        }
    }

    Button {
        id: btn_right
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        text: "右边"
        onClicked: {

        }
    }

    GroupPreview {
        id: group_preview_1
        x: parent.x + 10
        z: 1
    }
}

