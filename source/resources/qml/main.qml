import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

// Custom QML Files
import "ufo"

// Custom CPP Registered Types
import AppTheme 1.0


ApplicationWindow {
    id: root

    width: 800
    height: 700

    visible: true
    title: qsTr("QML_Project")




    // MenuBar
    // [[ ---------------------------------------------------------------------- ]]
    // [[ ---------------------------------------------------------------------- ]]
    menuBar: UFO_MenuBar {
        id: ufo_MenuBar_1

        spacing: 0




        // File
        // [[ ---------------------------------------------------------------------- ]]
        // [[ ---------------------------------------------------------------------- ]]
        UFO_Menu {
            id: ufo_Menu_1

            title: qsTr("File")
            topMargin: 28
            leftMargin: 0
            spacing: -1

            UFO_MenuItem {
                id: ufo_MenuItem_1

                text: qsTr("New Document")
            }

            UFO_MenuItem {
                id: ufo_MenuItem_2

                text: qsTr("Open File or Folder")
            }

            UFO_MenuSeparator {
                id: ufo_MenuSeparator_1

                leftPadding: 6
                rightPadding: 6
            }

            UFO_MenuItem {
                id: ufo_MenuItem_3

                text: qsTr("Save As...")

                leftPadding: 10
            }

            UFO_MenuItem {
                id: ufo_MenuItem_4

                text: qsTr("Check Me")
                checkable: true
                checked: true

                arrow: UFO_MenuItemArrow {}

                indicator: UFO_MenuItemIndicator {
                    id: ufo_MenuItemIndicator_1

                    checkable: ufo_MenuItem_4.checkable
                    checked: ufo_MenuItem_4.checked
                }

                onTriggered: {
                    console.log("\"Save As...\" triggered")
                }
            }

            UFO_MenuSeparator {
                id: ufo_MenuSeparator_2

                leftPadding: 6
                rightPadding: 6
            }

            UFO_MenuItem {
                id: ufo_MenuItem_5

                text: qsTr("Quit")
            }
        }
        // [[ ---------------------------------------------------------------------- ]]
        // [[ ---------------------------------------------------------------------- ]]
        // File




    }
    // [[ ---------------------------------------------------------------------- ]]
    // [[ ---------------------------------------------------------------------- ]]
    // MenuBar




    // Footer
    // [[ ---------------------------------------------------------------------- ]]
    // [[ ---------------------------------------------------------------------- ]]
    footer: UFO_StatusBar {
        id: ufo_StatusBar_1

        text: qsTr("Status Bar")
    }
    // [[ ---------------------------------------------------------------------- ]]
    // [[ ---------------------------------------------------------------------- ]]
    // Footer




    // SplitView
    // [[ ---------------------------------------------------------------------- ]]
    // [[ ---------------------------------------------------------------------- ]]
    SplitView {
        id: splitView_1

        anchors.fill: parent




        // SideBar
        // [[ ---------------------------------------------------------------------- ]]
        // [[ ---------------------------------------------------------------------- ]]
        UFO_SideBar {
            id: ufo_SideBar_1

            Layout.preferredWidth: 200 // This will give an initial startup width to the SideBar.
            Layout.fillHeight: true
        }
        // [[ ---------------------------------------------------------------------- ]]
        // [[ ---------------------------------------------------------------------- ]]
        // SideBar




        // StackLayout
        // [[ ---------------------------------------------------------------------- ]]
        // [[ ---------------------------------------------------------------------- ]]
        StackLayout {
            id: stackLayout_1

            Layout.fillWidth: true
            Layout.fillHeight: true

            currentIndex: 0




            // About
            // [[ ---------------------------------------------------------------------- ]]
            // [[ ---------------------------------------------------------------------- ]]
            UFO_Page {
                id: ufo_Page_0

                Layout.fillWidth: true
                Layout.fillHeight: true

                title: qsTr("About Application")
                contentSpacing: 20




                // Application Name and Version
                // [[ ---------------------------------------------------------------------- ]]
                // [[ ---------------------------------------------------------------------- ]]
                UFO_GroupBox {
                    id: ufo_GroupBox_1

                    Layout.fillWidth: true
                    // No point setting the "Layout.fillHeight" as "UFO_Page" ignores height to enable vertical scrolling.

                    title: qsTr("Application Name and Version")
                    contentSpacing: 10

                    Text {
                        id: text_1

                        Layout.preferredWidth: ufo_GroupBox_1.width - 50

                        Layout.topMargin: 20
                        Layout.bottomMargin: ufo_GroupBox_1.titleTopMargin
                        Layout.leftMargin: ufo_GroupBox_1.titleLeftMargin
                        text: qsTr("[Your Application Name] v[Version Number]")
                        color: Qt.color(AppTheme.Colors["UFO_GroupBox_Text"])
                        wrapMode: Text.WordWrap
                    }
                }
                // [[ ---------------------------------------------------------------------- ]]
                // [[ ---------------------------------------------------------------------- ]]
                // Application Name and Version




                // Software License
                // [[ ---------------------------------------------------------------------- ]]
                // [[ ---------------------------------------------------------------------- ]]
                UFO_GroupBox {
                    id: ufo_GroupBox_2

                    Layout.fillWidth: true
                    // No point setting the "Layout.fillHeight" as "UFO_Page" ignores height to enable vertical scrolling.

                    title: qsTr("Software License")
                    contentSpacing: 10

                    Text {
                        id: text_2

                        Layout.preferredWidth: ufo_GroupBox_2.width - 50

                        Layout.topMargin: 20
                        Layout.bottomMargin: ufo_GroupBox_2.titleTopMargin
                        Layout.leftMargin: ufo_GroupBox_2.titleLeftMargin
                        text: qsTr("Copyright © [Copyright Year] [Your Name or Your Company Name]") + "\n" +
                              qsTr("Licensed under the MIT License. See LICENSE for details.") + "\n\n" +
                              qsTr("MIT License") + "\n\n" +
                              qsTr("Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the \"[Your Application Name]\"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:") + "\n\n" +
                              qsTr("The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.") + "\n\n" +
                              qsTr("THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.")
                        color: Qt.color(AppTheme.Colors["UFO_GroupBox_Text"])
                        wrapMode: Text.WordWrap
                    }
                }
                // [[ ---------------------------------------------------------------------- ]]
                // [[ ---------------------------------------------------------------------- ]]
                // Software License




                // Contribution
                // [[ ---------------------------------------------------------------------- ]]
                // [[ ---------------------------------------------------------------------- ]]
                UFO_GroupBox {
                    id: ufo_GroupBox_3

                    Layout.fillWidth: true
                    // No point setting the "Layout.fillHeight" as "UFO_Page" ignores height to enable vertical scrolling.

                    title: qsTr("Contributing")
                    contentSpacing: 10

                    Text {
                        id: text_3

                        Layout.preferredWidth: ufo_GroupBox_3.width - 50

                        Layout.topMargin: 20
                        Layout.bottomMargin: ufo_GroupBox_3.titleTopMargin
                        Layout.leftMargin: ufo_GroupBox_3.titleLeftMargin
                        text: qsTr("We welcome contributions to [Your Application Name]! Please visit our <a href=\"https://www.google.com/\">[Website]</a> for more information.")
                        color: Qt.color(AppTheme.Colors["UFO_GroupBox_Text"])
                        wrapMode: Text.WordWrap

                        HoverHandler {
                            id: hoverHandler_1

                            enabled: parent.hoveredLink
                            cursorShape: Qt.PointingHandCursor
                        }

                        onLinkActivated: {
                            Qt.openUrlExternally(text_3.hoveredLink);
                        }
                    }
                }
                // [[ ---------------------------------------------------------------------- ]]
                // [[ ---------------------------------------------------------------------- ]]
                // Contribution




            }
            // [[ ---------------------------------------------------------------------- ]]
            // [[ ---------------------------------------------------------------------- ]]
            // About




            // Settings
            // [[ ---------------------------------------------------------------------- ]]
            // [[ ---------------------------------------------------------------------- ]]
            UFO_Page {
                id: ufo_Page_1

                Layout.fillWidth: true
                Layout.fillHeight: true

                title: qsTr("Application Settings")
                contentSpacing: 20

                // Settings Page
                UFO_GroupBox {
                    id: ufo_GroupBox_4

                    Layout.fillWidth: true
                    // No point setting the "Layout.fillHeight" as "UFO_Page" ignores height to enable vertical scrolling.

                    title: qsTr("Style")
                    contentSpacing: 10

                    Text {
                        id: text_4

                        Layout.preferredWidth: ufo_GroupBox_1.width - 50

                        Layout.topMargin: 20
                        Layout.bottomMargin: ufo_GroupBox_1.titleTopMargin
                        Layout.leftMargin: ufo_GroupBox_1.titleLeftMargin
                        text: qsTr("[Your Application Name] v[Version Number]")
                        color: Qt.color(AppTheme.Colors["UFO_GroupBox_Text"])
                        wrapMode: Text.WordWrap
                    }

                    UFO_ComboBox {
                        id: ufo_ComboBox_1

                        Layout.preferredHeight: 30
                        Layout.preferredWidth: 100

                        model: Object.keys(AppTheme.Themes)
                        Layout.bottomMargin: ufo_GroupBox_4.titleTopMargin
                        Layout.leftMargin: ufo_GroupBox_4.titleLeftMargin

                        onActivated: {
                            // Grab the text when a new element is selected.
                            AppTheme.loadColorsFromTheme(currentText)
                        }

                        Component.onCompleted: {
                            // Obtain the name of last used Theme.
                            var cachedTheme = AppTheme.cachedTheme()

                            // This function looks at every entry, and finds the one that corresponds
                            // to our cachedTheme name. Then it will set the index to that.
                            for (var index = 0; index < ufo_ComboBox_1.model.length; ++index) {
                                if (ufo_ComboBox_1.model[index] === cachedTheme) {
                                    ufo_ComboBox_1.currentIndex = index;
                                    return;
                                }
                            }
                        }
                    }
                }
            }
            // [[ ---------------------------------------------------------------------- ]]
            // [[ ---------------------------------------------------------------------- ]]
            // Settings




            // Connections
            // [[ ---------------------------------------------------------------------- ]]
            // [[ ---------------------------------------------------------------------- ]]
            Connections {
                target: ufo_SideBar_1

                function onTabChanged(index) {
                    switch (index) {
                        case 0:
                            stackLayout_1.currentIndex = 0;
                            break;
                        case 1:
                            stackLayout_1.currentIndex = 1;
                            break;
                        case 2:
                            stackLayout_1.currentIndex = 2;
                            break;
                        default:
                            stackLayout_1.currentIndex = 3;
                    }
                }
            }
            // [[ ---------------------------------------------------------------------- ]]
            // [[ ---------------------------------------------------------------------- ]]
            // Connections




        }
        // [[ ---------------------------------------------------------------------- ]]
        // [[ ---------------------------------------------------------------------- ]]
        // StackLayout




    }
    // [[ ---------------------------------------------------------------------- ]]
    // [[ ---------------------------------------------------------------------- ]]
    // SplitView
}
