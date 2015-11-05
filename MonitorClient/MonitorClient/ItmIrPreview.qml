import QtQuick 2.0

Rectangle {
    z: 1
    border.width: 1
    border.color: "black"
    color: "red"
    property int n_space_width: 20
    property int n_space_height: 5
    ItmIrToolBar {
        width: parent.width/2
        height: parent.height/10
    }

    ItmIrPalette {
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.right: parent.right
        anchors.rightMargin: 10
    }

    ItmPtzBtn {
        property int n_ptz_space_width: 10
        property int n_ptz_space_bottom: 10
        anchors.left: parent.left
        anchors.leftMargin: n_ptz_space_width
        anchors.bottom: parent.bottom
        anchors.bottomMargin: n_ptz_space_bottom
    }

    Text {
        z: 1
        anchors.left: parent.left
        anchors.leftMargin: 60
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 80
        text: "100"
    }

    onWidthChanged: {

    }

    onHeightChanged: {

    }
}

