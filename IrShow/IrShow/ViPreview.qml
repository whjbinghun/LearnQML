import QtQuick 2.0

Rectangle {
    z: 1
    border.width: 1
    border.color: "black"
    color: "blue"
    property int n_vi_space_width: 20
    property int n_vi_space_height: 5

    ViToolBar {
        width: parent.width/4
        height: parent.height/10
    }

    PtzBtn {
        id: vi_ptz_btn
        property int n_ptz_space_width: 10
        property int n_ptz_space_bottom: 10
        anchors.right: parent.right
        anchors.rightMargin: n_ptz_space_width
        anchors.bottom: parent.bottom
        anchors.bottomMargin: n_ptz_space_bottom
        z: 2
    }

    onWidthChanged: {

    }

    onHeightChanged: {

    }
}

