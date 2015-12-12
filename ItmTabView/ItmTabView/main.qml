import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2

Window {
    visible: true


    property int mn_spacing: 10;

    TabView {

        anchors.fill: parent;
        Tab {
            id: tab_1;
            title: "测温参数";
            anchors.left: parent.left;
            anchors.top: parent.top;
            width: parent.width;
            height: parent.height;

            ItmParam {
                id: itmParam;

                anchors.left: parent.left;
                anchors.leftMargin: mn_spacing;
                anchors.top: parent.top;
                anchors.topMargin: mn_spacing;
                width: parent.width - mn_spacing*2;
                height: parent.height - mn_spacing*2;

            }
            function count_num() {
                console.log( "onClicked", itmParam.mn_simple_height );
            }
        }

        Tab {
            title: "分析属性"
            anchors.left: parent.left;
            anchors.top: parent.top;
            width: parent.width;
            height: parent.height;
        }
    }

    Button {
        id: itmBtn;
        onClicked: {
            tab_1.count_num();

        }
    }
}

