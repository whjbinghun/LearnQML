import QtQuick 2.5
import QtQuick.Controls 1.4

Rectangle {
    id: realPreview
    width: 1920
    height: 150
    border.width: 1
    property int spacing_width: 10
    property int spacing_height: 5
    Button {
        id: btn_left
        z: 10
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        text: "左边"
        onClicked: {
            var b_is_move_left = realPreview.is_move_left();
            if( b_is_move_left ) {
                group_preview_1.x = group_preview_1.x -
                        group_preview_1.width - spacing_width;
            }
        }
    }

    Button {
        id: btn_right
        z: 10
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        text: "右边"
        onClicked: {
            var b_is_move_right = is_move_right();
            if( b_is_move_right ) {
                group_preview_1.x = group_preview_1.x +
                        group_preview_1.width + spacing_width;
                console.log( "group_preview:", group_preview_1.x,
                            group_preview_1.width );
            }
        }
    }

    Item {
        id: row_group_preview
        GroupPreview {
            id: group_preview_1
//            anchors.left: parent.left
//            anchors.leftMargin: 10
//            anchors.top: parent.top
//            anchors.topMargin: 10
            x: spacing_width
            y: spacing_height
            z: 1
            MouseArea {
                onClicked: {

                }
            }
        }

        GroupPreview {
            id: group_preview_2
            anchors.left: group_preview_1.right
            anchors.leftMargin: 10
            anchors.top: group_preview_1.top
            z: 1

        }

        GroupPreview {
            id: group_preview_3
            anchors.left: group_preview_2.right
            anchors.leftMargin: 10
            anchors.top: group_preview_2.top
            z: 1

        }

        GroupPreview {
            id: group_preview_4
            anchors.left: group_preview_3.right
            anchors.leftMargin: 10
            anchors.top: group_preview_3.top
            z: 1

        }

        GroupPreview {
            id: group_preview_5
            anchors.left: group_preview_4.right
            anchors.leftMargin: 10
            anchors.top: group_preview_4.top
            z: 1

        }

        GroupPreview {
            id: group_preview_6
            anchors.left: group_preview_5.right
            anchors.leftMargin: 10
            anchors.top: group_preview_5.top
            z: 1

        }

        GroupPreview {
            id: group_preview_7
            anchors.left: group_preview_6.right
            anchors.leftMargin: 10
            anchors.top: group_preview_6.top
            z: 1

        }
    }

    function is_move_left() {
        var v_length = row_group_preview.children.length;
        var child_right = row_group_preview.children[v_length-1].x
                + row_group_preview.children[v_length-1].width;
        var n_right = realPreview.width;
        var b_is_move_left = child_right < n_right ? false:true;
        console.log( "is_move_left", child_right, n_right, b_is_move_left );
        return b_is_move_left;
    }

    function is_move_right() {
        var v_length = row_group_preview.children.length;
        var child_left = row_group_preview.children[0].x;
        var n_left = realPreview.x;
        var b_is_move_right = child_left < n_left ? true:false;
        console.log( "is_move_left", child_left, n_left, b_is_move_right );
        return b_is_move_right;
    }

}

