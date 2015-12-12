import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.1
import an.qt.ColorMaker 1.0
import an.qt.Preset 1.0


Window {
    visible: true

    ColorMaker{
        id: colorMaker
    }

    Button{
        id: stop;
        text: "test";
        width: 100
        height: 80
        anchors.centerIn: parent
        onClicked: {
            console.log( "name:" + colorMaker.preset_items[1].itemname + ",ptz:"
                        + colorMaker.preset_items[1].n_preset_ptz )
        }
    }
}

