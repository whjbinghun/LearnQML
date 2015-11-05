import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true
    id: root
    title: "美盛红外在线监控系统-实时预览客户端"
    x: 0
    y: 0
    width: 1920
    height: 1080
    minimumWidth: 1024
    minimumHeight: 768

    property int n_title_bar_with: width
    property int n_title_bar_height: 50
    property int n_spacing: 10
    //巡检宽度：红外图像宽度：可见光图像宽度 = 1:4:5
    //巡检高度：分析曲线高度：实时预览高度 = 4:2:1
    property int n_simple_width: (width - 2*n_spacing)/10
    property int n_simple_height: (height-n_title_bar_height-n_spacing)/7
    property int n_area_width: n_simple_width
    property int n_area_height: 4*n_simple_height
    property int n_ir_preview_width: 4*n_simple_width
    property int n_vi_preview_width: width - 2*n_spacing-5*n_simple_width
    property int n_charttrend_width: width - 2*n_spacing
    property int n_charttrend_height: 2*n_simple_height
    property int n_real_frame_height: height-n_title_bar_height-n_spacing-6*n_simple_height

    Row {
        id: itmRow

        anchors.left: parent.left
        anchors.leftMargin: n_spacing
        anchors.top: parent.top
        anchors.topMargin: n_title_bar_height

        ItmArea {
            id: itmArea
            width: n_area_width
            height: n_area_height
        }

        ItmIrPreview {
            id: itmIrPreview
            height: n_area_height;
            width: n_ir_preview_width;
        }

        ItmViPreview {
            id: itmViPreview
            height: n_area_height;
            width: n_vi_preview_width;
        }
    }

    ItmChartTrend {
        id: itmChartTrend
        anchors.left: parent.left
        anchors.leftMargin: n_spacing
        anchors.top: itmRow.bottom

        width: n_charttrend_width
        height: n_charttrend_height
    }

    ItmRealFrame {
        id: itmRealFrame
        anchors.left: parent.left
        anchors.leftMargin: n_spacing
        anchors.top: itmChartTrend.bottom
        width: n_charttrend_width
        height: n_real_frame_height
    }

    onWidthChanged: {
        modify_all_item_width();
        update();
    }

    onHeightChanged: {
        modify_all_item_height();
        update();
    }

    function modify_all_item_width() {
        n_simple_width = (width-2*n_spacing)/10
        n_area_width = n_simple_width
        n_ir_preview_width = 4*n_simple_width
        n_vi_preview_width = width - 2*n_spacing-5*n_simple_width
        n_charttrend_width = width - 2*n_spacing
        console.log( "modify_all_item_width:", width );
    }

    function modify_all_item_height() {
        n_simple_height = (height-n_title_bar_height-n_spacing)/7
        n_area_height = 4*n_simple_height
        n_charttrend_height = 2*n_simple_height
        n_real_frame_height = height-n_title_bar_height-n_spacing-6*n_simple_height
        console.log( "modify_all_item_height:", height );
    }
}

