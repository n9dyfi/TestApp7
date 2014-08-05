import QtQuick 1.1
import com.nokia.meego 1.0

Page {

    tools: commonTools

    Label {
        id:title
        text: "Please select an icon"
        font.pixelSize: 40
        anchors.left: parent.left; anchors.leftMargin: leftMargin
    }

    Rectangle {
        id: background
        anchors.top: title.bottom
        height: parent.height-title.height;
        width: parent.width
    }

    ListView {
        id: listView
        model: iconList
        delegate: listDelegate
        anchors.fill: background
        clip: true
    }

    Component {
        id: listDelegate
        Text {
            text: modelData
            font.pixelSize: 40
            color: "steelblue"
            anchors.left: parent.left; anchors.leftMargin: leftMargin
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    iconSelected=modelData
                    pageStack.push(iconPage)
                }
            }
        }
    }
}
