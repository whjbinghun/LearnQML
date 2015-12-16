import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true

    property var obj_wnd: null;
    property var v_wnd_array: new Array();

    MouseArea {
        anchors.fill: parent
        onClicked: {
            var component = Qt.createComponent( "ItmWndCreat.qml" );
            //var obj = null;
            console.log( "ItmWndCreat.qml", " component.status=", component.status );
            if ( component.status === Component.Ready ) {
                obj_wnd = component.createObject( parent, {"x": 10, "y": 10} );
            }
        }
    }

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }

    Connections {
        target: obj_wnd;

        onVisibleChanged: {
            obj_wnd.wnd_destroy();
        }
    }


}

