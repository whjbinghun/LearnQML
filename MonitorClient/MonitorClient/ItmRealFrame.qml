import QtQuick 2.5
import QtQuick.Controls 1.4

Rectangle {
    id: itmRealFrame
    width: 1900
    height: 150

    border.width: 1
    border.color: "black"
    property int spacing_width: 5
    property int spacing_height: 0
    property int n_text_height: height/6
    property int n_group_width: (width - spacing_width*2)/5;
    property int n_group_height: height;
    Button {
        id: itmBtnLeft
        z: 10
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        text: "左边"
        onClicked: {
            var b_is_move_left = is_move_left();
            if( b_is_move_left ) {
                itmGroupFrame_1.x = itmGroupFrame_1.x -
                        itmGroupFrame_1.width - spacing_width;
            }
        }
    }

    Button {
        id: itmBtnRight
        z: 10
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        text: "右边"
        onClicked: {
            var b_is_move_right = is_move_right();
            if( b_is_move_right ) {
                itmGroupFrame_1.x = itmGroupFrame_1.x +
                        itmGroupFrame_1.width + spacing_width;
                console.log( "group_preview:", itmGroupFrame_1.x,
                            itmGroupFrame_1.width );
            }
        }
    }

    Item {
        id: itmRowGroupFrame
        ItmGroupFrame {
            id: itmGroupFrame_1
            x: spacing_width

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

        ItmGroupFrame {
            id: itmGroupFrame_2
            anchors.left: itmGroupFrame_1.right
            anchors.leftMargin: spacing_width
            anchors.top: itmGroupFrame_1.top
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

        ItmGroupFrame {
            id: itmGroupFrame_3
            anchors.left: itmGroupFrame_2.right
            anchors.leftMargin: spacing_width
            anchors.top: itmGroupFrame_2.top
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

        ItmGroupFrame {
            id: itmGroupFrame_4
            anchors.left: itmGroupFrame_3.right
            anchors.leftMargin: spacing_width
            anchors.top: itmGroupFrame_3.top
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

        ItmGroupFrame {
            id: itmGroupFrame_5
            anchors.left: itmGroupFrame_4.right
            anchors.leftMargin: spacing_width
            anchors.top: itmGroupFrame_4.top
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

        ItmGroupFrame {
            id: itmGroupFrame_6
            anchors.left: itmGroupFrame_5.right
            anchors.leftMargin: spacing_width
            anchors.top: itmGroupFrame_5.top
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

        ItmGroupFrame {
            id: itmGroupFrame_7
            anchors.left: itmGroupFrame_6.right
            anchors.leftMargin: spacing_width
            anchors.top: itmGroupFrame_6.top
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
        var v_length = itmRowGroupFrame.children.length;
        var child_right = itmRowGroupFrame.children[v_length-1].x
                + itmRowGroupFrame.children[v_length-1].width;
        var n_right = itmRealFrame.width;
        var b_is_move_left = child_right < n_right ? false:true;
        console.log( "is_move_left", child_right, n_right, b_is_move_left );
        return b_is_move_left;
    }

    function is_move_right() {
        var v_length = itmRowGroupFrame.children.length;
        var child_left = itmRowGroupFrame.children[0].x;
        var n_left = itmRealFrame.x;
        var b_is_move_right = child_left < n_left ? true:false;
        console.log( "is_move_left", child_left, n_left, b_is_move_right );
        return b_is_move_right;
    }

    function clear_group_color() {
        var n_length = itmRowGroupFrame.children.length;
        for( var i = 0; i< n_length; ++i ) {
            itmRowGroupFrame.children[i].color = "white";
        }
    }

    onWidthChanged: {
        n_group_width = (width - spacing_width*2)/5;

        var n_length = itmRowGroupFrame.children.length;
        for( var i = 0; i< n_length; ++i ) {
            itmRowGroupFrame.children[i].width = n_group_width;
        }
    }

    onHeightChanged: {
        n_group_height = height;
        n_text_height = n_group_height/6;
        var n_length = itmRowGroupFrame.children.length;
        for( var i = 0; i< n_length; ++i ) {
            itmRowGroupFrame.children[i].height = n_group_height;
        }
    }
}

