import QtQuick 2.0

Rectangle {
    id: itmContainer;
    property string str_text: "";
    width: ListView.view.width;
    height: 20;

    gradient: Gradient {
        GradientStop {
            position: 0
            Behavior on color {ColorAnimation { duration: 100 }}
            color: str_text == itmText.text ? "#BEBEBE" : "#eee";
        }
        GradientStop {
            position: 1
            Behavior on color {ColorAnimation { duration: 100 }}
            color: str_text == itmText.text ? "#BEBEBE" : "#fff";
        }
    }
    Item {
        id: itmBtn;
        anchors.top: parent.top;
        anchors.left: parent.left;
        anchors.bottom: parent.bottom;
        anchors.right:parent.right;
        height: implicitHeight;
        width: itmText.width + 20;
        Text {
            id: itmText;
            anchors.left: parent.left;
            anchors.leftMargin: 10;
            anchors.right: parent.right;
            anchors.rightMargin: 10;
            text: content;
            color: "black"
            font.pixelSize: 12;
          //  wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            styleColor: "white";
        //    style: Text.Raised
        }
//        onFocusChanged: {
//            if( focus ){
//                console.log("------------------>");
//                color = "#000"
//            }
//        }
    }
}

