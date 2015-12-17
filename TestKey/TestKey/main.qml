import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true

//    Grid {
//        width: 100; height: 100
//        columns: 2

//        Rectangle {
//            id: topLeft
//            width: 50; height: 50
//            color: focus ? "red" : "lightgray"
//            focus: true

//            KeyNavigation.right: topRight
//            KeyNavigation.down: bottomLeft
//        }

//        Rectangle {
//            id: topRight
//            width: 50; height: 50
//            color: focus ? "red" : "lightgray"

//            KeyNavigation.left: topLeft
//            KeyNavigation.down: bottomRight
//        }

//        Rectangle {
//            id: bottomLeft
//            width: 50; height: 50
//            color: focus ? "red" : "lightgray"

//            KeyNavigation.right: bottomRight
//            KeyNavigation.up: topLeft
//        }

//        Rectangle {
//            id: bottomRight
//            width: 50; height: 50
//            color: focus ? "red" : "lightgray"

//            KeyNavigation.left: bottomLeft
//            KeyNavigation.up: topRight
//        }
//    }
    Rectangle {
        width: 400; height: 200; color: "black"
        Rectangle {
            id: leftRect
            x: 25; y: 25; width: 150; height: 150
            color: focus ? "red" : "darkred"
            KeyNavigation.tab: rightRect
            focus: true
        }


        Rectangle {
            id: rightRect
            x: 225; y: 25; width: 150; height: 150
            color: focus ? "#00ff00" : "green"
            KeyNavigation.backtab: leftRect
        }
    }
}

