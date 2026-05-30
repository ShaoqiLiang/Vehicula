import QtQuick
import QtQuick.Controls
import QtQuick3D
import QtQuick3D.Helpers
import QtQuick3D.Particles3D
import "LiXiang_L9"

Window {
    id: root
    width: 1920
    height: 1040
    visible: true

    // 环绕动画参数
    property real orbitAngle: 0          // 当前角度
    property real orbitRadius: 4000      // 环绕半径
    property real orbitHeight: 800       // 环绕高度
    property real orbitCenterX: 0        // 车中心X
    property real orbitCenterZ: 500      // 车中心Z

    // 空调相关属性
    property int leftTemperature: 24
    property int rightTemperature: 24
    property bool acPower: false
    property bool isInteriorView: false   // 是否在内饰视角

    // 风效果强度（0.0 ~ 1.0）
    property real leftWindIntensity: leftWindSlider.value / 5.0
    property real rightWindIntensity: rightWindSlider.value / 5.0

    // 当风速变为0或关闭空调时重置粒子系统
    onLeftWindIntensityChanged: {
        if (leftWindIntensity <= 0) {
            leftVentParticles.reset()
        }
    }
    onRightWindIntensityChanged: {
        if (rightWindIntensity <= 0) {
            rightVentParticles.reset()
        }
    }
    onAcPowerChanged: {
        if (!acPower) {
            leftVentParticles.reset()
            rightVentParticles.reset()
        }
    }
    visibility: Window.FullScreen
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

            // 坐标轴辅助线
            AxisHelper {
                id: axisHelper
                enableAxisLines: true
                enableXYGrid: true
                enableXZGrid: true
                enableYZGrid: true
                visible: false
            }

            // // 地面平面（用于观察车灯效果）
            // Model {
            //     id: groundPlane
            //     source: "#Rectangle"
            //     scale: Qt.vector3d(200, 200, 1)
            //     eulerRotation.x: -90
            //     x: -2330
            //     y: -950  // 地面高度
            //     materials: PrincipledMaterial {
            //         baseColor: "gray"
            //         roughness: 0.8
            //     }
            // }

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

            // ==================== 空调风效果粒子系统 ====================
            Node {
                id: acWindEffects
                visible: acPower

                // 调试用：方块标记出风口位置
                Model {
                    source: "#Cube"
                    scale: Qt.vector3d(0.5, 0.1, 0.3)
                    position: Qt.vector3d(-580, 782, 416)
                    materials: PrincipledMaterial {
                        baseColor: "red"
                        opacity: 0.8
                    }
                    visible: acPower
                }

                Model {
                    source: "#Cube"
                    scale: Qt.vector3d(0.5, 0.1, 0.3)
                    position: Qt.vector3d(-580, 782, 307)
                    materials: PrincipledMaterial {
                        baseColor: "blue"
                        opacity: 0.8
                    }
                    visible: acPower
                }

                // --- 左侧出风口粒子系统 ---
                ParticleSystem3D {
                    id: leftVentParticles
                    running: acPower && leftWindIntensity > 0

                    SpriteParticle3D {
                        id: leftVentParticle
                        sprite: Texture { source: "qrc:/images/dust.png" }
                        maxAmount: 400                           // 增大最大粒子数，保证高风量时寿命一致
                        color: Qt.rgba(1, 1, 1, 0.4)
                        colorVariation: Qt.vector4d(0, 0, 0, 0.1)
                        fadeInDuration: 300
                        fadeOutDuration: 1000
                        hasTransparency: true
                        billboard: true
                        particleScale: 5
                    }

                    ParticleEmitter3D {
                        id: leftVentEmitter
                        particle: leftVentParticle
                        emitRate: leftWindIntensity * 150      // 发射速率跟随风量
                        lifeSpan: 2500                         // 延长寿命，轨迹更长
                        lifeSpanVariation: 500
                        particleScale: 5
                        particleScaleVariation: 2
                        particleEndScale: 8
                        // 出风口位置（仪表台左侧）- 与红色方块一致
                        x: -580
                        y: 782
                        z: 416

                        velocity: VectorDirection3D {
                            // 速度跟随风量：风量越大，速度越快
                            direction: Qt.vector3d(80 + leftWindIntensity * 250, 0, 0)
                            directionVariation: Qt.vector3d(30, 20, 25)
                        }
                    }

                    Gravity3D {
                        magnitude: 15
                        direction: Qt.vector3d(50, 0, 0)
                    }
                }

                // --- 右侧出风口粒子系统 ---
                ParticleSystem3D {
                    id: rightVentParticles
                    running: acPower && rightWindIntensity > 0

                    SpriteParticle3D {
                        id: rightVentParticle
                        sprite: Texture { source: "qrc:/images/dust.png" }
                        maxAmount: 400                           // 增大最大粒子数，保证高风量时寿命一致
                        color: Qt.rgba(1, 1, 1, 0.4)
                        colorVariation: Qt.vector4d(0, 0, 0, 0.1)
                        fadeInDuration: 300
                        fadeOutDuration: 1000
                        hasTransparency: true
                        billboard: true
                        particleScale: 5
                    }

                    ParticleEmitter3D {
                        id: rightVentEmitter
                        particle: rightVentParticle
                        emitRate: rightWindIntensity * 150     // 发射速率跟随风量
                        lifeSpan: 2500                         // 延长寿命，轨迹更长
                        lifeSpanVariation: 500
                        particleScale: 5
                        particleScaleVariation: 2
                        particleEndScale: 8
                        // 出风口位置（仪表台右侧）- 与蓝色方块一致
                        x: -580
                        y: 782
                        z: 307

                        velocity: VectorDirection3D {
                            // 速度跟随风量：风量越大，速度越快
                            direction: Qt.vector3d(80 + rightWindIntensity * 250, 0, 0)
                            directionVariation: Qt.vector3d(30, 20, 25)
                        }
                    }

                    Gravity3D {
                        magnitude: 15
                        direction: Qt.vector3d(50, 0, 0)
                    }
                }
            }
            // ==================== 空调风效果结束 ====================

            // 左前门开启动画
            NumberAnimation {
                id: doorFLOnAnimation
                target: liXiang_L9
                property: "doorFLAngle"
                from: 0
                to: 60
                duration: 1000
                easing.type: Easing.InOutQuad
                onStarted: console.log("左前门开启动画开始")
                onFinished: console.log("左前门开启动画完成")
            }

            // 左前门关闭动画
            NumberAnimation {
                id: doorFLOffAnimation
                target: liXiang_L9
                property: "doorFLAngle"
                from: 60
                to: 0
                duration: 1000
                easing.type: Easing.InOutQuad
                onStarted: console.log("左前门关闭动画开始")
                onFinished: console.log("左前门关闭动画完成")
            }

            // 右前门开启动画
            NumberAnimation {
                id: doorFROnAnimation
                target: liXiang_L9
                property: "doorFRAngle"
                from: 0
                to: 60
                duration: 1000
                easing.type: Easing.InOutQuad
                onStarted: console.log("右前门开启动画开始")
                onFinished: console.log("右前门开启动画完成")
            }

            // 右前门关闭动画
            NumberAnimation {
                id: doorFROffAnimation
                target: liXiang_L9
                property: "doorFRAngle"
                from: 60
                to: 0
                duration: 1000
                easing.type: Easing.InOutQuad
                onStarted: console.log("右前门关闭动画开始")
                onFinished: console.log("右前门关闭动画完成")
            }

            // 左后门开启动画
            NumberAnimation {
                id: doorBLOnAnimation
                target: liXiang_L9
                property: "doorBLAngle"
                from: 0
                to: 60
                duration: 1000
                easing.type: Easing.InOutQuad
                onStarted: console.log("左后门开启动画开始")
                onFinished: console.log("左后门开启动画完成")
            }

            // 左后门关闭动画
            NumberAnimation {
                id: doorBLOffAnimation
                target: liXiang_L9
                property: "doorBLAngle"
                from: 60
                to: 0
                duration: 1000
                easing.type: Easing.InOutQuad
                onStarted: console.log("左后门关闭动画开始")
                onFinished: console.log("左后门关闭动画完成")
            }

            // 右后门开启动画
            NumberAnimation {
                id: doorBROnAnimation
                target: liXiang_L9
                property: "doorBRAngle"
                from: 0
                to: 60
                duration: 1000
                easing.type: Easing.InOutQuad
                onStarted: console.log("右后门开启动画开始")
                onFinished: console.log("右后门开启动画完成")
            }

            // 右后门关闭动画
            NumberAnimation {
                id: doorBROffAnimation
                target: liXiang_L9
                property: "doorBRAngle"
                from: 60
                to: 0
                duration: 1000
                easing.type: Easing.InOutQuad
                onStarted: console.log("右后门关闭动画开始")
                onFinished: console.log("右后门关闭动画完成")
            }

            // 后备箱开启动画
            NumberAnimation {
                id: trunkOnAnimation
                target: liXiang_L9
                property: "trunkAngle"
                from: 0
                to: 60
                duration: 1000
                easing.type: Easing.InOutQuad
                onStarted: console.log("后备箱开启动画开始")
                onFinished: console.log("后备箱开启动画完成")
            }

            // 后备箱关闭动画
            NumberAnimation {
                id: trunkOffAnimation
                target: liXiang_L9
                property: "trunkAngle"
                from: 60
                to: 0
                duration: 1000
                easing.type: Easing.InOutQuad
                onStarted: console.log("后备箱关闭动画开始")
                onFinished: console.log("后备箱关闭动画完成")
            }

            // 车内视角过渡动画
            ParallelAnimation {
                id: interiorViewAnimation

                NumberAnimation {
                    target: sceneCamera
                    property: "x"
                    to: -67.7205
                    duration: 1500
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    target: sceneCamera
                    property: "y"
                    to: 1101.35
                    duration: 1500
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    target: sceneCamera
                    property: "z"
                    to: 666.678
                    duration: 1500
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    target: sceneCamera
                    property: "eulerRotation.x"
                    to: -15.5458
                    duration: 1500
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    target: sceneCamera
                    property: "eulerRotation.y"
                    to: 85.6955
                    duration: 1500
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    target: sceneCamera
                    property: "eulerRotation.z"
                    to: 0
                    duration: 1500
                    easing.type: Easing.InOutQuad
                }

                onStarted: console.log("车内视角动画开始")
                onFinished: console.log("车内视角动画完成")
            }

            // 车身视角过渡动画
            ParallelAnimation {
                id: carBodyViewAnimation

                NumberAnimation {
                    target: sceneCamera
                    property: "x"
                    to: 0
                    duration: 1500
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    target: sceneCamera
                    property: "y"
                    to: 800
                    duration: 1500
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    target: sceneCamera
                    property: "z"
                    to: 5000
                    duration: 1500
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    target: sceneCamera
                    property: "eulerRotation.x"
                    to: -5
                    duration: 1500
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    target: sceneCamera
                    property: "eulerRotation.y"
                    to: 0
                    duration: 1500
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    target: sceneCamera
                    property: "eulerRotation.z"
                    to: 0
                    duration: 1500
                    easing.type: Easing.InOutQuad
                }

                onStarted: console.log("车身视角动画开始")
                onFinished: console.log("车身视角动画完成")
            }

            // 环绕展示动画（平滑过渡 + 环绕一周）
            // Phase 1: 平滑飞到轨道起点
            ParallelAnimation {
                id: orbitTransitionAnimation

                NumberAnimation {
                    id: orbitToX
                    target: sceneCamera
                    property: "x"
                    duration: 1000
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    id: orbitToY
                    target: sceneCamera
                    property: "y"
                    duration: 1000
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    id: orbitToZ
                    target: sceneCamera
                    property: "z"
                    duration: 1000
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    id: orbitToRotX
                    target: sceneCamera
                    property: "eulerRotation.x"
                    duration: 1000
                    easing.type: Easing.InOutQuad
                }
                NumberAnimation {
                    id: orbitToRotY
                    target: sceneCamera
                    property: "eulerRotation.y"
                    duration: 1000
                    easing.type: Easing.InOutQuad
                }

                onFinished: {
                    console.log("过渡完成，开始环绕")
                    orbitOrbitAnimation.start()
                }
            }

            // Phase 2: 环绕 360°
            NumberAnimation {
                id: orbitOrbitAnimation
                target: root
                property: "orbitAngle"
                duration: 12000
                easing.type: Easing.Linear

                onStarted: {
                    console.log("环绕开始，角度: " + root.orbitAngle.toFixed(1))
                    orbitTimer.running = true
                }
                onStopped: {
                    console.log("环绕结束")
                    orbitTimer.running = false
                }
            }

            // 环绕动画定时器（更新摄像机位置）
            Timer {
                id: orbitTimer
                interval: 16  // ~60fps
                repeat: true
                running: false

                onTriggered: {
                    var angle = root.orbitAngle * Math.PI / 180
                    sceneCamera.x = orbitCenterX + orbitRadius * Math.sin(angle)
                    sceneCamera.z = orbitCenterZ + orbitRadius * Math.cos(angle)
                    sceneCamera.y = orbitHeight
                    sceneCamera.eulerRotation.x = -10
                    sceneCamera.eulerRotation.y = root.orbitAngle
                    sceneCamera.eulerRotation.z = 0
                }
            }
        }

        // WasdController 放在 View3D 内部
        WasdController {
            id: wasdController
            controlledObject: sceneCamera
            enabled: true
        }
    }

    // Esc 退出全屏
    Shortcut {
        sequence: "Escape"
        onActivated: {
            if (visibility === Window.FullScreen)
                visibility = Window.Windowed
            else
                visibility = Window.FullScreen
        }
    }

    // 信息显示
    Row {
        id: infoRow
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.top: parent.top
        visible: true

        Label {
            id: infoLabel
            font.pixelSize: 16
            color: "white"
            text: "车身位置: " + liXiang_L9.position + "  " +
                  "车身旋转: " + liXiang_L9.eulerRotation + "\n" +
                  "摄像机位置: " + sceneCamera.position + "  " +
                  "摄像机旋转: " + sceneCamera.eulerRotation + "\n" +
                  "车漆颜色: " + liXiang_L9.carPaintColor + "  " +
                  "转向角度: " + liXiang_L9.wheelSteeringAngle + "\n" +
                  "空调: " + (acPower ? "开启" : "关闭") + "  " +
                  "左温: " + leftTemperature + "℃  右温: " + rightTemperature + "℃  " +
                  "左风速: " + leftWindSlider.value + "  右风速: " + rightWindSlider.value
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
            id: acControlRow
            anchors.centerIn: parent
            spacing: 10

            QuickSliderBar {
                id: leftWindSlider
                width: 196
                height: 30
                anchors.verticalCenter: parent.verticalCenter

                enabled: acPower
                visible: true
                opacity: acPower ? 1 : 0.3
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

            // ---- 左温区 ----
            Row {
                id: leftTempRow
                height: 50
                spacing: 5
                visible: acPower

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
                    onClicked: {
                        if (leftTemperature > 16) leftTemperature--
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
                    onClicked: {
                        if (leftTemperature < 32) leftTemperature++
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
                    onClicked: {
                        acPower = !acPower
                    }
                }
            }

            // ---- 右温区 ----
            Row {
                id: rightTempRow
                height: 50
                spacing: 5
                visible: acPower

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
                    onClicked: {
                        if (rightTemperature > 16) rightTemperature--
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
                    onClicked: {
                        if (rightTemperature < 32) rightTemperature++
                    }
                }
            }

            QuickSliderBar {
                id: rightWindSlider
                width: 196
                height: 30
                anchors.verticalCenter: parent.verticalCenter

                enabled: acPower
                visible: true
                opacity: acPower ? 1 : 0.3
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

                onClicked: {
                    console.log("左前门按钮被点击, 当前状态:", liXiang_L9.doorFLStatus)
                    if(liXiang_L9.doorFLStatus)
                    {
                        console.log("执行关门动画")
                        doorFLOffAnimation.start()
                        liXiang_L9.doorFLStatus = false
                    }
                    else
                    {
                        console.log("执行开门动画")
                        doorFLOnAnimation.start()
                        liXiang_L9.doorFLStatus = true
                    }
                }
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

                onClicked: {
                    console.log("左后门按钮被点击, 当前状态:", liXiang_L9.doorBLStatus)
                    if(liXiang_L9.doorBLStatus)
                    {
                        console.log("执行左后门关门动画")
                        doorBLOffAnimation.start()
                        liXiang_L9.doorBLStatus = false
                    }
                    else
                    {
                        console.log("执行左后门开门动画")
                        doorBLOnAnimation.start()
                        liXiang_L9.doorBLStatus = true
                    }
                }
            }
            QuickButton {
                id: doorFRButton
                width: 65
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                buttonText: "右前门"
                buttonColor: "#80AAAAAA"
                buttonSource: "qrc:/images/door.png"
                textColor: "white"
                font.pixelSize: 14
                iconSize: Qt.point(16, 16)

                onClicked: {
                    console.log("右前门按钮被点击, 当前状态:", liXiang_L9.doorFRStatus)
                    if(liXiang_L9.doorFRStatus)
                    {
                        console.log("执行右前门关门动画")
                        doorFROffAnimation.start()
                        liXiang_L9.doorFRStatus = false
                    }
                    else
                    {
                        console.log("执行右前门开门动画")
                        doorFROnAnimation.start()
                        liXiang_L9.doorFRStatus = true
                    }
                }
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

                onClicked: {
                    console.log("右后门按钮被点击, 当前状态:", liXiang_L9.doorBRStatus)
                    if(liXiang_L9.doorBRStatus)
                    {
                        console.log("执行右后门关门动画")
                        doorBROffAnimation.start()
                        liXiang_L9.doorBRStatus = false
                    }
                    else
                    {
                        console.log("执行右后门开门动画")
                        doorBROnAnimation.start()
                        liXiang_L9.doorBRStatus = true
                    }
                }
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

                onClicked: {
                    console.log("后备箱按钮被点击, 当前状态:", liXiang_L9.trunkStatus)
                    if(liXiang_L9.trunkStatus)
                    {
                        console.log("执行后备箱关闭动画")
                        trunkOffAnimation.start()
                        liXiang_L9.trunkStatus = false
                    }
                    else
                    {
                        console.log("执行后备箱开启动画")
                        trunkOnAnimation.start()
                        liXiang_L9.trunkStatus = true
                    }
                }
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

                onClicked: {
                    wheelRow.visible = !wheelRow.visible
                }
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

                onClicked: {
                    isInteriorView = false
                    orbitTransitionAnimation.stop()
                    orbitOrbitAnimation.stop()
                    orbitTimer.running = false
                    carBodyViewAnimation.start()
                }
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

                onClicked: {
                    isInteriorView = true
                    console.log("进入内饰视角, isInteriorView:", isInteriorView)
                    console.log("左风速强度:", leftWindIntensity, "右风速强度:", rightWindIntensity)
                    interiorViewAnimation.start()
                }
            }

            QuickButton {
                id: animationButton
                width: 80
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                buttonText: (orbitTransitionAnimation.running || orbitOrbitAnimation.running) ? "停止动画" : "环绕动画"
                buttonColor: "#80AAAAAA"
                buttonSource: "qrc:/images/animation.png"
                textColor: "white"
                font.pixelSize: 14
                iconSize: Qt.point(16, 16)
                iconMagin: 3

                onClicked: {
                    if(orbitTransitionAnimation.running || orbitOrbitAnimation.running)
                    {
                        // 停止所有动画
                        orbitTransitionAnimation.stop()
                        orbitOrbitAnimation.stop()
                        orbitTimer.running = false
                    }
                    else
                    {
                        isInteriorView = false
                        // 计算起始参数
                        var dx = sceneCamera.x - orbitCenterX
                        var dz = sceneCamera.z - orbitCenterZ
                        var startAngle = Math.atan2(dx, dz) * 180 / Math.PI
                        var currentRadius = Math.sqrt(dx * dx + dz * dz)

                        // 设置轨道参数
                        orbitHeight = sceneCamera.y
                        orbitRadius = currentRadius > 500 ? currentRadius : 4000

                        // 设置 Phase 1 目标：飞到轨道起点
                        var targetAngleRad = startAngle * Math.PI / 180
                        orbitToX.to = orbitCenterX + orbitRadius * Math.sin(targetAngleRad)
                        orbitToY.to = orbitHeight
                        orbitToZ.to = orbitCenterZ + orbitRadius * Math.cos(targetAngleRad)
                        orbitToRotX.to = -10
                        orbitToRotY.to = startAngle

                        // 设置 Phase 2：从起始角度环绕 360°
                        root.orbitAngle = startAngle
                        orbitOrbitAnimation.from = startAngle
                        orbitOrbitAnimation.to = startAngle + 360

                        console.log("=== 环绕动画启动 ===")
                        console.log("起始角度: " + startAngle.toFixed(1) + "°")
                        console.log("轨道半径: " + orbitRadius.toFixed(0))

                        // 启动 Phase 1
                        orbitTransitionAnimation.start()
                    }
                }
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
                    onClicked: liXiang_L9.carPaintColor = parent.color
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
                    onClicked: liXiang_L9.carPaintColor = parent.color
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
                    onClicked: liXiang_L9.carPaintColor = parent.color
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
                    onClicked: liXiang_L9.carPaintColor = parent.color
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
                    onClicked: liXiang_L9.carPaintColor = parent.color
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

                onClicked: {
                    probeExposureControlRow.visible = !probeExposureControlRow.visible
                }
            }
        }
        Row {
            id: headlightRow
            anchors.left: probeExposureRow.right
            anchors.leftMargin: 5
            anchors.verticalCenter: parent.verticalCenter
            width: 70
            height: 50
            spacing: 5

            QuickButton {
                id: headlightButton
                width: 65
                height: 40
                anchors.verticalCenter: parent.verticalCenter
                buttonText: "前车灯"
                buttonColor: liXiang_L9.headlightOn ? "#FFCC00" : "#80AAAAAA"
                buttonSource: "qrc:/images/carlight.png"
                textColor: "white"
                font.pixelSize: 14
                iconSize: Qt.point(16, 16)
                iconMagin: 6

                onClicked: {
                    liXiang_L9.headlightOn = !liXiang_L9.headlightOn
                    console.log("前车灯: " + (liXiang_L9.headlightOn ? "开" : "关"))
                    liXiang_L9.printHeadlightInfo()
                }
            }
        }
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
                onMoved: liXiang_L9.wheelSteeringAngle = value
            }

            Label {text: wheelSlider.value; color: "white"}
        }
        Column {
            id: probeExposureControlRow
            anchors.left: parent.left
            anchors.leftMargin: 1100
            anchors.bottom: statusBarRect.top
            anchors.bottomMargin: 10
            visible: false
            spacing: 5

            // 第一行：环境光
            Row {
                spacing: 10
                Label {
                    text: "环境光: "
                    color: "white"
                    font.pixelSize: 14
                    width: 60
                    anchors.verticalCenter: parent.verticalCenter
                }
                Slider {
                    id: probeExposureSlider
                    width: 200
                    height: 20
                    from: 0
                    to: 5
                    stepSize: 0.1
                    value: 1
                    onMoved: sceneEnvironment.probeExposure = value
                }
                Label {
                    text: probeExposureSlider.value.toFixed(1)
                    color: "white"
                    font.pixelSize: 14
                    width: 30
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            // 第二行：平行光
            Row {
                spacing: 10
                Label {
                    text: "平行光: "
                    color: "white"
                    font.pixelSize: 14
                    width: 60
                    anchors.verticalCenter: parent.verticalCenter
                }
                Slider {
                    id: directionalLightSlider
                    width: 200
                    height: 20
                    from: 0
                    to: 10
                    stepSize: 0.1
                    value: 2.0
                    onMoved: {
                        directionalLight.brightness = value
                        liXiang_L9.directionalBrightness = value * 2.62  // 按比例缩放（原始5.24/2.0）
                    }
                }
                Label {
                    text: directionalLightSlider.value.toFixed(1)
                    color: "white"
                    font.pixelSize: 14
                    width: 30
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            // 第三行：屏幕光
            Row {
                spacing: 10
                Label {
                    text: "屏幕光: "
                    color: "white"
                    font.pixelSize: 14
                    width: 60
                    anchors.verticalCenter: parent.verticalCenter
                }
                Slider {
                    id: emissiveSlider
                    width: 200
                    height: 20
                    from: 0
                    to: 1
                    stepSize: 0.01
                    value: 1.0
                    onMoved: liXiang_L9.emissiveFactor = value
                }
                Label {
                    text: emissiveSlider.value.toFixed(2)
                    color: "white"
                    font.pixelSize: 14
                    width: 30
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }
    }
}
