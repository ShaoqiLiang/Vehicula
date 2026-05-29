import QtQuick
import QtQuick.Controls
import QtQuick3D
import QtQuick3D.Helpers
import "LiXiang_L9"

Window {
    width: 1920
    height: 1040
    visible: true
    visibility: window.Maximized
    title: qsTr("Vehicula  -by: ShaoqiLiang")

    View3D {
        id: extendedView3D
        width: 1920
        height: 1040
        environment: sceneEnvironment
        focus: true

        ExtendedSceneEnvironment {
            id: sceneEnvironment
            backgroundMode: SceneEnvironment.SkyBox
            antialiasingQuality: SceneEnvironment.VeryHigh
            antialiasingMode: SceneEnvironment.MSAA

            lightProbe: Texture {
                id: probeTexture
                source: "qrc:/textures/SMC_Industrial_Gates.hdr"
            }
            probeExposure: 1
        }

        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
                x: -107.292
                y: 100.386
                z: -9000
                brightness: 2.0
            }

            PerspectiveCamera {
                id: sceneCamera
                eulerRotation: Qt.vector3d(-5, 0, 0)
                x: 0
                y: 800
                z: 5000
            }

            LiXiang_L9 {
                id: liXiang_L9
                x: 0
                y: 0
                z: 363.32602
                scale: Qt.vector3d(0.8, 0.8, 0.8)
            }
        }

        // WasdController 放在 View3D 内部
        WasdController {
            id: wasdController
            controlledObject: sceneCamera
            enabled: true
        }
    }

    // 信息显示
    Row {
        id: infoRow
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.top: parent.top
        visible: false

        Label {
            id: infoLabel
            font.pixelSize: 16
            color: "white"
            text: "eulerRotation: " + liXiangL9.eulerRotation + "  " +
                  "scale: " + liXiangL9.scale + "  " +
                  "position: " + liXiangL9.position + "\n" +
                  "sceneCamera: " + sceneCamera.eulerRotation + "  " +
                  "sceneCamera.position: " + sceneCamera.position
                  // "sceneCamera.position: " + sceneCamera.position + "  " +
                  // "lightness: " + probeExposureSlider.value.toFixed(1)
        }
    }
    // *********************************************************************************
    // 空调控制栏（放在 statusBarRect 正上方）
    Rectangle {
        id: acControlBar
        width: parent.width
        height: 50
        color: "#80222222"            // 与状态栏一致的半透明背景
        anchors.bottom: statusBarRect.top
        anchors.bottomMargin: 0       // 紧贴状态栏，不留缝隙
        anchors.left: parent.left
        Row {
            id: leftWindRow
            anchors.left: probeExposureRow.right
            anchors.leftMargin: 5
            anchors.verticalCenter: parent.verticalCenter
            width: 70
            height: 50
            spacing: 5

            QuickSliderBar {
                id: leftWindSlider
                width: 196
                height: 30
                anchors.verticalCenter: parent.verticalCenter

                enabled: true
                visible: true
                opacity: enabled ? 1 : 0.3
                imageWidth: 28
                imageHeight: 8
                midelSourceOn: "qrc:/images/midelSourceOn.png"
                midelSourceOff: "qrc:/images/midelSourceOff.png"
                leftSourceOn: "qrc:/images/leftSourceOn.png"
                leftSourceOff: "qrc:/images/leftSourceOff.png"
                rightSourceOn: "qrc:/images/rightSourceOn.png"
                rightSourceOff: "qrc:/images/rightSourceOff.png"
                value: 3
            }
        }
        Row {
            // 空调控制内容，水平居中
            anchors.centerIn: parent
            spacing: 10

            // ---- 左温区 ----
            Row {
                id: leftTempRow
                height: 50
                spacing: 5
                // 删除原来的 anchors.left / leftMargin，由父 Row 管理位置

                Button {
                    width: 50; height: 50
                    opacity: down ? 0.3 : 1
                    hoverEnabled: false
                    background: Image {
                        width: parent.width * 0.7; height: parent.height * 0.7
                        anchors.centerIn: parent
                        source: "qrc:/images/Arrow_Left.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Label {
                    id: leftTemperatureLabel
                    width: 70; height: 50
                    text: leftTemperature + "℃"
                    font.pixelSize: 32; font.bold: true
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Button {
                    width: 50; height: 50
                    opacity: down ? 0.3 : 1
                    hoverEnabled: false
                    background: Image {
                        width: parent.width * 0.7; height: parent.height * 0.7
                        anchors.centerIn: parent
                        source: "qrc:/images/Arrow_Right.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }
            }

            // ---- 空调电源 ----
            Row {
                id: acPowerRow
                height: 50
                Button {
                    width: 50; height: 50
                    opacity: acPower ? (down ? 0.7 : 1) : 0.3
                    hoverEnabled: false
                    background: Image {
                        width: parent.width * 0.7; height: parent.height * 0.7
                        anchors.centerIn: parent
                        source: "qrc:/images/switch.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }
            }

            // ---- 右温区 ----
            Row {
                id: rightTempRow
                height: 50
                spacing: 5

                Button {
                    width: 50; height: 50
                    opacity: down ? 0.3 : 1
                    hoverEnabled: false
                    background: Image {
                        width: parent.width * 0.7; height: parent.height * 0.7
                        anchors.centerIn: parent
                        source: "qrc:/images/Arrow_Left.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Label {
                    id: rightTemperatureLabel
                    width: 70; height: 50
                    text: rightTemperature + "℃"
                    font.pixelSize: 32; font.bold: true
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Button {
                    width: 50; height: 50
                    opacity: down ? 0.3 : 1
                    hoverEnabled: false
                    background: Image {
                        width: parent.width * 0.7; height: parent.height * 0.7
                        anchors.centerIn: parent
                        source: "qrc:/images/Arrow_Right.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }
            }

            // ---- 右风量 ----
            Row {
                id: rightWindRow
                anchors.left: rightTempRow.right
                anchors.leftMargin: 5
                anchors.verticalCenter: parent.verticalCenter
                width: 70
                height: 50
                spacing: 5

                QuickSliderBar {
                    id: rightWindSlider
                    width: 196
                    height: 30
                    anchors.verticalCenter: parent.verticalCenter

                    enabled: true
                    visible: true
                    opacity: enabled ? 1 : 0.3
                    imageWidth: 28
                    imageHeight: 8
                    midelSourceOn: "qrc:/images/midelSourceOn.png"
                    midelSourceOff: "qrc:/images/midelSourceOff.png"
                    leftSourceOn: "qrc:/images/leftSourceOn.png"
                    leftSourceOff: "qrc:/images/leftSourceOff.png"
                    rightSourceOn: "qrc:/images/rightSourceOn.png"
                    rightSourceOff: "qrc:/images/rightSourceOff.png"
                    value: 3
                }
            }
        }
    }
    // *********************************************************************************

    // 状态栏
    Rectangle {
        id: statusBarRect
        width: parent.width
        height: 40
        color: "#80222222"
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        Row {
            id: doorRow
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.verticalCenter: parent.verticalCenter
            width: 415
            height: 50
            spacing: 5

            QuickButton {
                id: doorFLButton
                width: 65
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                buttonText: "左前门"
                buttonColor: "#80AAAAAA"
                buttonSource: "qrc:/images/door.png"
                textColor: "white"
                font.pixelSize: 14
                iconSize: Qt.point(16, 16)

                // onClicked: {
                //     if(liXiangL9.doorFLStatus)
                //     {
                //         doorFLOffAnimation.start()
                //     }
                //     else
                //     {
                //         doorFLOnAnimation.start()
                //     }
                // }
            }
            QuickButton {
                id: doorBLButton
                width: 65
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                buttonText: "左后门"
                buttonColor: "#80AAAAAA"
                buttonSource: "qrc:/images/door.png"
                textColor: "white"
                font.pixelSize: 14
                iconSize: Qt.point(16, 16)

                // onClicked: {
                //     if(liXiangL9.doorBLStatus)
                //     {
                //         doorBLOffAnimation.start()
                //     }
                //     else
                //     {
                //         doorBLOnAnimation.start()
                //     }
                // }
            }
            QuickButton {
                id: doorFRButton
                width: 65
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                buttonText: "右后门"
                buttonColor: "#80AAAAAA"
                buttonSource: "qrc:/images/door.png"
                textColor: "white"
                font.pixelSize: 14
                iconSize: Qt.point(16, 16)

                // onClicked: {
                //     if(liXiangL9.doorBLStatus)
                //     {
                //         doorBLOffAnimation.start()
                //     }
                //     else
                //     {
                //         doorBLOnAnimation.start()
                //     }
                // }
            }
            QuickButton {
                id: doorBRButton
                width: 65
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                buttonText: "右后门"
                buttonColor: "#80AAAAAA"
                buttonSource: "qrc:/images/door.png"
                textColor: "white"
                font.pixelSize: 14
                iconSize: Qt.point(16, 16)

                // onClicked: {
                //     if(liXiangL9.doorBRStatus)
                //     {
                //         doorBROffAnimation.start()
                //     }
                //     else
                //     {
                //         doorBROnAnimation.start()
                //     }
                // }
            }
            QuickButton {
                id: trunkButton
                width: 65
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                buttonText: "后备箱"
                buttonColor: "#80AAAAAA"
                buttonSource: "qrc:/images/trunk.png"
                textColor: "white"
                font.pixelSize: 14
                iconSize: Qt.point(16, 16)

                // onClicked: {
                //     if(liXiangL9.trunkStatus)
                //     {
                //         trunkOffAnimation.start()
                //     }
                //     else
                //     {
                //         trunkOnAnimation.start()
                //     }
                // }
            }
            QuickButton {
                id: wheelFontButton
                width: 65
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                buttonText: "前车轮"
                buttonColor: "#80AAAAAA"
                buttonSource: "qrc:/images/wheel.png"
                textColor: "white"
                font.pixelSize: 14
                iconSize: Qt.point(16, 16)

                // onClicked: {
                //     wheelRow.visible = !wheelRow.visible
                // }
            }
        }
        Row {
            id: carPositonRow
            anchors.left: doorRow.right
            anchors.leftMargin: 25
            anchors.verticalCenter: parent.verticalCenter
            height: 50
            spacing: 5

            QuickButton {
                id: positonButton
                width: 55
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                buttonText: "位置"
                buttonColor: "#80AAAAAA"
                buttonSource: "qrc:/images/position.png"
                textColor: "white"
                font.pixelSize: 14
                iconSize: Qt.point(16, 16)
                iconMagin: 5

                // onClicked: {
                //     liXiangL9PostionRect.visible = !liXiangL9PostionRect.visible
                //     liXiangL9RotationRect.visible = false
                // }
            }

            QuickButton {
                id: rotationButton
                width: 55
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                buttonText: "旋转"
                buttonColor: "#80AAAAAA"
                buttonSource: "qrc:/images/rotation.png"
                textColor: "white"
                font.pixelSize: 14
                iconSize: Qt.point(16, 16)
                iconMagin: 5

                // onClicked: {
                //     liXiangL9RotationRect.visible = !liXiangL9RotationRect.visible
                //     liXiangL9PostionRect.visible = false
                // }
            }
        }
        // 视角
        Row {
            id: carViewRow
            anchors.left: carPositonRow.right
            anchors.leftMargin: 25
            anchors.verticalCenter: parent.verticalCenter
            // width: 200
            height: 50
            spacing: 5

            QuickButton {
                id: carBodyButton
                width: 80
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                buttonText: "车身视角"
                buttonColor: "#80AAAAAA"
                buttonSource: "qrc:/images/car.png"
                textColor: "white"
                font.pixelSize: 14
                iconSize: Qt.point(16, 16)
                iconMagin: 3

                // onClicked: {
                //     carBodyAnimation.start()
                // }
            }

            QuickButton {
                id: carInteriorButton
                width: 80
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                buttonText: "车内视角"
                buttonColor: "#80AAAAAA"
                buttonSource: "qrc:/images/interior.png"
                textColor: "white"
                font.pixelSize: 14
                iconSize: Qt.point(16, 16)
                iconMagin: 3

                // onClicked: {
                //     carInteriorAnimation.start()
                // }
            }

            QuickButton {
                id: animationButton
                width: 80
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                buttonText: "播放动画"
                buttonColor: "#80AAAAAA"
                buttonSource: "qrc:/images/animation.png"
                textColor: "white"
                font.pixelSize: 14
                iconSize: Qt.point(16, 16)
                iconMagin: 3

                // onClicked: {
                //     sequentialAnimation.start()
                // }
            }
        }
        // 车漆
        Row {
            id: carPaintRow
            anchors.left: carViewRow.right
            anchors.leftMargin: 25
            // anchors.horizontalCenter: parent.horizontalCenter
            // anchors.bottom: parent.bottom
            width: 200
            height: 40
            spacing: 10

            Rectangle {
                width: 30
                height: 30
                radius: height / 2
                color: "#001314"
                border.color: "lightgray"
                border.width: 1
                MouseArea {
                    anchors.fill: parent
                    onClicked: liXiangL9.carPaintColor = parent.color
                }
            }

            Rectangle {
                width: 30
                height: 30
                radius: height / 2
                color: "#5D503F"
                border.color: "lightgray"
                border.width: 1
                MouseArea {
                    anchors.fill: parent
                    onClicked: liXiangL9.carPaintColor = parent.color
                }
            }

            Rectangle {
                width: 30
                height: 30
                radius: height / 2
                color: "#030303"
                border.color: "lightgray"
                border.width: 1
                MouseArea {
                    anchors.fill: parent
                    onClicked: liXiangL9.carPaintColor = parent.color
                }
            }

            Rectangle {
                width: 30
                height: 30
                radius: height / 2
                color: "#7C7C79"
                border.color: "lightgray"
                border.width: 1
                MouseArea {
                    anchors.fill: parent
                    onClicked: liXiangL9.carPaintColor = parent.color
                }
            }

            Rectangle {
                width: 30
                height: 30
                radius: height / 2
                color: "#402341"
                border.color: "lightgray"
                border.width: 1
                MouseArea {
                    anchors.fill: parent
                    onClicked: liXiangL9.carPaintColor = parent.color
                }
            }
        }
        Row {
            id: probeExposureRow
            anchors.left: carPaintRow.right
            anchors.leftMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            width: 70
            height: 50
            spacing: 5

            QuickButton {
                id: probeExposureButton
                width: 65
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                buttonText: "光线"
                buttonColor: "#80AAAAAA"
                buttonSource: "qrc:/images/lighting.png"
                textColor: "white"
                font.pixelSize: 14
                iconSize: Qt.point(16, 16)
                iconMagin: 6

                // onClicked: {
                //     probeExposureControlRow.visible = !probeExposureControlRow.visible
                // }
            }
        }
        // Row {
        //     id: leftWindRow
        //     anchors.left: probeExposureRow.right
        //     anchors.leftMargin: 5
        //     anchors.verticalCenter: parent.verticalCenter
        //     width: 70
        //     height: 50
        //     spacing: 5

        //     QuickSliderBar {
        //         id: leftWindSlider
        //         width: 196
        //         height: 30
        //         anchors.verticalCenter: parent.verticalCenter

        //         enabled: true
        //         visible: true
        //         opacity: enabled ? 1 : 0.3
        //         imageWidth: 28
        //         imageHeight: 8
        //         midelSourceOn: "qrc:/images/midelSourceOn.png"
        //         midelSourceOff: "qrc:/images/midelSourceOff.png"
        //         leftSourceOn: "qrc:/images/leftSourceOn.png"
        //         leftSourceOff: "qrc:/images/leftSourceOff.png"
        //         rightSourceOn: "qrc:/images/rightSourceOn.png"
        //         rightSourceOff: "qrc:/images/rightSourceOff.png"
        //         value: 3
        //     }
        // }
        Row {
            id: wheelRow
            width: 300
            height: 30
            anchors.left: parent.left
            anchors.leftMargin: 270
            anchors.bottom: statusBarRect.top
            anchors.bottomMargin: 10
            visible: false
            spacing: 20

            Label { id: label; text: "前车轮: "; color: "white"}

            Slider {
                id: wheelSlider
                width: 200
                height: 20
                from: 70
                to: 110
                stepSize: 1
                value: 90
            }

            Label {text: wheelSlider.value; color: "white"}
        }
        Row {
            id: probeExposureControlRow
            width: 300
            height: 30
            anchors.left: parent.left
            anchors.leftMargin: 1100
            anchors.bottom: statusBarRect.top
            anchors.bottomMargin: 10
            visible: false
            spacing: 20

            Label { id: label2; text: "光线强度: "; color: "white"}

            Slider {
                id: probeExposureSlider
                width: 200
                height: 20
                from: 0
                to: 5
                stepSize: 0.1
                value: 1
            }
        }
        // Row {
        //     id: leftTempRow
        //     width: 170
        //     height: 50
        //     anchors.left: leftWindRow.right
        //     anchors.leftMargin: 80
        //     anchors.verticalCenter: parent.verticalCenter

        //     Button {
        //         width: 50
        //         height: 50
        //         opacity: down ? 0.3 : 1
        //         hoverEnabled: false

        //         background: Image {
        //             width: parent.width * 0.7
        //             height: parent.height * 0.7
        //             anchors.centerIn: parent
        //             source: "qrc:/images/Arrow_Left.png"
        //             fillMode: Image.PreserveAspectFit
        //         }

        //         // onClicked: {
        //         //     if(leftTemperature > 16)
        //         //     {
        //         //         leftTemperature -= 1
        //         //     }
        //         // }
        //     }

        //     Label {
        //         id: leftTemperatureLabel
        //         width: 70
        //         height: 50
        //         text: leftTemperature + "℃"
        //         font.pixelSize: 32
        //         font.bold: true
        //         color: "white"
        //         horizontalAlignment: Text.AlignHCenter
        //         verticalAlignment: Text.AlignVCenter
        //     }

        //     Button {
        //         width: 50
        //         height: 50
        //         opacity: down ? 0.3 : 1
        //         hoverEnabled: false

        //         background: Image {
        //             width: parent.width * 0.7
        //             height: parent.height * 0.7
        //             anchors.centerIn: parent
        //             source: "qrc:/images/Arrow_Right.png"
        //             fillMode: Image.PreserveAspectFit
        //         }

        //         // onClicked: {
        //         //     if(leftTemperature < 32)
        //         //     {
        //         //         leftTemperature += 1
        //         //     }
        //         // }
        //     }
        // }
        // Row {
        //     id: acPowerRow
        //     anchors.left: leftTempRow.right
        //     anchors.leftMargin: 5
        //     anchors.verticalCenter: parent.verticalCenter
        //     width: 70
        //     height: 50
        //     spacing: 5

        //     Button {
        //         width: 50
        //         height: 50
        //         opacity: acPower ? (down ? 0.7 : 1) : 0.3
        //         hoverEnabled: false

        //         background: Image {
        //             width: parent.width * 0.7
        //             height: parent.height * 0.7
        //             anchors.centerIn: parent
        //             source: "qrc:/images/switch.png"
        //             fillMode: Image.PreserveAspectFit
        //         }

        //         // onClicked: {
        //         //     acPower = !acPower
        //         // }
        //     }
        // }
        // Row {
        //     id: rightTempRow
        //     width: 170
        //     height: 50
        //     anchors.left: acPowerRow.right
        //     anchors.leftMargin: 5
        //     anchors.verticalCenter: parent.verticalCenter

        //     Button {
        //         width: 50
        //         height: 50
        //         opacity: down ? 0.3 : 1
        //         hoverEnabled: false

        //         background: Image {
        //             width: parent.width * 0.7
        //             height: parent.height * 0.7
        //             anchors.centerIn: parent
        //             source: "qrc:/images/Arrow_Left.png"
        //             fillMode: Image.PreserveAspectFit
        //         }

        //         // onClicked: {
        //         //     if(rightTemperature > 16)
        //         //     {
        //         //         rightTemperature -= 1
        //         //     }
        //         // }
        //     }

        //     Label {
        //         id: rightTemperatureLabel
        //         width: 70
        //         height: 50
        //         text: rightTemperature + "℃"
        //         font.pixelSize: 32
        //         font.bold: true
        //         color: "white"
        //         horizontalAlignment: Text.AlignHCenter
        //         verticalAlignment: Text.AlignVCenter
        //     }

        //     Button {
        //         width: 50
        //         height: 50
        //         opacity: down ? 0.3 : 1
        //         hoverEnabled: false

        //         background: Image {
        //             width: parent.width * 0.7
        //             height: parent.height * 0.7
        //             anchors.centerIn: parent
        //             source: "qrc:/images/Arrow_Right.png"
        //             fillMode: Image.PreserveAspectFit
        //         }

        //         // onClicked: {
        //         //     if(rightTemperature < 32)
        //         //     {
        //         //         rightTemperature += 1
        //         //     }
        //         // }
        //     }
        // }
        // Row {
        //     id: rightWindRow
        //     anchors.left: rightTempRow.right
        //     anchors.leftMargin: 5
        //     anchors.verticalCenter: parent.verticalCenter
        //     width: 70
        //     height: 50
        //     spacing: 5

        //     QuickSliderBar {
        //         id: rightWindSlider
        //         width: 196
        //         height: 30
        //         anchors.verticalCenter: parent.verticalCenter

        //         enabled: true
        //         visible: true
        //         opacity: enabled ? 1 : 0.3
        //         imageWidth: 28
        //         imageHeight: 8
        //         midelSourceOn: "qrc:/images/midelSourceOn.png"
        //         midelSourceOff: "qrc:/images/midelSourceOff.png"
        //         leftSourceOn: "qrc:/images/leftSourceOn.png"
        //         leftSourceOff: "qrc:/images/leftSourceOff.png"
        //         rightSourceOn: "qrc:/images/rightSourceOn.png"
        //         rightSourceOff: "qrc:/images/rightSourceOff.png"
        //         value: 3
        //     }
        // }
    }
}
