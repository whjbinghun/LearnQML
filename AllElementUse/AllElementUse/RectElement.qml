import QtQuick 2.0

Rectangle {
    id: rectElement
    width: 100
    height: 100
    //color: "red"
    color: "transparent"
    gradient: Gradient {
        GradientStop { position: 0.0; color: "#202020"; }
        GradientStop { position: 0.33; color: "blue"; }
        GradientStop { position: 1.0; color: "#FFFFFF"; }
    }

    border.width: 1
    border.color: "black"
    radius: 8

}

