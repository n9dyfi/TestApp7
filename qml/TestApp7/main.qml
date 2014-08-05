import QtQuick 1.1
import com.nokia.meego 1.0

PageStackWindow {
    id: appWindow

    property string iconSelected: iconDefault
    property int leftMargin: 32

    initialPage: listPage

    ListPage {
        id: listPage
    }

    IconPage {
        id: iconPage
    }

    ToolBarLayout {
        id: commonTools
        visible: true
        ToolIcon {
            platformIconId: "toolbar-view-menu"
            anchors.right: (parent === undefined) ? undefined : parent.right
            onClicked: (myMenu.status === DialogStatus.Closed) ? myMenu.open() : myMenu.close()
        }
    }

    Menu {
        id: myMenu
        visualParent: pageStack
        MenuLayout {
            MenuItem { text: qsTr("Sample menu item") }
        }
    }
}
