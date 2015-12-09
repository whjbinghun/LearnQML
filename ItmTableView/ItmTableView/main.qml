import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1

Window {
    visible: true

    width: 500;
    height: 600;

    ItmTableView {
        id: itmRctTable;

        width: 500;
        height: 500;
    }

    Button {
        id: itmBtnGet;
        anchors.left: parent.left;
        anchors.top: parent.top;
        anchors.topMargin: 500;
        text: "获取";
        onClicked: {
            var v_row = itmRctTable.get_ana_attrubite();
            console.log( "itmBtnGet row", v_row );
        }
    }

    Button {
        id: itmBtnAdd;
        anchors.left: itmBtnGet.right;
        anchors.top: itmBtnGet.top;
        text: "增加";

        onClicked: {
            itmRctTable.add_ana_attrubite();
        }
    }

    Button {
        id: itmBtnModify;
        anchors.left: itmBtnAdd.right;
        anchors.top: itmBtnGet.top;
        text: "修改";
        onClicked: {
            itmRctTable.modify_ana_attrubite();
        }
    }

    Button {
        id: itmBtnDel;
        anchors.left: itmBtnModify.right;
        anchors.top: itmBtnGet.top;
        text: "删除";
        onClicked: {
            itmRctTable.del_ana_attrubite();
        }
    }

    Button {
        id: itmBtnClear;
        anchors.left: itmBtnDel.right;
        anchors.top: itmBtnGet.top;
        text: "清除";
        onClicked: {
            itmRctTable.clear_ana_attrubite();
        }
    }
}

