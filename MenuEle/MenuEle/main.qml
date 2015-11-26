import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Window {
    visible: true

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

    Label {
        anchors.left: parent.left;
        anchors.top: parent.top;
        width: 100;
        height: 100;
        color: "red";
        text: "sdfkj";
    }
}

