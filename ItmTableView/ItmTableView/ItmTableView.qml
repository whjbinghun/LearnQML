import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1

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
            id: checkedColumn

            role: "checked"
            title: qsTr( "Checked" )
            width: 60;
            movable: false;
            horizontalAlignment: Text.AlignHCenter;
        }

        TableViewColumn
        {
            role: "ana_name";
            title: qsTr( "分析名称" )
            width: 140;
            movable: false;
            horizontalAlignment: Text.AlignHCenter;
        }

        TableViewColumn {
            role: "ana_color";
            title: "颜色";
            width: 100;
            movable: false;
            horizontalAlignment: Text.AlignHCenter;
        }

        TableViewColumn {
            role: "line_style";
            title: "线型";
            width: 140;
            movable: false;
            horizontalAlignment: Text.AlignHCenter;
        }

        itemDelegate: Item
        {
            CheckBox
            {
                anchors.centerIn: parent
                checked: styleData.value
                visible: isCheckColumn( styleData.column )
            }

            Text
            {
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                text: styleData.value
                color: isCheckColumn( styleData.column )? "black": styleData.value
                visible: !isCheckColumn( styleData.column )
            }

            function isCheckColumn( columnIndex )
            {
                return itmTableView.getColumn( columnIndex ) === checkedColumn
            }
        }

        focus: true;
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

