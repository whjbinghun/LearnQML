import QtQuick 2.0
import QtQuick.Controls 1.4

ComboBox {
    width: 100
    //model: ["TV", "CDPlayer", "Set Top Box", "Router"]
    editable: true
    model: ListModel {
        ListElement { text: "Banana"; color: "Yellow" }
    }
    textRole: "color"
}

