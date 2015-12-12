import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4

Rectangle {
    id: itmRctTable;
    anchors.fill: parent;


    ListModel
    {
        id: tableModel

        ListElement
        {
            checked: false
            ana_name: "blue"
            ana_color: "blue";
            line_style: "1";
        }

        ListElement
        {
            checked: true
            ana_name: "green"
            ana_color: "green";
            line_style: "2";
        }

        ListElement
        {
            checked: false
            ana_name: "red"
            ana_color: "red";
            line_style: "3";
        }
    }

    TableView
    {
        id: itmTableView
        anchors.fill: parent
        model: tableModel

        TableViewColumn
        {
            id: checkedColumn;

            role: "checked"
            title: qsTr( "Checked" )
            width: 60;
            movable: false;
            horizontalAlignment: Text.AlignHCenter;
        }

        TableViewColumn
        {
            id: itmAnaName;

            role: "ana_name";
            title: qsTr( "分析名称" )
            width: 140;
            movable: false;
            horizontalAlignment: Text.AlignHCenter;
        }

        TableViewColumn {
            id: itmAnaColor;

            role: "ana_color";
            title: "颜色";
            width: 75;
            movable: false;
            horizontalAlignment: Text.AlignHCenter;
        }

        TableViewColumn {
            id: itmLineStyle;

            role: "line_style";
            title: "线型";
            width: 140;
            movable: false;
            horizontalAlignment: Text.AlignHCenter;
        }

        itemDelegate: Item
        {
            id: itmDelegate;

            CheckBox
            {
                anchors.centerIn: parent
                anchors.verticalCenter: parent.verticalCenter
                checked: styleData.value
                visible: itmDelegate.isCheckColumn( styleData.column )
            }

            Text
            {
                id: itmTxtName;
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                text: styleData.value
                color: itmDelegate.isCheckColumn( styleData.column )? "black": styleData.value
                visible: itmDelegate.is_ana_name( styleData.column )
            }

            Rectangle {
                id: itmRctAnaColor;

                anchors.centerIn: parent
                width: 70;
                height: 12;
                color: itmDelegate.is_ana_color_column( styleData.column )?styleData.value:"black";
                visible: itmDelegate.is_ana_color_column( styleData.column );
            }

            function isCheckColumn( columnIndex )
            {
                return itmTableView.getColumn( columnIndex ) === checkedColumn;
            }

            function is_ana_name( columnIndex ) {
                return itmTableView.getColumn( columnIndex ) === itmAnaName;
            }

            function is_ana_color_column( columnIndex ) {
                var v_show = (itmTableView.getColumn( columnIndex ) === itmAnaColor);
                return v_show;
            }
        }

        focus: true;

        onDoubleClicked: {
            var v_row = tableModel.get( row );
            itmDlgColor.setColor( v_row.ana_color );
            itmDlgColor.visible = true;

        }
    }

    ColorDialog {
        id: itmDlgColor;
        visible: false;
        title: "分析颜色";

        onSelectionAccepted: {
            itmTableView.model.setProperty( itmTableView.currentRow
                                           , "ana_color", itmDlgColor.currentColor.toString() );
        }
    }

    function get_ana_attrubite() {
        var v_current_row = itmTableView.model.get( itmTableView.currentRow );
        return v_current_row;
    }

    function add_ana_attrubite( ) {
        itmTableView.model.append( { "checked":true, "ana_name": "77777", "ana_color":"black", "line_style": "77" } );
    }

    function modify_ana_attrubite() {
        itmTableView.model.set( 0, { "checked":true, "ana_name": "333333", "ana_color":"black", "line_style": "66" } );
    }

    function del_ana_attrubite() {
        itmTableView.model.remove( 0 );
    }

    function clear_ana_attrubite() {
        itmTableView.model.clear();
    }
}

