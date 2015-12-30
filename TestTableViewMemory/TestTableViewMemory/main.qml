import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true

    width: 620;
    height: 466;


//    ItmDlgSet {
//        id: itmDlgSet;
//        visible: false;

//    }

    Column {
        anchors.fill:  parent;
        Button {
            onClicked: {
                itmDlgSet.visible = true;
            }
        }

        Button {
            onClicked: {
            }
        }

        Button {
            onClicked: {
            }
        }

        Button {
            onClicked: {
            }
        }

        Button {
            onClicked: {
            }
        }
    }
}

