import QtQuick
import QtQuick.Controls

Button {
    text: " " + buttonText
    hoverEnabled: false
    opacity: down ? 0.7 : 1

    property string buttonText: ""
    property color buttonColor: "white"
    property string buttonSource: ""
    property color textColor: "white"
    property int fontPixelSize: 10
    property point iconSize: Qt.point(16, 16)
    property int iconMagin: 2

    contentItem: Label {
        width: parent.width
        height: parent.height
        text: parent.text
        color: parent.textColor
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    background: Rectangle {
        implicitHeight: parent.height
        implicitWidth: parent.width
        radius: parent.height / 6
        color: buttonColor
    }

    Image {
        width: iconSize.x
        height: iconSize.y
        x: iconMagin
        anchors.verticalCenter: parent.verticalCenter
        source: buttonSource
        fillMode: Image.PreserveAspectFit
    }

}
