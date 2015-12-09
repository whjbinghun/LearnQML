import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    id: itmRctTable;
    anchors.fill: parent;

    property var mv_background_clr: "#d7e3bc";
    property var mv_alter_background_clr: "white";
    property var mv_heighlight_clr: "#e4f7d6";
    property var mv_header_background_clr: "#F0F0F0";
    property var normalG: Gradient {
        GradientStop { position: 0.0; color: "#c7d3ac"; }
        GradientStop { position: 1.0; color: "#F0F0F0"; }
    }
    property var hoverG: Gradient {
        GradientStop { position: 0.0; color: "white"; }
        GradientStop { position: 1.0; color: "#d7e3bc"; }
    }

    property var pressG: Gradient {
        GradientStop { position: 0.0; color: "#d7e3bc"; }
        GradientStop { position: 1.0; color: "white"; }
    }


    TableView {
        id: phoneTable;
        anchors.fill: parent;

        TableViewColumn {
            role: "name";
            title: "Name";
            width: 100;
            elideMode: Text.ElideRight;
            movable: false;
            horizontalAlignment: Text.AlignHCenter;
        }
        TableViewColumn {
            role: "cost";
            title: "Cost";
            width: 100;
            movable: false;
            horizontalAlignment: Text.AlignHCenter;
        }
        TableViewColumn {
            role: "manufacturer";
            title: "Manufacturer";
            width: 140;
            movable: false;
            horizontalAlignment: Text.AlignHCenter;
        }

        itemDelegate: Text {
            text: styleData.value;
            color: styleData.selected ? "red" : styleData.textColor;
            elide: styleData.elideMode;
        }

        rowDelegate: Rectangle {
            color: styleData.selected ? itmRctTable.mv_heighlight_clr :
                (styleData.alternate ? itmRctTable.mv_alter_background_clr
                                     : itmRctTable.mv_background_clr );
        }

        headerDelegate: Rectangle {
            implicitWidth: 10;
            implicitHeight: 24;
            gradient: styleData.pressed ? itmRctTable.pressG :
                (styleData.containsMouse ? itmRctTable.hoverG
                                     : itmRctTable.normalG );
            border.width: 1;
            border.color: "gray";
            Text {
                anchors.verticalCenter: parent.verticalCenter;
                anchors.left: parent.left;
                anchors.leftMargin: 4;
                anchors.right: parent.right;
                anchors.rightMargin: 4;
                text: styleData.value;
                color: styleData.pressed ? "red" : "blue";
                font.bold: true;
            }
        }

        model: ListModel {
            id: phoneModel;
            ListElement {
                name: "iPhone 5";
                cost: "4900";
                manufacturer: "Apple";
            }
            ListElement {
                name: "B199";
                cost: "1590";
                manufacturer: "HuaWei";
            }
            ListElement {
                name: "MI 2S";
                cost: "1999";
                manufacturer: "XiaoMi";
            }
        }

        focus: true;
    }
}

