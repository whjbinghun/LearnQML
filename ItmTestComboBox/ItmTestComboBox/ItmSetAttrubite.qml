import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1

Item {
    id: itmSetAttrubite;

    property int n_spacing: 5;
    property int n_spacing_height: 10;

    property bool mb_all_preset_ana_hidden: false;
    property bool mb_full_show_max: false;
    property bool mb_full_show_min: false;
    property bool mb_show_matrix_temp: false;
    property bool mb_show_mouse_temp: false;
    property string str_temp_style_text: "最高温度";

    MouseArea{
        anchors.fill: parent;
        onClicked: {
            itmListTempStyle.visible = false;
        }
    }
    ColumnLayout {
        anchors.fill: parent;
        anchors.margins: n_spacing;
        spacing: n_spacing;

        CheckBox {
            id: itmBoxAllAnaShow;
            Layout.preferredHeight: n_spacing_height*2;
            text: "所有预置点均不显示分析";
            checked: false;
        }

        RowLayout {
            Layout.fillWidth: true;
            Layout.fillHeight: true;

            Item {
                Layout.fillHeight: true;
                Layout.preferredWidth: itmSetAttrubite.width*3/5;

                GroupBox {
                    id: gbAnaList;
                    anchors.fill: parent;
                    title: "分析列表";
                }
            }


            ColumnLayout {
                id: itmAttrubiteLayout;
                spacing: n_spacing_height;
                Layout.fillWidth: true;
                Layout.fillHeight: true;

                GroupBox {
                    id: itmBoxAnaOther;
                    Layout.fillWidth: true;
                    Layout.fillHeight: true;
                    Layout.preferredHeight: itmSetAttrubite.height*2/3;

                    title: "分析的其他属性";

                    ColumnLayout {
                        anchors.centerIn: parent;
                        RowLayout {
                            Layout.fillWidth: true;
                            Layout.fillHeight: true;

                            Label {
                                text: "显示文本类型:";
                            }

                            TextField {
                                id: itmTxtTemp;

                                text: "最高温度";
                                z:10;

                                MouseArea{
                                    anchors.fill: parent;
                                    onEntered: {
                                        itmListTempStyle.visible = true;
                                    }
                                }

                                ListView {
                                    id: itmListTempStyle;
                                    anchors.top: itmTxtTemp.bottom;
                                    anchors.left: itmTxtTemp.left;
                                    visible: false;
                                    width: itmTxtTemp.width - 2;
                                    height: 20*count;
                                    interactive: 20*count > height;
                                    z:10;
                                    model: ListModel{
                                        id: itmModelTempStyle;
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
                                    delegate: ItmListDelegate{ str_text: str_temp_style_text }

                                    MouseArea{
                                        anchors.fill: parent
                                        hoverEnabled: true
                                        onPositionChanged: {
                                            itmListTempStyle.currentIndex = mouse.y/20;
                                            if( itmListTempStyle.currentIndex >= 0
                                                    && itmListTempStyle.currentIndex < itmListTempStyle.count ){
                                                str_temp_style_text = itmModelTempStyle.get( itmListTempStyle.currentIndex ).content;
                                            }
                                        }
                                        onClicked: {
                                            itmTxtTemp.text = itmModelTempStyle.get( itmListTempStyle.currentIndex ).content;
                                            str_temp_style_text = itmTxtTemp.text;
                                            itmListTempStyle.visible = false;
                                            var v_current_row = 1;

                                            var vn_temp_style = temp_style_string_to_int( itmTxtTemp.text );
                                            itmListAnaAttribute.get( v_current_row ).temp_style = vn_temp_style;
                                            if( mb_chart_pic ) {
                                                irChartPic.list_ana_attribute[v_current_row].n_show_temp = vn_temp_style;
                                            } else {
                                                irPreview.list_ana_attribute[v_current_row].n_show_temp = vn_temp_style;
                                            }

                                            set_ana_attribute( v_current_row );
                                        }

                                        function temp_style_string_to_int( str_temp_style ) {
                                            var vn_temp_style = -1;
                                            if( str_temp_style === "最高温度" ) {
                                                vn_temp_style = 0;
                                            } else if( str_temp_style=== "最低温度" ) {
                                                vn_temp_style = 1;
                                            } else if( str_temp_style=== "平均温度" ) {
                                                vn_temp_style = 2;
                                            }

                                            return vn_temp_style;
                                        }
                                    }
                                }
                            }
                        }

                        CheckBox {
                            id: itmBoxShowMax;
                            checked: false;
                            text: "显示最高温度点";
                        }

                        CheckBox {
                            id: itmBoxShowMin;
                            checked: false;
                            text: "显示最低温度点";
                        }
                    }
                }

                GroupBox {
                    id: itmBoxFullScreen;

                    Layout.fillWidth: true;
                    Layout.fillHeight: true;
                    title: "全屏属性";

                    ColumnLayout {
                        spacing: n_spacing_height;

                        CheckBox {
                            id: itmBoxShowFullMax;
                            text: "显示全屏最高温度点";
                            checked: false;
                        }

                        CheckBox {
                            id: itmBoxShowFullMin;
                            text: "显示全屏最低温度点";
                            checked: false;
                        }

                        CheckBox {
                            id: itmBoxShowMartix;

                            checked: false;
                            visible: false;
                            text: "显示阵列分析温度";

                        }

                        CheckBox {
                            id: itmBoxShowMouseTemp;

                            checked: false;
                            visible: false;
                            text: "显示鼠标所在点温度";
                        }
                    }
                }
            }
        }


    }

    ListModel {
        id: itmListAnaAttribute;
    }

    Connections {
        target: itmBoxShowMax;

        onCheckedChanged: {
            var v_current_row = itmAnaList.get_current_row();
            itmListAnaAttribute.get( v_current_row ).show_max_temp = itmBoxShowMax.checked;

            set_ana_attribute( v_current_row );
        }
    }

    Connections {
        target: itmBoxShowMin;

        onCheckedChanged: {
            var v_current_row = itmAnaList.get_current_row();
            itmListAnaAttribute.get( v_current_row ).show_min_temp = itmBoxShowMin.checked;
            if( mb_chart_pic ) {
                irChartPic.list_ana_attribute[v_current_row].b_show_min_temp = itmBoxShowMin.checked;
            } else {
                irPreview.list_ana_attribute[v_current_row].b_show_min_temp = itmBoxShowMin.checked;
            }

            set_ana_attribute( v_current_row );
        }
    }

    Connections {
        target: itmBoxAllAnaShow;

        onCheckedChanged: {
            itmAnaList.enabled = !itmBoxAllAnaShow.checked;
            if( itmBoxAllAnaShow.checked ) {
                itmBoxAnaOther.enabled = !itmBoxAllAnaShow.checked;
            } else {
                if( itmAnaList.get_current_row() >= 0 ) {
                    itmBoxAnaOther.enabled = true;
                }
            }

            set_full_show();
        }
    }

    Connections {
        target: itmBoxShowFullMax;

        onCheckedChanged: {
            set_full_show();
        }
    }

    Connections {
       target: itmBoxShowFullMin;

       onCheckedChanged: {
           set_full_show();
       }

    }

    Connections {
       target: itmBoxShowMartix;

       onCheckedChanged: {
           set_full_show();
       }

    }


    Connections {
       target: itmBoxShowMouseTemp;

       onCheckedChanged: {
           set_full_show();
       }

    }

    function set_ana_attribute( n_row ) {
        if( mb_chart_pic ) {
            irChartPic.set_ana_attribute( itmListAnaAttribute.get( n_row ).sign_id
                , itmListAnaAttribute.get( n_row ).ana_clr
                , itmListAnaAttribute.get( n_row ).line_style
                , itmListAnaAttribute.get( n_row ).temp_style
                , itmListAnaAttribute.get( n_row ).show_max_temp
                , itmListAnaAttribute.get( n_row ).show_min_temp
                , itmListAnaAttribute.get( n_row ).show_ana );
        } else {
            irPreview.set_ana_attribute( itmListAnaAttribute.get( n_row ).sign_id
                , itmListAnaAttribute.get( n_row ).ana_clr
                , itmListAnaAttribute.get( n_row ).line_style
                , itmListAnaAttribute.get( n_row ).temp_style
                , itmListAnaAttribute.get( n_row ).show_max_temp
                , itmListAnaAttribute.get( n_row ).show_min_temp
                , itmListAnaAttribute.get( n_row ).show_ana );
        }
    }

    function set_full_show() {
        if( mb_chart_pic ) {
            irChartPic.set_full_show( itmBoxAllAnaShow.checked
                 , itmBoxShowFullMax.checked, itmBoxShowFullMin.checked
                 , itmBoxShowMartix.checked, itmBoxShowMouseTemp.checked );
        } else {
            irPreview.set_full_show( itmBoxAllAnaShow.checked
                , itmBoxShowFullMax.checked, itmBoxShowFullMin.checked
                , mb_show_matrix_temp, mb_show_mouse_temp );
        }
    }

    function temp_style_int_to_string( n_temp_style ) {
        var vs_temp_style = "";
        if( n_temp_style === 0 ) {
            vs_temp_style = "最高温度";
        } else if( n_temp_style === 1 ) {
            vs_temp_style = "最低温度";
        } else if( n_temp_style === 2 ) {
            vs_temp_style = "平均温度";
        }

        return vs_temp_style;
    }
}

