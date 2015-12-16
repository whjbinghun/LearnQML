import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    id: itmComboBox;

    property string str_combo_text: "最高温度";
    property Component comListView: itmListView;

    TextField{
        id: itmTxtField;
        anchors.fill: parent;
        text: str_combo_text;

        MouseArea{
            anchors.fill: parent;
            onEntered: {
                itmListView.visible = true;
            }
        }
    }

    ListView {
        id: itmListView;
        anchors.top: itmTxtField.bottom;
        anchors.left: itmTxtField.left;
        visible: false;
        width: itmTxtField.width - 2;
        height: 20*count;
        interactive: 20*count > height;
        model: ListModel{
            id: itmListModel;
            ListElement {
                content: "最高温度";
            }

            ListElement {
                content: "最低温度";
            }

            ListElement {
                content: "平均温度";
            }

        }
        delegate: ItmListDelegate{ str_text: str_combo_text }

        MouseArea{
            anchors.fill: parent;
            hoverEnabled: true;
            onPositionChanged: {
                itmListView.currentIndex = mouse.y/20;
                if( itmListView.currentIndex >= 0 && itmListView.currentIndex < itmListView.count ){
                    str_combo_text = itmListModel.get( itmListView.currentIndex ).content;
                }
            }
            onClicked: {
                itmTxtField.text = itmListModel.get( itmListView.currentIndex ).content;
                itmListView.visible = false;
            }
        }
    }
}

