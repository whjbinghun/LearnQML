import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1

GroupBox {
    id: itmParam;
    title: "测温参数";

    property int mn_simple_height: 20
    property int mn_row_spacing: 10;
    property int mn_simple_width:  (itmParam.width - mn_row_spacing*5)/4;

    Grid {
        id: itmGridLayout;

        rows: 2;
        columns: 4;
        anchors.left: parent.left;
        //anchors.leftMargin: mn_simple_height;
        anchors.top: parent.top;
        anchors.topMargin: mn_row_spacing;
        rowSpacing: mn_row_spacing;
        columnSpacing: mn_row_spacing;


        Label {
            text: "辐射率(0~1):";
            width: mn_simple_width;
            height: mn_simple_height;

        }

        SpinBox {
            id: itmBoxEmis;

            width: mn_simple_width;
            height: mn_simple_height;
        }

        Label {
            text: "相对湿度(%):";
            width: mn_simple_width;
            height: mn_simple_height;
        }

        SpinBox {
            id: itmBoxHum;

            width: mn_simple_width;
            height: mn_simple_height;
        }

        Label {
            text: "距离(米):";
            width: mn_simple_width;
            height: mn_simple_height;
        }

        TextField {
            id: itmTxtDist;

            text: "0";
            width: mn_simple_width;
            height: mn_simple_height;
        }

        Label {
            text: "环境温度(°C):";
            width: mn_simple_width;
            height: mn_simple_height;
        }

        TextField {
            id: itmTxtEnvTemp;

            text: "0.0";
            width: mn_simple_width;
            height: mn_simple_height;
        }
    }

    onWidthChanged: {
        mn_simple_width = (itmParam.width - itmGridLayout.rowSpacing*5)/4;
        console.log( "onWidthChanged", mn_simple_width );
    }

    onHeightChanged: {
        //mn_simple_height = (itmTempParam.height - itmGridLayout.columnSpacing*3 )/2;

        console.log( "onWidthChanged", mn_simple_height );
    }

    function set_temp_param( v_emis, v_dist, v_env_temp, v_hum ) {
//        itmBoxEmis.value = v_emis;
//        itmTxtDist.text = v_dist;
//        itmTxtEnvTemp.text = v_env_temp;
//        itmBoxHum.value = v_hum;
        console.log( "set_temp_param", itmBoxEmis.value, itmTxtDist.text
                    , itmTxtEnvTemp.text, itmBoxHum.value );
    }

}

