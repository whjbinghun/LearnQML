import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    height: 465
    width: 110
    border.width: 1
    border.color: "black"
    z: 2
    //opacity: 1
    color: "transparent"  //背景透明
    property int n_palette_spacing_top: 10
    property int n_palette_spacing_left: 26
    Text {
        id: text_max_temp
        anchors.left: parent.left;
        anchors.leftMargin: 55;
        anchors.top: parent.top;
        width: 60;
        height: 30;
        opacity: 0.6
        font.bold: true
        font.pixelSize: 24
        text: "30.5"
        //horizontalAlignment:  Text.AlignHCenter  //文本水平居中
        //verticalAlignment: Text.AlignVCenter
    }

    Image {
        id: image_palette
        anchors.top: text_max_temp.bottom;
        anchors.margins: n_palette_spacing_top;
        anchors.left: parent.left
        anchors.leftMargin: 70;
        width: 30
        height: 385
        z: 3
        opacity: 1
        source: "/images/images/palette.bmp"
    }
    Text {
        id: text_min_temp
        anchors.left: parent.left;
        anchors.leftMargin: 55;
        anchors.top: image_palette.bottom;
        anchors.topMargin: n_palette_spacing_top
        opacity: 0.6
        font.bold: true
        font.pixelSize: 24
        text: "20.5"
    }

    BearBtn {
        anchors.right: image_palette.left
        anchors.top:  image_palette.top;
        anchors.topMargin: 40;
        rotation: 90
    }

    BearBtn {
        anchors.right: image_palette.left
        anchors.top:  image_palette.top;
        anchors.topMargin: 100;
        rotation: 90
    }
}

