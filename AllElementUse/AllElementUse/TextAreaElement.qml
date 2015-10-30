import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

TextArea {
    id: textArea
    anchors.fill: parent
    wrapMode: TextEdit.WordWrap
    style: TextAreaStyle {
        backgroundColor: "black";
        textColor: "green";
        selectionColor: "steelblue";
        selectedTextColor: "#a00000";
    }
}

