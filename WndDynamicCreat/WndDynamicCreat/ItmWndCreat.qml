import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    id: itmWndCreat;
    visible: true;
    modality: Qt.WindowModal;

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }

    function wnd_destroy() {
        itmWndCreat.destroy();
    }


}

