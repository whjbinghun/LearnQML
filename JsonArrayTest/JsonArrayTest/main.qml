import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true

    width: 500;
    height: 500;

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }


}
