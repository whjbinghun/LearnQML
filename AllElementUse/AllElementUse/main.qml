import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    id: root

    visible: true
    width: 360
    height: 360



    MouseArea {
        anchors.fill: parent
        onClicked: {
            //Qt.quit();
        }
    }

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }

    Item {
        id: gradientGroup
        RectElement {
            id: rect_element
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 10
            y: 10
        }

        RectElement {
            x: rect_element.x + rect_element.width + 10
            y: rect_element.y
            rotation: 90
        }
    }

    RectElement {
        focus: true;
        Keys.enabled: true
        Keys.onEscapePressed: Qt.quit();
        Keys.onBackPressed: Qt.quit();
        Keys.onPressed: {
            switch( event.key ) {
            case Qt.Key_0:
            case Qt.Key_1:
            case Qt.Key_2:
            case Qt.Key_3:
            case Qt.Key_4:
            case Qt.Key_5:
            case Qt.Key_6:
            case Qt.Key_7:
            case Qt.Key_8:
            case Qt.Key_9:
                event.accepted = true;
                keyView.text = event.key - Qt.Key_0;
                break;
            }
        }
    }

    Text {
        id: keyView
        anchors.top: gradientGroup.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        font.bold: true
        font.pixelSize: 24
        text: qsTr( "text" );
    }


    Component.onCompleted: {
        console.log( "visible children:",
                    gradientGroup.visibleChildren.length );
        console.log( "children", gradientGroup.children.length );
        for( var i = 0; i < gradientGroup.children.length; ++i ) {
            console.log( "child", i, " x = ", gradientGroup.children[i].x );
        }
    }
}

