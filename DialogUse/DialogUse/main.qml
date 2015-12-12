import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2

Window {
    visible: true

    MouseArea {
        anchors.fill: parent
        onClicked: {
          itmDialog.visible = true;
        }
    }

    Dialog {
        id: itmDialog;

        visible: false;
        title: "11111";
//        TabView {

//        }
    }

//    Text {
//        text: qsTr("Hello World")
//        anchors.centerIn: parent
//    }
}

