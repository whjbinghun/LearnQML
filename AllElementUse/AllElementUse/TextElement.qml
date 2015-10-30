import QtQuick 2.0

Text {
    id: textElement;
    font.bold: true
    font.pixelSize: 24
    font.underline: true;
    wrapMode: Text.WordWrap;
    text: qsTr( "text" );
    style: Text.Outline;
    styleColor: "#AAAAAA";
}

