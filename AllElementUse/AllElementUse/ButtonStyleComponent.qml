import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

/**
    不可用
*/
Component {
    id: btnStyle

    ButtonStyle {
        background: Rectangle {
            implicitWidth: 70;//背景的建议宽度
            implicitHeight: 25;//背景的建议高度
            border.width: parent.pressed ? 2: 1;
            border.color: (parent.hovered || parent.pressed )
                          ? "green" : "#888888";
        }
    }
}

