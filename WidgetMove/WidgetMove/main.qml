import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true
    width: 1920
    height: 300

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
}

