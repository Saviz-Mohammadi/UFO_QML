import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

// Custom QML Files
import "./../components_ufo"

// Custom CPP Registered Types
import AppTheme 1.0

UFO_Page {
    id: root

    title: qsTr("Component Demo")
    contentSpacing: 20

    UFO_ComboBox{
        Layout.preferredWidth: 100
        Layout.preferredHeight: 35
    }

    UFO_TextField {
        id: ufo_TextField_1

        Layout.preferredWidth: 200
        Layout.preferredHeight: 35
    }

    UFO_GroupBox {
        Layout.fillWidth: true
        // NOTE (SAVIZ): No point using "Layout.fillHeight" as "UFO_Page" ignores height to enable vertical scrolling.

        title: qsTr("Style")
        contentSpacing: 0

        Text {
            Layout.fillWidth: true

            Layout.topMargin: 20
            Layout.bottomMargin: 0
            Layout.leftMargin: 15
            Layout.rightMargin: 15

            color: Qt.color(AppTheme.colors["UFO_GroupBox_Content_Text"])

            text: qsTr("The theme will be cached and loaded on application launch.")

            wrapMode: Text.WordWrap
            elide: Text.ElideRight
        }

        UFO_ComboBox {
            id: ufo_ComboBox_1

            Layout.fillWidth: true
            Layout.preferredHeight: 35

            Layout.topMargin: 7
            Layout.bottomMargin: 20
            Layout.leftMargin: 15
            Layout.rightMargin: 15
        }

        UFO_TextField {
            placeholderText: "Type something"

            Layout.preferredWidth: 200
            Layout.preferredHeight: 35

            Layout.topMargin: 7
            Layout.bottomMargin: 20
            Layout.leftMargin: 15
            Layout.rightMargin: 15
        }
    }
}
