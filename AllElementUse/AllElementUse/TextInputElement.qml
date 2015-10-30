import QtQuick 2.0

TextInput {
    width: 120
    height: 30
    font.pixelSize: 20;
    anchors.centerIn: parent;
    //validator: IntValidator{ top: 15; bottom: 6; }

    validator: RegExpValidator {
        regExp: new RegExp( "(2[0-5]{2}|2[0-4][0-9]|1?[0-9]{1,2})
        \\.(2[0-5]{2}|2[0-4][0-9]|1?[0-9]{1,2})
        \\.(2[0-5]{2}|2[0-4][0-9]|1?[0-9]{1,2})
        \\.(2[0-5]{2}|2[0-4][0-9]|1?[0-9]{1,2})" );
    }
    inputMask: "000.000.000.000;_";

    focus: true;
}

