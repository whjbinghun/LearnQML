import QtQuick 2.5
import QtQuick.Window 2.2
import an.qml.Controls 1.0

Window {
    id: root
    visible: true

    MouseArea {
        id: itmMouseArea
        anchors.fill: parent
    }

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }

    PaintedIrAnaItem {
        id: paintedIrAnaItem
        anchors.left: parent.left
        anchors.top: parent.top
        width: parent.width
        height: parent.height
    }
}
