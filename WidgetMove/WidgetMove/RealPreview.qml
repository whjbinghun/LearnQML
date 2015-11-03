import QtQuick 2.5
import QtQuick.Controls 1.4

Rectangle {
    id: realPreview
    width: 1920
    height: 150
    border.width: 1
    property int spacing_width: 5
    property int spacing_height: 0
    property int n_text_height: 28

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
            x: spacing_width
            z: 1

            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: {
                    clear_group_color();
                    if ( mouse.button == Qt.LeftButton )
                        parent.color = "#3D92F6";
                    else
                        parent.color = 'white';
                }
            }

            Text {
                id: text_group_name
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: parent.height - n_text_height;
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                text: "88-云台-老残测器-1#";
                horizontalAlignment: Text.AlignHCenter;
                verticalAlignment: Text.AlignVCenter;
            }
        }

        GroupPreview {
            id: group_preview_2
            anchors.left: group_preview_1.right
            anchors.leftMargin: spacing_width
            anchors.top: group_preview_1.top
            z: 1
            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: {
                    clear_group_color();
                    if ( mouse.button == Qt.LeftButton )
                        parent.color = "#3D92F6";
                    else
                        parent.color = 'white';
                }
            }
            Text {
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: parent.height - n_text_height;
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                text: "88-云台-老残测器-2#";
                horizontalAlignment: Text.AlignHCenter;
                verticalAlignment: Text.AlignVCenter;
            }
        }

        GroupPreview {
            id: group_preview_3
            anchors.left: group_preview_2.right
            anchors.leftMargin: spacing_width
            anchors.top: group_preview_2.top
            z: 1
            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: {
                    clear_group_color();
                    if ( mouse.button == Qt.LeftButton )
                        parent.color = "#3D92F6";
                    else
                        parent.color = 'white';
                }
            }
            Text {
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: parent.height - n_text_height;
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                text: "88-云台-老残测器-3#";
                horizontalAlignment: Text.AlignHCenter;
                verticalAlignment: Text.AlignVCenter;
            }
        }

        GroupPreview {
            id: group_preview_4
            anchors.left: group_preview_3.right
            anchors.leftMargin: spacing_width
            anchors.top: group_preview_3.top
            z: 1
            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: {
                    clear_group_color();
                    if ( mouse.button == Qt.LeftButton )
                        parent.color = "#3D92F6";
                    else
                        parent.color = 'white';
                }
            }
            Text {
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: parent.height - n_text_height;
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                text: "88-云台-老残测器-4#";
                horizontalAlignment: Text.AlignHCenter;
                verticalAlignment: Text.AlignVCenter;
            }
        }

        GroupPreview {
            id: group_preview_5
            anchors.left: group_preview_4.right
            anchors.leftMargin: spacing_width
            anchors.top: group_preview_4.top
            z: 1
            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: {
                    clear_group_color();
                    if ( mouse.button == Qt.LeftButton )
                        parent.color = "#3D92F6";
                    else
                        parent.color = 'white';
                }
            }
            Text {
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: parent.height - n_text_height;
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                text: "88-云台-老残测器-5#";
                horizontalAlignment: Text.AlignHCenter;
                verticalAlignment: Text.AlignVCenter;
            }
        }

        GroupPreview {
            id: group_preview_6
            anchors.left: group_preview_5.right
            anchors.leftMargin: spacing_width
            anchors.top: group_preview_5.top
            z: 1
            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: {
                    clear_group_color();
                    if ( mouse.button == Qt.LeftButton )
                        parent.color = "#3D92F6";
                    else
                        parent.color = 'white';
                }
            }
            Text {
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: parent.height - n_text_height;
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                text: "88-云台-老残测器-6#";
                horizontalAlignment: Text.AlignHCenter;
                verticalAlignment: Text.AlignVCenter;
            }
        }

        GroupPreview {
            id: group_preview_7
            anchors.left: group_preview_6.right
            anchors.leftMargin: spacing_width
            anchors.top: group_preview_6.top
            z: 1
            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                onClicked: {
                    clear_group_color();
                    if ( mouse.button == Qt.LeftButton )
                        parent.color = "#3D92F6";
                    else
                        parent.color = 'white';
                }
            }
            Text {
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: parent.height - n_text_height;
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                text: "88-云台-老残测器-7#";
                horizontalAlignment: Text.AlignHCenter;
                verticalAlignment: Text.AlignVCenter;
            }
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

    function clear_group_color() {
        var n_length = row_group_preview.children.length;
        for( var i = 0; i< n_length; ++i ) {
            row_group_preview.children[i].color = "white";
        }
    }
}

