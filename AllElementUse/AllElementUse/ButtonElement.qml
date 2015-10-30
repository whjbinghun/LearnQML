import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Button {
    id: buttonElement;
    //checkable: true;
    //iconName: "add.png";
    iconSource: "/images/images/add.png";

    style: ButtonStyle {
        background: Rectangle {
            implicitWidth: 70;//背景的建议宽度
            implicitHeight: 25;//背景的建议高度
            border.width: buttonElement.pressed ? 2: 1;
            border.color: (buttonElement.hovered || buttonElement.pressed )
                          ? "green" : "#888888";
        }
    }

}

