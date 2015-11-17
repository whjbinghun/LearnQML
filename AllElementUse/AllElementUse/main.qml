import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Window {
    id: root

    visible: true
    width: 800
    height: 600



    MouseArea {
        anchors.fill: parent
        onClicked: {
            //Qt.quit();
        }
    }

    Text {
        wrapMode: Text.WordWrap;
        elide: Text.ElideRight;
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }
    //1
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
       opacity: 0.6
    }

    //2
    TextElement {
        id: keyView
        anchors.top: gradientGroup.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
    }
    //3
    ButtonElement {
        id: button_element;
        anchors.top: parent.top;
        anchors.topMargin: parent.height-button_element.height;
        anchors.left: parent.left;
        anchors.leftMargin: (parent.width - button_element.width)/2;
        text: "Quit";
        onClicked: {
            Qt.quit();
        }
    }

    Component {
        id: btnStyle;
        ButtonStyle {
            background: Rectangle {
                implicitWidth: 70;//背景的建议宽度
                implicitHeight: 25;//背景的建议高度
                border.width: btn_test.pressed ? 2: 1;
                border.color: (btn_test.hovered || btn_test.pressed )
                              ? "green" : "#888888";
            }
        }
    }

    ButtonStyleComponent {
        id: btn_com;
    }

    Button {
        id: btn_test
        text: "test";
        anchors.centerIn: parent
        iconSource: "/images/images/add.png";
        style: btnStyle;
    }

    //4
    BusyIndicator {
        id: busy;
        running: true;
        anchors.centerIn: parent;
        z: 2;
    }

    Text {
        id: stateLabe1;
        visible: false;
        anchors.centerIn: parent;
        z: 3;
    }

    ImageElement {
        id: image_ele;
        x: 100
        y: 100
        width: 200
        height:200
        onStatusChanged: {
            if( image_ele.status == Image.Loading ) {
                busy.running = true;
                stateLabe1.visible = false;
            } else if( image_ele.status == Image.Ready ) {
                busy.running = false;
            } else if( image_ele.status == Image.Error ) {
                busy.running = false;
                stateLabe1.visible = true;
                stateLabe1.text = "ERROR";
            }
        }
    }

    CanvasElement {
        anchors.left: parent.left
        anchors.leftMargin: parent.width/2
        width: 320
        height: 240
    }

    ItmComboBox {
        id: itmComboBox
        anchors.left: parent.left
        anchors.leftMargin: parent.width/2

    }

    Component.onCompleted: {
        image_ele.source = "/images/images/caption_logo.bmp";

        console.log( "visible children:",
                    gradientGroup.visibleChildren.length );
        console.log( "children", gradientGroup.children.length );
        for( var i = 0; i < gradientGroup.children.length; ++i ) {
            console.log( "child", i, " x = ", gradientGroup.children[i].x );
        }
    }
}

