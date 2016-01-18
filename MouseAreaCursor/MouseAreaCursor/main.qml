import QtQuick 2.5
import QtQuick.Window 2.2
import MouseAreaTest 1.0

Window {
    visible: true

//    MouseArea {
//        anchors.fill: parent
//        cursorShape: Qt.CrossCursor;

//        onEntered: {
//            cursorShape = Qt.CrossCursor;
//        }

//        onExited: {
//            cursorShape = Qt.ArrowCursor;
//        }
//    }

    MouseAreaTest {
        id: mouseAreaTest;

        anchors.fill: parent;
    }

}

