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
        id: ufo_GroupBox_1

        Layout.fillWidth: true
        // No point setting "Layout.fillHeight" as "UFO_Page" ignores height to enable vertical scrolling.

        title: qsTr("Style")
        contentSpacing: 0

        Text {
            id: text_1

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

            model: Object.keys(AppTheme.themes)

            onActivated: {
                AppTheme.loadColorsFromTheme(currentText)
            }

            Component.onCompleted: {
                var cachedTheme = AppTheme.getCachedTheme()

                for (var index = 0; index < ufo_ComboBox_1.model.length; ++index) {
                    if (cachedTheme === ""
                            && ufo_ComboBox_1.model[index] === "ufo_light") {

                        ufo_ComboBox_1.currentIndex = index
                        break
                    }

                    if (ufo_ComboBox_1.model[index] === cachedTheme) {
                        ufo_ComboBox_1.currentIndex = index
                        break
                    }
                }
            }
        }

        UFO_TextField {
            id: ufo_TextField_2

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
