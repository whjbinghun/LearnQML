import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1

Rectangle {
    width: 360;
    height: 100;
    color: "#EEEEEE";

    Component {
        id: itmPhoneDelegate;
        Item {
            id: itmWrapper;
            width: parent.width;
            height: 90;

            MouseArea {
                anchors.fill: parent;
                onClicked: itmWrapper.ListView.view.currentIndex = index;
            }

            ColumnLayout {
                anchors.left: parent.left;
                anchors.verticalCenter: parent.verticalCenter;
                spacing: 8;

                Text {
                    id: itmTextColl;
                    text: name;
                    color: itmWrapper.ListView.isCurrentItem ? "red": "black";
                    font.pixelSize: itmWrapper.ListView.isCurrentItem ? 22:18;
                    Layout.preferredWidth: 120;
                }

                Text {
                    text: cost;
                    color: itmWrapper.ListView.isCurrentItem ? "red": "black";
                    font.pixelSize: itmWrapper.ListView.isCurrentItem ? 22:18;
                    Layout.preferredWidth: 80;
                }

                Text {
                    text: manufacturer;
                    color: itmWrapper.ListView.isCurrentItem ? "red": "black";
                    font.pixelSize: itmWrapper.ListView.isCurrentItem ? 22:18;
                    Layout.fillWidth: true;
                }
            }
        }
    }

    ListView {
        id: itmListView;
        anchors.fill: parent;
        delegate: itmPhoneDelegate;
        orientation: ListView.Horizontal;

        model: ListModel {
            id: itmPhoneModel;
            ListElement {
                name: "iPhone 3Gs";
                cost: "1800";
                manufacturer: "Apple";
            }
            ListElement {
                name: "iPhone 3Gs";
                cost: "1800";
                manufacturer: "Apple";
            }
            ListElement {
                name: "iPhone 3Gs";
                cost: "1800";
                manufacturer: "Apple";
            }
            ListElement {
                name: "iPhone 3Gs";
                cost: "1800";
                manufacturer: "Apple";
            }
            ListElement {
                name: "iPhone 3Gs";
                cost: "1800";
                manufacturer: "Apple";
            }

        }

        focus: true;
        highlight:  Rectangle {
            color: "lightblue";
        }
    }
}

