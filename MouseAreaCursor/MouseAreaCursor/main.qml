import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.CrossCursor;

        onEntered: {
            cursorShape = Qt.CrossCursor;
        }

        onExited: {
            cursorShape = Qt.ArrowCursor;
        }
    }

//    Text {
//        text: qsTr("Hello World")
//        anchors.centerIn: parent
//    }
}

