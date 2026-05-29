import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node

    // 门状态属性
    property bool doorFLStatus: false  // 左前门状态：false=关闭, true=打开
    property bool doorBLStatus: false
    property bool doorFRStatus: false
    property bool doorBRStatus: false
    property bool trunkStatus: false

    // 左前门开合角度（供外部动画驱动）
    property real doorFLAngle: 0
    // 右前门开合角度（供外部动画驱动）
    property real doorFRAngle: 0
    // 左后门开合角度（供外部动画驱动）
    property real doorBLAngle: 0

    // Resources

    // Nodes:
    Node {
        id: rootNode
        objectName: "RootNode"
        Node {
            id: ctrl
            objectName: "Ctrl"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            Node {
                id: wheelFL
                objectName: "WheelFL"
                x: -1636.7625732421875
                y: -943.5015258789062
                eulerRotation.z: -90
                eulerRotation.y: -90
                eulerRotation.x: 90
                z: 379.3494567871094
                scale.x: 1
                scale.y: 1
                scale.z: 1
                Node {
                    id: liXiang_L9_WheelFL
                    eulerRotation.z: 0
                    eulerRotation.y: 0
                    eulerRotation.x: -90
                    objectName: "LiXiang_L9_WheelFL"
                    z: -104.96533203125
                    Model {
                        id: liXiang_L9_WheelFL_02
                        objectName: "LiXiang_L9_WheelFL_02"
                        x: 1440.9395751953125
                        y: 842.1873779296875
                        z: -414.96343994140625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_02_mesh.mesh"
                        materials: [
                            carpaint_Wheel_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelFL_03
                        objectName: "LiXiang_L9_WheelFL_03"
                        x: 1440.9395751953125
                        y: 842.1873779296875
                        z: -414.9634094238281
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_03_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelFL_04
                        objectName: "LiXiang_L9_WheelFL_04"
                        x: 1440.9398193359375
                        y: 842.1874389648438
                        z: -414.9634094238281
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_04_mesh.mesh"
                        materials: [
                            brakes_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelFL_05
                        objectName: "LiXiang_L9_WheelFL_05"
                        x: 1440.939697265625
                        y: 842.1873779296875
                        z: -414.96337890625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_05_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_WheelFL_06
                        objectName: "LiXiang_L9_WheelFL_06"
                        x: 1440.939697265625
                        y: 842.1874389648438
                        z: -414.9634094238281
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_06_mesh.mesh"
                        materials: [
                            carpaint_Grey_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelFL_07
                        objectName: "LiXiang_L9_WheelFL_07"
                        x: 1.22119140625
                        y: -106.2012939453125
                        z: 1.42376708984375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_07_mesh.mesh"
                        materials: [
                            defaultMaterial_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelFL_01
                        objectName: "LiXiang_L9_WheelFL_01"
                        x: 1440.939453125
                        y: 842.1873168945312
                        z: -414.96343994140625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_01_mesh.mesh"
                        materials: [
                            carpaint_Grey_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelFL_08
                        objectName: "LiXiang_L9_WheelFL_08"
                        x: 0.0001220703125
                        y: -6.67388916015625
                        z: 3.0517578125e-05
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_08_mesh.mesh"
                        materials: [
                            tire_material
                        ]
                    }
                }
            }
            Node {
                id: wheelBR
                objectName: "WheelBR"
                x: 1462.7518310546875
                y: 950.2604370117188
                z: 379.3494567871094
                rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                Node {
                    id: liXiang_L9_WheelBR
                    objectName: "LiXiang_L9_WheelBR"
                    y: -9.1552734375e-05
                    z: 104.39697265625
                    rotation: Qt.quaternion(-3.09086e-08, -3.09086e-08, 0.707107, 0.707107)
                    Model {
                        id: liXiang_L9_WheelBR_01
                        objectName: "LiXiang_L9_WheelBR_01"
                        x: 1440.9395751953125
                        y: 842.187255859375
                        z: -414.96343994140625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelBR_01_mesh.mesh"
                        materials: [
                            carpaint_Wheel_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelBR_02
                        objectName: "LiXiang_L9_WheelBR_02"
                        x: 1440.9395751953125
                        y: 842.187255859375
                        z: -414.9634094238281
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_03_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelBR_03
                        objectName: "LiXiang_L9_WheelBR_03"
                        x: 1440.939697265625
                        y: 842.1873168945312
                        z: -414.9634094238281
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_04_mesh.mesh"
                        materials: [
                            brakes_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelBR_04
                        objectName: "LiXiang_L9_WheelBR_04"
                        x: 1440.939697265625
                        y: 842.187255859375
                        z: -414.96337890625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelBR_04_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_WheelBR_05
                        objectName: "LiXiang_L9_WheelBR_05"
                        x: -1304.5675048828125
                        y: 842.187255859375
                        z: 737.00244140625
                        rotation: Qt.quaternion(-0.115408, -4.8464e-08, 0.993318, -4.8464e-08)
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_06_mesh.mesh"
                        materials: [
                            carpaint_Grey_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelBR_06
                        objectName: "LiXiang_L9_WheelBR_06"
                        x: 1.22119140625
                        y: -106.201416015625
                        z: 1.42376708984375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelBR_06_mesh.mesh"
                        materials: [
                            defaultMaterial_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelBR_07
                        objectName: "LiXiang_L9_WheelBR_07"
                        x: 1440.939453125
                        y: 842.1871948242188
                        z: -414.96343994140625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelBR_07_mesh.mesh"
                        materials: [
                            carpaint_Grey_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelBR_08
                        objectName: "LiXiang_L9_WheelBR_08"
                        x: 0.0001220703125
                        y: -6.67388916015625
                        z: 3.0517578125e-05
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_08_mesh.mesh"
                        materials: [
                            tire_material
                        ]
                    }
                }
            }
            Node {
                id: wheelFR
                objectName: "WheelFR"
                x: -1636.7625732421875
                y: 950.2604370117188
                eulerRotation.z: -90
                eulerRotation.y: -90
                eulerRotation.x: 90
                z: 379.3494567871094
                scale.x: 1
                scale.y: 1
                scale.z: 1
                Node {
                    id: liXiang_L9_WheelFR
                    objectName: "LiXiang_L9_WheelFR"
                    x: -0.0001220703125
                    y: -6.103515625e-05
                    z: 104.39697265625
                    rotation: Qt.quaternion(1.12382e-08, -7.30555e-08, 0.707107, 0.707107)
                    Model {
                        id: liXiang_L9_WheelFR_01
                        objectName: "LiXiang_L9_WheelFR_01"
                        x: 1440.9395751953125
                        y: 842.187255859375
                        z: -414.96343994140625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFR_01_mesh.mesh"
                        materials: [
                            carpaint_Wheel_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelFR_02
                        objectName: "LiXiang_L9_WheelFR_02"
                        x: 1440.9395751953125
                        y: 842.187255859375
                        z: -414.9634094238281
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_03_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelFR_03
                        objectName: "LiXiang_L9_WheelFR_03"
                        x: 1440.939697265625
                        y: 842.1873168945312
                        z: -414.9634094238281
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_04_mesh.mesh"
                        materials: [
                            brakes_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelFR_04
                        objectName: "LiXiang_L9_WheelFR_04"
                        x: 1440.939697265625
                        y: 842.1873168945312
                        z: -414.96337890625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFR_04_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_WheelFR_05
                        objectName: "LiXiang_L9_WheelFR_05"
                        x: 1440.939697265625
                        y: 842.1873168945312
                        z: -414.96343994140625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_06_mesh.mesh"
                        materials: [
                            carpaint_Grey_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelFR_06
                        objectName: "LiXiang_L9_WheelFR_06"
                        x: 1.22119140625
                        y: -106.201416015625
                        z: 1.42376708984375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFR_06_mesh.mesh"
                        materials: [
                            defaultMaterial_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelFR_07
                        objectName: "LiXiang_L9_WheelFR_07"
                        x: 1440.939453125
                        y: 842.1871948242188
                        z: -414.96343994140625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFR_07_mesh.mesh"
                        materials: [
                            carpaint_Grey_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelFR_08
                        objectName: "LiXiang_L9_WheelFR_08"
                        x: 0.0001220703125
                        y: -6.67388916015625
                        z: 3.0517578125e-05
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_08_mesh.mesh"
                        materials: [
                            tire_material
                        ]
                    }
                }
            }
            Node {
                id: wheelBL
                objectName: "WheelBL"
                x: 1462.7518310546875
                y: -943.5015258789062
                z: 379.3494567871094
                rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                Node {
                    id: liXiang_L9_WheelBL
                    objectName: "LiXiang_L9_WheelBL"
                    z: -104.96527099609375
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    Model {
                        id: liXiang_L9_WheelBL_02
                        objectName: "LiXiang_L9_WheelBL_02"
                        x: 1440.9395751953125
                        y: 842.187255859375
                        z: -414.96343994140625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelBL_02_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_WheelBL_03
                        objectName: "LiXiang_L9_WheelBL_03"
                        x: 1440.9395751953125
                        y: 842.187255859375
                        z: -414.9634094238281
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_03_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelBL_04
                        objectName: "LiXiang_L9_WheelBL_04"
                        x: 1440.939697265625
                        y: 842.1873168945312
                        z: -414.9634094238281
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_04_mesh.mesh"
                        materials: [
                            brakes_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelBL_05
                        objectName: "LiXiang_L9_WheelBL_05"
                        x: 1440.939697265625
                        y: 842.187255859375
                        z: -414.96337890625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelBL_05_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_WheelBL_06
                        objectName: "LiXiang_L9_WheelBL_06"
                        x: -1304.5675048828125
                        y: 842.1873168945312
                        z: 737.00244140625
                        rotation: Qt.quaternion(-0.115408, -4.8464e-08, 0.993318, -4.8464e-08)
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_06_mesh.mesh"
                        materials: [
                            carpaint_Grey_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelBL_07
                        objectName: "LiXiang_L9_WheelBL_07"
                        x: 1.22119140625
                        y: -106.201416015625
                        z: 1.42376708984375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelBL_07_mesh.mesh"
                        materials: [
                            defaultMaterial_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelBL_01
                        objectName: "LiXiang_L9_WheelBL_01"
                        x: 1440.939453125
                        y: 842.1871948242188
                        z: -414.96343994140625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelBL_01_mesh.mesh"
                        materials: [
                            carpaint_Grey_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_WheelBL_08
                        objectName: "LiXiang_L9_WheelBL_08"
                        x: 0.0001220703125
                        y: -6.67388916015625
                        z: 3.0517578125e-05
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_WheelFL_08_mesh.mesh"
                        materials: [
                            tire_material
                        ]
                    }
                }
            }
            // Node {
            //     id: hydraulic_rod_Right
            //     objectName: "Hydraulic_rod_Right"
            //     x: 2052.09228515625
            //     y: 592.2816772460938
            //     z: 1533.7449951171875
            //     rotation: Qt.quaternion(0.703166, 0.706988, -0.0745511, 0.0129827)
            //     Model {
            //         id: hydraulic_rod_Right_01
            //         objectName: "Hydraulic_rod_Right_01"
            //         x: -2247.914794921875
            //         y: -1569.359130859375
            //         z: 588.63134765625
            //         rotation: Qt.quaternion(0.707107, -0.707107, -6.84886e-08, 1.36977e-07)
            //         scale.x: 1
            //         scale.y: 1
            //         scale.z: 1
            //         source: "qrc:/LiXiang_L9/meshes/hydraulic_rod_Right_01_mesh.mesh"
            //         materials: [
            //             carpaint_Black_material
            //         ]
            //         Model {
            //             id: hydraulic_rod_Right_00
            //             objectName: "Hydraulic_rod_Right_00"
            //             x: 4.1776580810546875
            //             y: -1050.515380859375
            //             z: -2602.71484375
            //             rotation: Qt.quaternion(0.858191, -0.135467, -0.489077, -0.0772029)
            //             source: "qrc:/LiXiang_L9/meshes/hydraulic_rod_Right_00_mesh.mesh"
            //             materials: [
            //                 carpaint_Black_material
            //             ]
            //         }
            //     }
            // }
            // Node {
            //     id: hydraulic_rod_Left
            //     objectName: "Hydraulic_rod_Left"
            //     x: 2052.0927734375
            //     y: -587.00048828125
            //     z: 1533.746337890625
            //     rotation: Qt.quaternion(0.706988, 0.703166, -0.0129826, 0.0745512)
            //     Model {
            //         id: hydraulic_rod_Left_00
            //         objectName: "Hydraulic_rod_Left_00"
            //         x: -2247.916259765625
            //         y: -1569.3621826171875
            //         z: -590.6517333984375
            //         rotation: Qt.quaternion(0.707107, -0.707107, -7.11228e-08, 1.84393e-08)
            //         scale.x: 1
            //         scale.y: 1
            //         scale.z: 1
            //         source: "qrc:/LiXiang_L9/meshes/hydraulic_rod_Left_00_mesh.mesh"
            //         materials: [
            //             carpaint_Black_material
            //         ]
            //         Model {
            //             id: hydraulic_rod_Left_01
            //             objectName: "Hydraulic_rod_Left_01"
            //             x: -115.65374755859375
            //             y: 910.3417358398438
            //             z: -2651.81787109375
            //             rotation: Qt.quaternion(0.875347, 0.108755, -0.464866, 0.0764175)
            //             scale.x: 1
            //             scale.y: 1
            //             scale.z: 1
            //             source: "qrc:/LiXiang_L9/meshes/hydraulic_rod_Left_01_mesh.mesh"
            //             materials: [
            //                 carpaint_Black_material
            //             ]
            //         }
            //     }
            // }
            Node {
                id: trunk
                objectName: "Trunk"
                x: 1978.380126953125
                y: -7.571669993922114e-05
                z: 1732.196533203125
                rotation: Qt.quaternion(0.707107, 0.707107, -8.42937e-08, 8.42937e-08)
                Node {
                    id: liXiang_L9_Trunk
                    objectName: "LiXiang_L9_Trunk"
                    x: 319.7716064453125
                    y: -510.4287109375
                    z: -0.00048828125
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    Model {
                        id: liXiang_L9_Trunk_00
                        objectName: "LiXiang_L9_Trunk_00"
                        x: -2493.974609375
                        y: 3.6509597301483154
                        z: -1257.3818359375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_00_mesh.mesh"
                        materials: [
                            taillight_Glass_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Trunk_01
                        objectName: "LiXiang_L9_Trunk_01"
                        x: -2493.974365234375
                        y: 3.6512575149536133
                        opacity: 0.8
                        z: -1257.3817138671875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_01_mesh.mesh"
                        materials: [
                            glass_darkB_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Trunk_02
                        objectName: "LiXiang_L9_Trunk_02"
                        x: -2493.974365234375
                        y: 3.6511354446411133
                        z: -1257.3817138671875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_02_mesh.mesh"
                        materials: [
                            lamp_Red_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Trunk_03
                        objectName: "LiXiang_L9_Trunk_03"
                        x: -2493.974365234375
                        y: 3.6511354446411133
                        z: -1257.3817138671875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_03_mesh.mesh"
                        materials: [
                            glass_Lamp_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Trunk_04
                        objectName: "LiXiang_L9_Trunk_04"
                        x: 283.87451171875
                        y: -0.00054931640625
                        z: -346.7652587890625
                        rotation: Qt.quaternion(-2.31276e-07, -0.136031, -3.05994e-07, 0.990705)
                        scale.x: 1
                        scale.y: 1
                        scale.z: 1
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_04_mesh.mesh"
                        materials: [
                            license_plate_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Trunk_05
                        objectName: "LiXiang_L9_Trunk_05"
                        x: 281.67919921875
                        y: -0.00054931640625
                        z: -347.64996337890625
                        rotation: Qt.quaternion(-2.31276e-07, -0.136031, -3.05994e-07, 0.990705)
                        scale.x: 1
                        scale.y: 1
                        scale.z: 1
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_05_mesh.mesh"
                        materials: [
                            plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Trunk_06
                        objectName: "LiXiang_L9_Trunk_06"
                        x: -2493.974365234375
                        y: 3.6512575149536133
                        z: -1257.3817138671875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_06_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Trunk_07
                        objectName: "LiXiang_L9_Trunk_07"
                        x: -2493.97412109375
                        y: 3.6509599685668945
                        z: -1257.38134765625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_07_mesh.mesh"
                        materials: [
                            taillight_Glass_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Trunk_08
                        objectName: "LiXiang_L9_Trunk_08"
                        x: -2493.974365234375
                        y: 3.6512451171875
                        z: -1257.3818359375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_08_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Trunk_09
                        objectName: "LiXiang_L9_Trunk_09"
                        x: -2493.974365234375
                        y: 3.6512451171875
                        z: -1257.3818359375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_09_mesh.mesh"
                        materials: [
                            plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Trunk_10
                        objectName: "LiXiang_L9_Trunk_10"
                        x: -2493.974365234375
                        y: 3.6512451171875
                        z: -1257.3818359375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_10_mesh.mesh"
                        materials: black_Plastic_bump_material
                    }
                    Model {
                        id: liXiang_L9_Trunk_11
                        objectName: "LiXiang_L9_Trunk_11"
                        x: -2493.974365234375
                        y: 3.6512575149536133
                        z: -1257.3817138671875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_11_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Trunk_12
                        objectName: "LiXiang_L9_Trunk_12"
                        x: -2493.974365234375
                        y: 3.6512649059295654
                        z: -1257.3817138671875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_12_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Trunk_13
                        objectName: "LiXiang_L9_Trunk_13"
                        x: -2493.974609375
                        y: 3.6510009765625
                        z: -1257.381591796875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_13_mesh.mesh"
                        materials: glass_darkB_material
                    }
                    Model {
                        id: liXiang_L9_Trunk_14
                        objectName: "LiXiang_L9_Trunk_14"
                        x: -2493.974365234375
                        y: 3.6512575149536133
                        z: -1257.3817138671875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_14_mesh.mesh"
                        materials: [
                            glass_Lamp_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Trunk_15
                        objectName: "LiXiang_L9_Trunk_15"
                        x: -2493.974365234375
                        y: 3.6512451171875
                        z: -1257.3818359375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_15_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Trunk_16
                        objectName: "LiXiang_L9_Trunk_16"
                        x: -2493.974365234375
                        y: 3.6512649059295654
                        z: -1257.3817138671875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_16_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Trunk_17
                        objectName: "LiXiang_L9_Trunk_17"
                        x: -2493.97412109375
                        y: 3.6509523391723633
                        z: -1257.381591796875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_17_mesh.mesh"
                        materials: [
                            glass_Lamp_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Trunk_18
                        objectName: "LiXiang_L9_Trunk_18"
                        x: -2493.974365234375
                        y: 3.6512451171875
                        z: -1257.3818359375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_18_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_Trunk_20
                        objectName: "LiXiang_L9_Trunk_20"
                        x: -2493.974365234375
                        y: 3.6512575149536133
                        z: -1257.3817138671875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_20_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Trunk_21
                        objectName: "LiXiang_L9_Trunk_21"
                        x: -2493.974365234375
                        y: 3.6512451171875
                        z: -1257.3818359375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Trunk_21_mesh.mesh"
                        materials: [
                            black_Plastic_bump_material
                        ]
                    }
                }
            }
            // 左后门旋转控制节点
            Node {
                id: doorBLRotator
                objectName: "DoorBLRotator"
                x: 97.53690338134766
                y: -944.9375610351562
                z: 749.7769165039062

                // 绕竖直轴旋转，角度由根节点 doorBLAngle 驱动
                eulerRotation.z: -node.doorBLAngle

                Node {
                    id: doorBL
                    objectName: "DoorBL"
                    x: 0
                    y: 0
                    z: 0
                    rotation: Qt.quaternion(0.707107, 0.707107, -8.42937e-08, -8.42937e-08)
                Node {
                    id: liXiang_L9_DoorBL
                    objectName: "LiXiang_L9_DoorBL"
                    x: 543.2679443359375
                    y: 245.03472900390625
                    z: -127.2945556640625
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    Model {
                        id: liXiang_L9_DoorBL_16
                        objectName: "LiXiang_L9_DoorBL_16"
                        x: -836.6277465820312
                        y: 821.2938842773438
                        z: -1030.425537109375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBL_16_mesh.mesh"
                        materials: [
                            plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBL_15
                        objectName: "LiXiang_L9_DoorBL_15"
                        x: -836.6278076171875
                        y: 821.2940673828125
                        z: -1030.4256591796875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBL_15_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBL_14
                        objectName: "LiXiang_L9_DoorBL_14"
                        x: -836.6278076171875
                        y: 821.2940673828125
                        z: -1030.425537109375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBL_14_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_DoorBL_13
                        objectName: "LiXiang_L9_DoorBL_13"
                        x: -836.6278686523438
                        y: 814.819091796875
                        opacity: 0.8
                        z: -1025.7386474609375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBL_13_mesh.mesh"
                        materials: [
                            glass_darkB_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBL_12
                        objectName: "LiXiang_L9_DoorBL_12"
                        x: -836.6278076171875
                        y: 821.2940673828125
                        z: -1030.425537109375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBL_12_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBL_11
                        objectName: "LiXiang_L9_DoorBL_11"
                        x: -836.6278076171875
                        y: 821.2940673828125
                        z: -1030.425537109375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBL_11_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBL_10
                        objectName: "LiXiang_L9_DoorBL_10"
                        x: -836.6278076171875
                        y: 821.2940673828125
                        z: -1030.425537109375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBL_10_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBL_09
                        objectName: "LiXiang_L9_DoorBL_09"
                        x: -836.6278076171875
                        y: 821.2940673828125
                        z: -1030.425537109375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBL_09_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_DoorBL_08
                        objectName: "LiXiang_L9_DoorBL_08"
                        x: -852.9262084960938
                        y: 802.8814086914062
                        z: -1030.425537109375
                        rotation: Qt.quaternion(0.999941, 0, 0, 0.0108633)
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBL_08_mesh.mesh"
                        materials: [
                            interior_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBL_07
                        objectName: "LiXiang_L9_DoorBL_07"
                        x: -836.6278076171875
                        y: 821.2940673828125
                        z: -1030.425537109375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBL_07_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBL_06
                        objectName: "LiXiang_L9_DoorBL_06"
                        x: -836.6278076171875
                        y: 816.0159301757812
                        z: -1030.425537109375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBL_06_mesh.mesh"
                        materials: interior_material
                    }
                    Model {
                        id: liXiang_L9_DoorBL_05
                        objectName: "LiXiang_L9_DoorBL_05"
                        x: -836.6278686523438
                        y: 821.2941284179688
                        z: -1030.425537109375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBL_05_mesh.mesh"
                        materials: [
                            black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBL_04
                        objectName: "LiXiang_L9_DoorBL_04"
                        x: -836.6278076171875
                        y: 821.2941284179688
                        z: -1030.42578125
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBL_04_mesh.mesh"
                        materials: glass_darkB_material
                    }
                    Model {
                        id: liXiang_L9_DoorBL_03
                        objectName: "LiXiang_L9_DoorBL_03"
                        x: -836.627685546875
                        y: 822.3588256835938
                        opacity: 0.8
                        z: -1030.4256591796875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBL_03_mesh.mesh"
                        materials: [
                            glass_darkB_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBL_02
                        objectName: "LiXiang_L9_DoorBL_02"
                        x: -836.6278076171875
                        y: 821.2940673828125
                        z: -1030.42529296875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBL_02_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBL_01
                        objectName: "LiXiang_L9_DoorBL_01"
                        x: -836.6278076171875
                        y: 821.2940673828125
                        z: -1030.425537109375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBL_01_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBL_00
                        objectName: "LiXiang_L9_DoorBL_00"
                        x: -836.6278076171875
                        y: 821.2940673828125
                        z: -1030.425537109375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBL_00_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                }
                Node {
                    id: handleBL
                    objectName: "HandleBL"
                    x: -100
                    y: 294
                    z: -927
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    Node {
                        id: liXiang_L9_handleBL
                        objectName: "LiXiang_L9_handleBL"
                        y: 18.869873046875
                        z: -0.01318359375
                        Model {
                            id: liXiang_L9_handleBL_00
                            objectName: "LiXiang_L9_handleBL_00"
                            x: -195.822998046875
                            y: 3.6508913040161133
                            z: -1078.568115234375
                            source: "qrc:/LiXiang_L9/meshes/liXiang_L9_handleBL_00_mesh.mesh"
                            materials: [
                                plastic_material
                            ]
                        }
                        Model {
                            id: liXiang_L9_handleBL_01
                            objectName: "LiXiang_L9_handleBL_01"
                            x: -195.822998046875
                            y: 3.6508913040161133
                            z: -1078.568115234375
                            source: "qrc:/LiXiang_L9/meshes/liXiang_L9_handleBL_01_mesh.mesh"
                            materials: [
                                carpaint_green_material
                            ]
                        }
                    }
                }
            }
            }
            // 左前门旋转控制节点
            Node {
                id: doorFLRotator
                objectName: "DoorFLRotator"
                x: -1017.096435546875
                y: -944.8876342773438
                z: 749.7769165039062

                // 绕竖直轴旋转，角度由根节点 doorFLAngle 驱动
                eulerRotation.z: -node.doorFLAngle

                Node {
                    id: doorFL
                    objectName: "DoorFL"
                    x: 0
                    y: 0
                    z: 0
                    rotation: Qt.quaternion(0.707107, 0.707107, -8.42937e-08, -8.42937e-08)

                    Node {
                        id: handleFL
                        objectName: "HandleFL"
                        x: 863.68310546875
                        y: 261.54486083984375
                        z: 23.19415283203125
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        Node {
                            id: handleFL187
                            objectName: "HandleFL"
                            x: 150
                            y: 970
                            z: 0
                            Model {
                                id: liXiang_L9_HandleFL_01
                                objectName: "LiXiang_L9_HandleFL_01"
                                x: -195.82293701171875
                                y: 3.65087890625
                                z: -1046.92041015625
                                source: "qrc:/LiXiang_L9/meshes/liXiang_L9_HandleFL_01_mesh.mesh"
                                materials: [
                                    plastic_material
                                ]
                            }
                            Model {
                                id: liXiang_L9_HandleFL_00
                                objectName: "LiXiang_L9_HandleFL_00"
                                x: -195.8229522705078
                                y: 3.6510009765625
                                z: -1046.920166015625
                                source: "qrc:/LiXiang_L9/meshes/liXiang_L9_HandleFL_00_mesh.mesh"
                                materials: [
                                    carpaint_green_material
                                ]
                            }
                        }
                    }
                Node {
                    id: liXiang_L9_DoorFL
                    objectName: "LiXiang_L9_DoorFL"
                    x: 564.5479736328125
                    y: 229.0186767578125
                    z: -47.56427001953125
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    Model {
                        id: liXiang_L9_DoorFL_00
                        objectName: "LiXiang_L9_DoorFL_00"
                        x: 256.7254638671875
                        y: 900.974365234375
                        z: -1014.4097290039062
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_00_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFL_01
                        objectName: "LiXiang_L9_DoorFL_01"
                        x: 269.40557861328125
                        y: 885.7379760742188
                        z: -1014.4097900390625
                        rotation: Qt.quaternion(0.999964, 0, 0, -0.00851025)
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_01_mesh.mesh"
                        materials: [
                            interior_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFL_02
                        objectName: "LiXiang_L9_DoorFL_02"
                        x: 256.7254638671875
                        y: 900.9744873046875
                        z: -1014.409423828125
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_02_mesh.mesh"
                        materials: [
                            defaultMaterial_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFL_03
                        objectName: "LiXiang_L9_DoorFL_03"
                        x: 256.7254638671875
                        y: 900.9744262695312
                        z: -1014.4097290039062
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_03_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_DoorFL_04
                        objectName: "LiXiang_L9_DoorFL_04"
                        x: 256.671142578125
                        y: 900.9744262695312
                        z: -1014.4097290039062
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_04_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFL_05
                        objectName: "LiXiang_L9_DoorFL_05"
                        x: 261.6301574707031
                        y: 896.1123046875
                        opacity: 0.6
                        z: -1007.7086791992188
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_05_mesh.mesh"
                        materials: [
                            glassWinds_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFL_06
                        objectName: "LiXiang_L9_DoorFL_06"
                        x: 256.7254638671875
                        y: 900.9744262695312
                        z: -1014.4097290039062
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_06_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFL_07
                        objectName: "LiXiang_L9_DoorFL_07"
                        x: 256.7254638671875
                        y: 900.9744262695312
                        z: -1014.4097290039062
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_07_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFL_08
                        objectName: "LiXiang_L9_DoorFL_08"
                        x: 256.72564697265625
                        y: 898.8203735351562
                        z: -1014.4093627929688
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_08_mesh.mesh"
                        materials: interior_material
                    }
                    Model {
                        id: liXiang_L9_DoorFL_09
                        objectName: "LiXiang_L9_DoorFL_09"
                        x: 256.7254638671875
                        y: 900.9744262695312
                        z: -1014.4097290039062
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_09_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_DoorFL_10
                        objectName: "LiXiang_L9_DoorFL_10"
                        x: 256.7254638671875
                        y: 900.9744262695312
                        z: -1014.4097290039062
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_10_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFL_11
                        objectName: "LiXiang_L9_DoorFL_11"
                        x: 256.7254638671875
                        y: 900.9744262695312
                        z: -1014.4097290039062
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_11_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFL_12
                        objectName: "LiXiang_L9_DoorFL_12"
                        x: 256.7254638671875
                        y: 900.9744262695312
                        z: -1012.9782104492188
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_12_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_DoorFL_13
                        objectName: "LiXiang_L9_DoorFL_13"
                        x: 256.7254638671875
                        y: 900.9747314453125
                        z: -1014.4099731445312
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_13_mesh.mesh"
                        materials: mirro2
                    }
                    Model {
                        id: liXiang_L9_DoorFL_14
                        objectName: "LiXiang_L9_DoorFL_14"
                        x: 256.7254638671875
                        y: 900.9744262695312
                        z: -1014.4097290039062
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_14_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFL_15
                        objectName: "LiXiang_L9_DoorFL_15"
                        x: 256.7254638671875
                        y: 900.9744262695312
                        z: -1014.4097290039062
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_15_mesh.mesh"
                        materials: [
                            glass_Lamp_L_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFL_16
                        objectName: "LiXiang_L9_DoorFL_16"
                        x: 256.7254638671875
                        y: 900.9744262695312
                        z: -1014.4097290039062
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_16_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFL_17
                        objectName: "LiXiang_L9_DoorFL_17"
                        x: 256.7254638671875
                        y: 900.9744262695312
                        z: -1014.4097290039062
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_17_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFL_18
                        objectName: "LiXiang_L9_DoorFL_18"
                        x: 256.7254638671875
                        y: 900.9744262695312
                        z: -1014.4097290039062
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_18_mesh.mesh"
                        materials: glass_darkB_material
                    }
                    Model {
                        id: liXiang_L9_DoorFL_19
                        objectName: "LiXiang_L9_DoorFL_19"
                        x: 256.7254638671875
                        y: 900.9744262695312
                        z: -1014.4097290039062
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_19_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_DoorFL_20
                        objectName: "LiXiang_L9_DoorFL_20"
                        x: 256.72552490234375
                        y: 900.9744262695312
                        z: -1014.4097290039062
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_20_mesh.mesh"
                        materials: [
                            metallic_paint_Lamp_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFL_21
                        objectName: "LiXiang_L9_DoorFL_21"
                        x: 256.72552490234375
                        y: 898.29638671875
                        z: -1014.40966796875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFL_21_mesh.mesh"
                        materials: [
                            plastic_material
                        ]
                    }
                }
                }
            }
            Node {
                id: doorBR
                objectName: "DoorBR"
                x: 97.52601623535156
                y: 947.8731079101562
                z: 749.7769165039062
                rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                Node {
                    id: liXiang_L9_DoorBR
                    objectName: "LiXiang_L9_DoorBR"
                    x: 543.2789306640625
                    y: 244.97076416015625
                    z: 132.46270751953125
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    Model {
                        id: liXiang_L9_DoorBR_16
                        objectName: "LiXiang_L9_DoorBR_16"
                        x: -836.6278076171875
                        y: -811.759521484375
                        z: -1030.3616943359375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBR_16_mesh.mesh"
                        materials: [
                            defaultMaterial_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBR_15
                        objectName: "LiXiang_L9_DoorBR_15"
                        x: -836.6278686523438
                        y: -811.7593994140625
                        z: -1030.361572265625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBR_15_mesh.mesh"
                        materials: interior_material
                    }
                    Model {
                        id: liXiang_L9_DoorBR_14
                        objectName: "LiXiang_L9_DoorBR_14"
                        x: -836.6278686523438
                        y: -811.7593383789062
                        z: -1030.361572265625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBR_14_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBR_13
                        objectName: "LiXiang_L9_DoorBR_13"
                        x: -836.6278686523438
                        y: -811.7593383789062
                        z: -1030.361572265625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBR_13_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_DoorBR_12
                        objectName: "LiXiang_L9_DoorBR_12"
                        x: -836.6278686523438
                        y: -810.5881958007812
                        opacity: 0.8
                        z: -1023.97119140625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBR_12_mesh.mesh"
                        materials: [
                            glass_darkB_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBR_11
                        objectName: "LiXiang_L9_DoorBR_11"
                        x: -836.6278686523438
                        y: -811.75927734375
                        z: -1030.36181640625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBR_11_mesh.mesh"
                        materials: glass_darkB_material
                    }
                    Model {
                        id: liXiang_L9_DoorBR_10
                        objectName: "LiXiang_L9_DoorBR_10"
                        x: -836.6278686523438
                        y: -811.7593383789062
                        z: -1030.361572265625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBR_10_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBR_09
                        objectName: "LiXiang_L9_DoorBR_09"
                        x: -836.6278686523438
                        y: -811.7593994140625
                        z: -1030.361572265625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBR_09_mesh.mesh"
                        materials: [
                            interior_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBR_08
                        objectName: "LiXiang_L9_DoorBR_08"
                        x: -836.6278686523438
                        y: -811.7593383789062
                        z: -1030.361572265625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBR_08_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_DoorBR_07
                        objectName: "LiXiang_L9_DoorBR_07"
                        x: -836.6278686523438
                        y: -811.7593383789062
                        z: -1030.361572265625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBR_07_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBR_06
                        objectName: "LiXiang_L9_DoorBR_06"
                        x: -836.6278686523438
                        y: -811.75927734375
                        z: -1030.3614501953125
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBR_06_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBR_05
                        objectName: "LiXiang_L9_DoorBR_05"
                        x: -836.6278686523438
                        y: -811.7593383789062
                        z: -1030.361572265625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBR_05_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBR_04
                        objectName: "LiXiang_L9_DoorBR_04"
                        x: -836.6278686523438
                        y: -811.7593383789062
                        z: -1030.361572265625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBR_04_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBR_03
                        objectName: "LiXiang_L9_DoorBR_03"
                        x: -836.6278686523438
                        y: -811.7593994140625
                        z: -1030.361572265625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBR_03_mesh.mesh"
                        materials: [
                            black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBR_02
                        objectName: "LiXiang_L9_DoorBR_02"
                        x: -836.6279296875
                        y: -812.3302001953125
                        opacity: 0.8
                        z: -1030.361572265625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBR_02_mesh.mesh"
                        materials: [
                            glass_darkB_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBR_01
                        objectName: "LiXiang_L9_DoorBR_01"
                        x: -836.6278686523438
                        y: -811.75927734375
                        z: -1030.361572265625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBR_01_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorBR_00
                        objectName: "LiXiang_L9_DoorBR_00"
                        x: -640.8048095703125
                        y: -815.4104614257812
                        z: -994.7476806640625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorBR_00_mesh.mesh"
                        materials: [
                            plastic_material
                        ]
                    }
                }
                Node {
                    id: handleBR
                    objectName: "HandleBR"
                    x: 902.9248046875
                    y: 293.19036865234375
                    z: -9.95977783203125
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    Node {
                        id: liXiang_L9_handleBR
                        objectName: "LiXiang_L9_handleBR"
                        y: -18.8699951171875
                        z: -0.013427734375
                        Model {
                            id: liXiang_L9_handleBR_00
                            objectName: "LiXiang_L9_handleBR_00"
                            x: -1000.4508056640625
                            y: -938.9627075195312
                            z: -1078.5679931640625
                            source: "qrc:/LiXiang_L9/meshes/liXiang_L9_handleBR_00_mesh.mesh"
                            materials: [
                                carpaint_green_material
                            ]
                        }
                        Model {
                            id: liXiang_L9_handleBR_01
                            objectName: "LiXiang_L9_handleBR_01"
                            x: -1000.4508056640625
                            y: -938.9627075195312
                            z: -1078.5679931640625
                            source: "qrc:/LiXiang_L9/meshes/liXiang_L9_handleBR_01_mesh.mesh"
                            materials: [
                                plastic_material
                            ]
                        }
                    }
                }
            }
            // 右前门旋转控制节点
            Node {
                id: doorFRRotator
                objectName: "DoorFRRotator"
                x: -1017.096435546875
                y: 947.8298950195312
                z: 749.7769165039062

                // 绕竖直轴旋转，角度由根节点 doorFRAngle 驱动
                eulerRotation.z: node.doorFRAngle

                Node {
                    id: doorFR
                    objectName: "DoorFR"
                    x: 0
                    y: 0
                    z: 0
                    rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                Node {
                    id: liXiang_L9_DoorFR
                    objectName: "LiXiang_L9_DoorFR"
                    x: 564.4366455078125
                    y: 229.002685546875
                    z: 50.50628662109375
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    Model {
                        id: liXiang_L9_DoorFR_00
                        objectName: "LiXiang_L9_DoorFR_00"
                        x: 452.6597900390625
                        y: -897.323486328125
                        z: -978.779541015625
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_00_mesh.mesh"
                        materials: [
                            plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFR_01
                        objectName: "LiXiang_L9_DoorFR_01"
                        x: 256.8368225097656
                        y: -887.8656005859375
                        opacity: 0.6
                        z: -1010.9046020507812
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_01_mesh.mesh"
                        materials: [
                            glassWinds_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFR_02
                        objectName: "LiXiang_L9_DoorFR_02"
                        x: 256.8367919921875
                        y: -893.6724853515625
                        z: -1014.3933715820312
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_02_mesh.mesh"
                        materials: [
                            glass_Lamp_L_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFR_03
                        objectName: "LiXiang_L9_DoorFR_03"
                        x: 256.8367919921875
                        y: -893.6724853515625
                        z: -1014.3933715820312
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_03_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFR_04
                        objectName: "LiXiang_L9_DoorFR_04"
                        x: 256.8367919921875
                        y: -893.6724853515625
                        z: -1014.3933715820312
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_04_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_DoorFR_05
                        objectName: "LiXiang_L9_DoorFR_05"
                        x: 256.8367919921875
                        y: -893.6727294921875
                        z: -1014.3930053710938
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_05_mesh.mesh"
                        materials: mirro2
                    }
                    Model {
                        id: liXiang_L9_DoorFR_06
                        objectName: "LiXiang_L9_DoorFR_06"
                        x: 256.8367919921875
                        y: -893.6724853515625
                        z: -1014.3933715820312
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_06_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFR_07
                        objectName: "LiXiang_L9_DoorFR_07"
                        x: 452.659912109375
                        y: -897.3237915039062
                        z: -1014.393310546875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_07_mesh.mesh"
                        materials: [
                            metallic_paint_Lamp_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFR_08
                        objectName: "LiXiang_L9_DoorFR_08"
                        x: 256.8367919921875
                        y: -893.6724853515625
                        z: -1014.3933715820312
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_08_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFR_09
                        objectName: "LiXiang_L9_DoorFR_09"
                        x: 256.8367919921875
                        y: -893.6724853515625
                        z: -1014.3933715820312
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_09_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFR_10
                        objectName: "LiXiang_L9_DoorFR_10"
                        x: 256.8367919921875
                        y: -893.6729736328125
                        z: -1014.393310546875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_10_mesh.mesh"
                        materials: [
                            defaultMaterial_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFR_11
                        objectName: "LiXiang_L9_DoorFR_11"
                        x: 256.8367919921875
                        y: -893.6725463867188
                        z: -1014.3933715820312
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_11_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFR_12
                        objectName: "LiXiang_L9_DoorFR_12"
                        x: 256.8367919921875
                        y: -893.6725463867188
                        z: -1014.3933715820312
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_12_mesh.mesh"
                        materials: interior_material
                    }
                    Model {
                        id: liXiang_L9_DoorFR_13
                        objectName: "LiXiang_L9_DoorFR_13"
                        x: 256.8367919921875
                        y: -893.6725463867188
                        z: -1014.3933715820312
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_13_mesh.mesh"
                        materials: [
                            interior_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFR_14
                        objectName: "LiXiang_L9_DoorFR_14"
                        x: 256.8367919921875
                        y: -893.6724853515625
                        z: -1014.3933715820312
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_14_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_DoorFR_15
                        objectName: "LiXiang_L9_DoorFR_15"
                        x: 256.8367919921875
                        y: -893.6726684570312
                        z: -1014.3932495117188
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_15_mesh.mesh"
                        materials: glass_darkB_material
                    }
                    Model {
                        id: liXiang_L9_DoorFR_16
                        objectName: "LiXiang_L9_DoorFR_16"
                        x: 256.8367919921875
                        y: -893.6724853515625
                        z: -1014.3933715820312
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_16_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFR_17
                        objectName: "LiXiang_L9_DoorFR_17"
                        x: 256.8367919921875
                        y: -893.6724853515625
                        z: -1014.3933715820312
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_17_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFR_18
                        objectName: "LiXiang_L9_DoorFR_18"
                        x: 256.8367919921875
                        y: -893.6724853515625
                        z: -1014.3933715820312
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_18_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFR_19
                        objectName: "LiXiang_L9_DoorFR_19"
                        x: 256.8367919921875
                        y: -893.6726684570312
                        z: -1014.3932495117188
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_19_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_DoorFR_20
                        objectName: "LiXiang_L9_DoorFR_20"
                        x: 256.8367919921875
                        y: -893.672607421875
                        z: -1014.3936767578125
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_20_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_DoorFR_21
                        objectName: "LiXiang_L9_DoorFR_21"
                        x: 256.8367919921875
                        y: -893.6724853515625
                        z: -1014.3933715820312
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_DoorFR_21_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                }
                Node {
                    id: handleFL001
                    objectName: "HandleFL001"
                    x: 863.8258056640625
                    y: 261.54461669921875
                    z: -20.25189208984375
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    Node {
                        id: liXiang_L9_handleFR
                        objectName: "LiXiang_L9_handleFR"
                        x: 3.0517578125e-05
                        y: -18.72119140625
                        z: -0.0155029296875
                        Model {
                            id: liXiang_L9_HandleFL_003
                            objectName: "LiXiang_L9_HandleFL_003"
                            x: -0.137969970703125
                            y: -2.5736083984375
                            z: -0.15283203125
                            source: "qrc:/LiXiang_L9/meshes/liXiang_L9_HandleFL_003_mesh.mesh"
                            materials: [
                                plastic_material
                            ]
                        }
                        Model {
                            id: liXiang_L9_HandleFL_002
                            objectName: "LiXiang_L9_HandleFL_002"
                            x: -0.1427001953125
                            y: 18.7213134765625
                            z: 0.0157470703125
                            source: "qrc:/LiXiang_L9/meshes/liXiang_L9_HandleFL_002_mesh.mesh"
                            materials: [
                                carpaint_green_material
                            ]
                        }
                    }
                }
            }
            }
            Node {
                id: interior
                objectName: "interior"
                rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                Node {
                    id: liXiang_L9_interior
                    objectName: "LiXiang_L9_interior"
                    x: 568.7998657226562
                    y: 1078.9888916015625
                    z: 0.3621826171875
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    Model {
                        id: liXiang_L9_interior_00
                        objectName: "LiXiang_L9_interior_00"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_00_mesh.mesh"
                        materials: [
                            black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_01
                        objectName: "LiXiang_L9_interior_01"
                        x: -764.622802734375
                        y: 4.013397216796875
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_01_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_02
                        objectName: "LiXiang_L9_interior_02"
                        x: -764.6229248046875
                        y: 4.013397216796875
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_02_mesh.mesh"
                        materials: [
                            brakes_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_03
                        objectName: "LiXiang_L9_interior_03"
                        x: -764.622802734375
                        y: 4.013427734375
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_03_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_04
                        objectName: "LiXiang_L9_interior_04"
                        x: -764.622802734375
                        y: 4.013397216796875
                        z: -1114.602783203125
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_04_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_05
                        objectName: "LiXiang_L9_interior_05"
                        x: -764.622802734375
                        y: 4.013427734375
                        z: -1114.602783203125
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_05_mesh.mesh"
                        materials: [
                            leather_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_06
                        objectName: "LiXiang_L9_interior_06"
                        x: -764.622802734375
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_06_mesh.mesh"
                        materials: [
                            leather_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_07
                        objectName: "LiXiang_L9_interior_07"
                        x: -764.6229248046875
                        y: 4.013397216796875
                        z: -1114.602783203125
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_07_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_08
                        objectName: "LiXiang_L9_interior_08"
                        x: -764.6229248046875
                        y: 4.0134124755859375
                        z: -1114.602783203125
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_08_mesh.mesh"
                        materials: [
                            leather_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_09
                        objectName: "LiXiang_L9_interior_09"
                        x: -764.6229248046875
                        y: 4.013409614562988
                        z: -1114.602783203125
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_09_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_10
                        objectName: "LiXiang_L9_interior_10"
                        x: -764.6229248046875
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_10_mesh.mesh"
                        materials: [
                            leather_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_11
                        objectName: "LiXiang_L9_interior_11"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_11_mesh.mesh"
                        materials: [
                            interior_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_12
                        objectName: "LiXiang_L9_interior_12"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_12_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_13
                        objectName: "LiXiang_L9_interior_13"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_13_mesh.mesh"
                        materials: [
                            black_Plastic_Bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_14
                        objectName: "LiXiang_L9_interior_14"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_14_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_15
                        objectName: "LiXiang_L9_interior_15"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.602783203125
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_15_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_16
                        objectName: "LiXiang_L9_interior_16"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_16_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_17
                        objectName: "LiXiang_L9_interior_17"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_17_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_18
                        objectName: "LiXiang_L9_interior_18"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_18_mesh.mesh"
                        materials: [
                            red_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_19
                        objectName: "LiXiang_L9_interior_19"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_19_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_20
                        objectName: "LiXiang_L9_interior_20"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_20_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_21
                        objectName: "LiXiang_L9_interior_21"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_21_mesh.mesh"
                        materials: [
                            screen_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_22
                        objectName: "LiXiang_L9_interior_22"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_22_mesh.mesh"
                        materials: [
                            cloth_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_23
                        objectName: "LiXiang_L9_interior_23"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_23_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_24
                        objectName: "LiXiang_L9_interior_24"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_24_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_25
                        objectName: "LiXiang_L9_interior_25"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_25_mesh.mesh"
                        materials: [
                            cloth_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_26
                        objectName: "LiXiang_L9_interior_26"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_26_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_27
                        objectName: "LiXiang_L9_interior_27"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_27_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_28
                        objectName: "LiXiang_L9_interior_28"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_28_mesh.mesh"
                        materials: [
                            carpet_DFS_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_29
                        objectName: "LiXiang_L9_interior_29"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_29_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_30
                        objectName: "LiXiang_L9_interior_30"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_30_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_interior_31
                        objectName: "LiXiang_L9_interior_31"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_31_mesh.mesh"
                        materials: [
                            carpet_DFS_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_32
                        objectName: "LiXiang_L9_interior_32"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_32_mesh.mesh"
                        materials: [
                            safety_belt_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_33
                        objectName: "LiXiang_L9_interior_33"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_33_mesh.mesh"
                        materials: [
                            leather_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_34
                        objectName: "LiXiang_L9_interior_34"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_34_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_35
                        objectName: "LiXiang_L9_interior_35"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_35_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_36
                        objectName: "LiXiang_L9_interior_36"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_36_mesh.mesh"
                        materials: [
                            lamp_white_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_37
                        objectName: "LiXiang_L9_interior_37"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_37_mesh.mesh"
                        materials: mirro2
                    }
                    Model {
                        id: liXiang_L9_interior_38
                        objectName: "LiXiang_L9_interior_38"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_38_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_39
                        objectName: "LiXiang_L9_interior_39"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_39_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_interior_40
                        objectName: "LiXiang_L9_interior_40"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_40_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_41
                        objectName: "LiXiang_L9_interior_41"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_41_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_interior_42
                        objectName: "LiXiang_L9_interior_42"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_42_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_43
                        objectName: "LiXiang_L9_interior_43"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_43_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_interior_44
                        objectName: "LiXiang_L9_interior_44"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_44_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_45
                        objectName: "LiXiang_L9_interior_45"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_45_mesh.mesh"
                        materials: [
                            black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_46
                        objectName: "LiXiang_L9_interior_46"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_46_mesh.mesh"
                        materials: interior_material
                    }
                    Model {
                        id: liXiang_L9_interior_47
                        objectName: "LiXiang_L9_interior_47"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_47_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_48
                        objectName: "LiXiang_L9_interior_48"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_48_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_50
                        objectName: "LiXiang_L9_interior_50"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_50_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_51
                        objectName: "LiXiang_L9_interior_51"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_51_mesh.mesh"
                        materials: [
                            dashboard_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_52
                        objectName: "LiXiang_L9_interior_52"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_52_mesh.mesh"
                        materials: [
                            interior_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_53
                        objectName: "LiXiang_L9_interior_53"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_53_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_54
                        objectName: "LiXiang_L9_interior_54"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_54_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_55
                        objectName: "LiXiang_L9_interior_55"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_55_mesh.mesh"
                        materials: [
                            plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_56
                        objectName: "LiXiang_L9_interior_56"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_56_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_57
                        objectName: "LiXiang_L9_interior_57"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_57_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_58
                        objectName: "LiXiang_L9_interior_58"
                        x: -764.622802734375
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_58_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_59
                        objectName: "LiXiang_L9_interior_59"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_59_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_60
                        objectName: "LiXiang_L9_interior_60"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_60_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_61
                        objectName: "LiXiang_L9_interior_61"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_61_mesh.mesh"
                        materials: [
                            defaultMaterial_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_62
                        objectName: "LiXiang_L9_interior_62"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_62_mesh.mesh"
                        materials: [
                            screen_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_63
                        objectName: "LiXiang_L9_interior_63"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_63_mesh.mesh"
                        materials: [
                            screen_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_64
                        objectName: "LiXiang_L9_interior_64"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_64_mesh.mesh"
                        materials: [
                            leather_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_interior_65
                        objectName: "LiXiang_L9_interior_65"
                        x: -764.6228637695312
                        y: 4.013409614562988
                        z: -1114.60302734375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_interior_65_mesh.mesh"
                        materials: [
                            carpet_DFS_material
                        ]
                    }
                }
                Node {
                    id: display
                    objectName: "Display"
                    x: 220.5601806640625
                    y: 1682.325927734375
                    z: -0.000244140625
                    rotation: Qt.quaternion(0.5373, 8.75373e-08, -1.37406e-07, -0.843391)
                    Node {
                        id: liXiang_L9_Display
                        objectName: "LiXiang_L9_Display"
                        x: 56.480377197265625
                        y: 33.88166046142578
                        z: -1.5769041776657104
                        rotation: Qt.quaternion(0.707107, -0.707107, 1.68587e-07, -1.68587e-07)
                        Model {
                            id: liXiang_L9_Display_01
                            objectName: "LiXiang_L9_Display_01"
                            x: -425.7237548828125
                            y: 2.07439923286438
                            z: -1724.7548828125
                            source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Display_01_mesh.mesh"
                            materials: [
                                black_Plastic_material,
                                carpaint_Black_material
                            ]
                        }
                        Model {
                            id: liXiang_L9_Display_02
                            objectName: "LiXiang_L9_Display_02"
                            x: -426.6373291015625
                            y: 2.074398994445801
                            z: -1724.7548828125
                            source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Display_02_mesh.mesh"
                            materials: [
                                screen_material
                            ]
                        }
                    }
                }
            }
            Node {
                id: seats
                objectName: "Seats"
                x: 0.5942900776863098
                y: 1.2573245555813628e-08
                z: -0.28764238953590393
                rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                Node {
                    id: liXiang_L9_Seats
                    objectName: "LiXiang_L9_Seats"
                    x: 708.8668212890625
                    y: 1001.5953979492188
                    z: -0.00018310546875
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    Model {
                        id: liXiang_L9_Seats_38
                        objectName: "LiXiang_L9_Seats_38"
                        x: -905.2841186523438
                        y: 3.651013135910034
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_38_mesh.mesh"
                        materials: [
                            leather_hole_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_01
                        objectName: "LiXiang_L9_Seats_01"
                        x: -905.2841186523438
                        y: 3.651013135910034
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_01_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_02
                        objectName: "LiXiang_L9_Seats_02"
                        x: -905.2841186523438
                        y: 3.6510133743286133
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_02_mesh.mesh"
                        materials: [
                            leather_hole_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_03
                        objectName: "LiXiang_L9_Seats_03"
                        x: -905.2841186523438
                        y: 3.6510133743286133
                        z: -1071.6326904296875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_03_mesh.mesh"
                        materials: [
                            leather_Brown_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_04
                        objectName: "LiXiang_L9_Seats_04"
                        x: -905.2841186523438
                        y: 3.6510009765625
                        z: -1071.6326904296875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_04_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_05
                        objectName: "LiXiang_L9_Seats_05"
                        x: -905.2841186523438
                        y: 3.651031494140625
                        z: -1071.6326904296875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_05_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_06
                        objectName: "LiXiang_L9_Seats_06"
                        x: -905.2841186523438
                        y: 3.6510009765625
                        z: -1071.6326904296875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_06_mesh.mesh"
                        materials: [
                            leather_hole_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_07
                        objectName: "LiXiang_L9_Seats_07"
                        x: -905.2840576171875
                        y: 3.651013135910034
                        z: -1036.9217529296875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_07_mesh.mesh"
                        materials: [
                            leather_hole_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_08
                        objectName: "LiXiang_L9_Seats_08"
                        x: -905.2841186523438
                        y: 3.6510133743286133
                        z: -1071.6326904296875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_08_mesh.mesh"
                        materials: [
                            leather_Brown_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_09
                        objectName: "LiXiang_L9_Seats_09"
                        x: -905.2841186523438
                        y: 3.6510133743286133
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_09_mesh.mesh"
                        materials: [
                            leather_Brown_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_10
                        objectName: "LiXiang_L9_Seats_10"
                        x: -905.2841186523438
                        y: 3.651013135910034
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_10_mesh.mesh"
                        materials: [
                            leather_hole_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_11
                        objectName: "LiXiang_L9_Seats_11"
                        x: -905.2841186523438
                        y: 3.651013135910034
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_11_mesh.mesh"
                        materials: [
                            red_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_12
                        objectName: "LiXiang_L9_Seats_12"
                        x: -905.2841186523438
                        y: 3.6510133743286133
                        z: -1071.6326904296875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_12_mesh.mesh"
                        materials: [
                            red_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_13
                        objectName: "LiXiang_L9_Seats_13"
                        x: -905.2841186523438
                        y: 3.6510133743286133
                        z: -1036.9217529296875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_13_mesh.mesh"
                        materials: [
                            red_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_14
                        objectName: "LiXiang_L9_Seats_14"
                        x: -905.2841186523438
                        y: 3.651013135910034
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_14_mesh.mesh"
                        materials: [
                            carpet_DFS_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_15
                        objectName: "LiXiang_L9_Seats_15"
                        x: -905.2841186523438
                        y: 3.6510133743286133
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_15_mesh.mesh"
                        materials: [
                            plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_16
                        objectName: "LiXiang_L9_Seats_16"
                        x: -905.2841186523438
                        y: 3.6510133743286133
                        z: -1071.6326904296875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_16_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_Seats_17
                        objectName: "LiXiang_L9_Seats_17"
                        x: -905.2841186523438
                        y: 3.651013135910034
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_17_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_18
                        objectName: "LiXiang_L9_Seats_18"
                        x: -905.2841186523438
                        y: 3.651013135910034
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_18_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_19
                        objectName: "LiXiang_L9_Seats_19"
                        x: -905.2841186523438
                        y: 3.651013135910034
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_19_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_20
                        objectName: "LiXiang_L9_Seats_20"
                        x: -905.2841186523438
                        y: 3.651013135910034
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_20_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_Seats_21
                        objectName: "LiXiang_L9_Seats_21"
                        x: -905.2841186523438
                        y: 3.6510133743286133
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_21_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_22
                        objectName: "LiXiang_L9_Seats_22"
                        x: -905.2841186523438
                        y: 3.651013135910034
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_22_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_23
                        objectName: "LiXiang_L9_Seats_23"
                        x: -905.2841186523438
                        y: 3.6510133743286133
                        z: -1071.6326904296875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_23_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_24
                        objectName: "LiXiang_L9_Seats_24"
                        x: -905.2841186523438
                        y: 3.6510133743286133
                        z: -1036.9217529296875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_24_mesh.mesh"
                        materials: [
                            leatherBMP_bump_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_25
                        objectName: "LiXiang_L9_Seats_25"
                        x: -905.2841186523438
                        y: 3.6510133743286133
                        z: -1036.921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_25_mesh.mesh"
                        materials: [
                            suture_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_26
                        objectName: "LiXiang_L9_Seats_26"
                        x: -905.2841186523438
                        y: 3.6510133743286133
                        z: -1071.6326904296875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_26_mesh.mesh"
                        materials: [
                            suture_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_27
                        objectName: "LiXiang_L9_Seats_27"
                        x: -905.2841186523438
                        y: 3.6510133743286133
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_27_mesh.mesh"
                        materials: [
                            suture_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_28
                        objectName: "LiXiang_L9_Seats_28"
                        x: -905.2841186523438
                        y: 3.651013135910034
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_28_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_29
                        objectName: "LiXiang_L9_Seats_29"
                        x: -905.2841186523438
                        y: 3.6510133743286133
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_29_mesh.mesh"
                        materials: [
                            leather_Brown_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_30
                        objectName: "LiXiang_L9_Seats_30"
                        x: -905.2841186523438
                        y: 3.6510133743286133
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_30_mesh.mesh"
                        materials: [
                            leather_hole_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_31
                        objectName: "LiXiang_L9_Seats_31"
                        x: -905.2841186523438
                        y: 3.6510009765625
                        z: -1071.6328125
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_31_mesh.mesh"
                        materials: [
                            leather_hole_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_32
                        objectName: "LiXiang_L9_Seats_32"
                        x: -905.2841186523438
                        y: 3.6510009765625
                        z: -1071.6328125
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_32_mesh.mesh"
                        materials: [
                            leather_Brown_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_33
                        objectName: "LiXiang_L9_Seats_33"
                        x: -905.2841186523438
                        y: 3.651000738143921
                        z: -1036.9217529296875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_33_mesh.mesh"
                        materials: [
                            leather_hole_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_34
                        objectName: "LiXiang_L9_Seats_34"
                        x: -905.2841796875
                        y: 3.651013135910034
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_34_mesh.mesh"
                        materials: [
                            leather_Brown_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_35
                        objectName: "LiXiang_L9_Seats_35"
                        x: -905.2841796875
                        y: 3.651013135910034
                        z: -1036.9217529296875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_35_mesh.mesh"
                        materials: [
                            leather_Brown_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_36
                        objectName: "LiXiang_L9_Seats_36"
                        x: -905.2841186523438
                        y: 3.6510009765625
                        z: -1071.6326904296875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_36_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_37
                        objectName: "LiXiang_L9_Seats_37"
                        x: -905.2841186523438
                        y: 3.6510133743286133
                        z: -1036.921630859375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_37_mesh.mesh"
                        materials: [
                            leather_Brown_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Seats_38571
                        objectName: "LiXiang_L9_Seats_38"
                        x: -905.2841186523438
                        y: 3.6510009765625
                        z: -1071.6328125
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Seats_38_mesh572.mesh"
                        materials: [
                            leather_Brown_material
                        ]
                    }
                }
            }
            Node {
                id: body
                objectName: "Body"
                rotation: Qt.quaternion(0.707107, 0.707107, 6.18172e-08, 6.18172e-08)
                Node {
                    id: liXiang_L9_Body
                    objectName: "LiXiang_L9_Body"
                    x: -0.2034912109375
                    y: 983.9905395507812
                    z: -0.00018310546875
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    Model {
                        id: liXiang_L9_Body_00
                        objectName: "LiXiang_L9_Body_00"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_00_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_01
                        objectName: "LiXiang_L9_Body_01"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        opacity: 0.8
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_01_mesh.mesh"
                        materials: [
                            glass_darkB_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_04
                        objectName: "LiXiang_L9_Body_04"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_04_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_05
                        objectName: "LiXiang_L9_Body_05"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_05_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_06
                        objectName: "LiXiang_L9_Body_06"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_06_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_Body_07
                        objectName: "LiXiang_L9_Body_07"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_07_mesh.mesh"
                        materials: [
                            plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_08
                        objectName: "LiXiang_L9_Body_08"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        opacity: 0.8
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_08_mesh.mesh"
                        materials: [
                            glass_darkB_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_09
                        objectName: "LiXiang_L9_Body_09"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        opacity: 0.5
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_09_mesh.mesh"
                        materials: [
                            glassWinds_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_13
                        objectName: "LiXiang_L9_Body_13"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_13_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_14
                        objectName: "LiXiang_L9_Body_14"
                        x: -195.61962890625
                        y: 3.6510162353515625
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_14_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_15
                        objectName: "LiXiang_L9_Body_15"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_15_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_16
                        objectName: "LiXiang_L9_Body_16"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_16_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_17
                        objectName: "LiXiang_L9_Body_17"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6045532226562
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_17_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_18
                        objectName: "LiXiang_L9_Body_18"
                        x: -0.14660638570785522
                        y: 1.1583300828933716
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_18_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_19
                        objectName: "LiXiang_L9_Body_19"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_19_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_20
                        objectName: "LiXiang_L9_Body_20"
                        x: -202.7490234375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_20_mesh.mesh"
                        materials: [
                            lens_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_21
                        objectName: "LiXiang_L9_Body_21"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_21_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_22
                        objectName: "LiXiang_L9_Body_22"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_22_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_23
                        objectName: "LiXiang_L9_Body_23"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_23_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_24
                        objectName: "LiXiang_L9_Body_24"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_24_mesh.mesh"
                        materials: [
                            plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_25
                        objectName: "LiXiang_L9_Body_25"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_25_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_26
                        objectName: "LiXiang_L9_Body_26"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_26_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_Body_27
                        objectName: "LiXiang_L9_Body_27"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_27_mesh.mesh"
                        materials: [
                            defaultMaterial_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_28
                        objectName: "LiXiang_L9_Body_28"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6045532226562
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_28_mesh.mesh"
                        materials: [
                            carpaint_Red_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_29
                        objectName: "LiXiang_L9_Body_29"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_29_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_Body_30
                        objectName: "LiXiang_L9_Body_30"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_30_mesh.mesh"
                        materials: [
                            defaultMaterial_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_32
                        objectName: "LiXiang_L9_Body_32"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_32_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_33
                        objectName: "LiXiang_L9_Body_33"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044311523438
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_33_mesh.mesh"
                        materials: [
                            defaultMaterial_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_34
                        objectName: "LiXiang_L9_Body_34"
                        x: -195.6195068359375
                        y: 1.0728836059570312e-06
                        opacity: 0.9
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_34_mesh.mesh"
                        materials: radar
                    }
                    Model {
                        id: liXiang_L9_Body_35
                        objectName: "LiXiang_L9_Body_35"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_35_mesh.mesh"
                        materials: [
                            daylight_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_36
                        objectName: "LiXiang_L9_Body_36"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_36_mesh.mesh"
                        materials: [
                            orange_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_37
                        objectName: "LiXiang_L9_Body_37"
                        x: -196.450927734375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_37_mesh.mesh"
                        materials: [
                            glass_Lamp_L_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_38
                        objectName: "LiXiang_L9_Body_38"
                        x: -195.61962890625
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_38_mesh.mesh"
                        materials: chromeplating
                    }
                    Model {
                        id: liXiang_L9_Body_39
                        objectName: "LiXiang_L9_Body_39"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_39_mesh.mesh"
                        materials: [
                            black_Plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_40
                        objectName: "LiXiang_L9_Body_40"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_40_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_41
                        objectName: "LiXiang_L9_Body_41"
                        x: -195.61962890625
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_41_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_42
                        objectName: "LiXiang_L9_Body_42"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        opacity: 0.3
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_42_mesh.mesh"
                        materials: lamp
                    }
                    Model {
                        id: liXiang_L9_Body_43
                        objectName: "LiXiang_L9_Body_43"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_43_mesh.mesh"
                        materials: [
                            taillight_Glass_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_44
                        objectName: "LiXiang_L9_Body_44"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_44_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_45
                        objectName: "LiXiang_L9_Body_45"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_45_mesh.mesh"
                        materials: [
                            glass_Red_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_46
                        objectName: "LiXiang_L9_Body_46"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_46_mesh.mesh"
                        materials: [
                            metallic_paint_Lamp_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_47
                        objectName: "LiXiang_L9_Body_47"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044311523438
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_47_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_51
                        objectName: "LiXiang_L9_Body_51"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6045532226562
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_51_mesh.mesh"
                        materials: [
                            carpaint_green_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_52
                        objectName: "LiXiang_L9_Body_52"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_52_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_53
                        objectName: "LiXiang_L9_Body_53"
                        x: -190.857666015625
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_53_mesh.mesh"
                        materials: [
                            metallic_paint_Lamp_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_54
                        objectName: "LiXiang_L9_Body_54"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_54_mesh.mesh"
                        materials: lamp
                    }
                    Model {
                        id: liXiang_L9_Body_55
                        objectName: "LiXiang_L9_Body_55"
                        x: -2585.72509765625
                        y: -0.0003662109375
                        z: -433.386474609375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_55_mesh.mesh"
                        materials: [
                            plastic_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_56
                        objectName: "LiXiang_L9_Body_56"
                        x: -2588.03369140625
                        y: -0.0003662109375
                        z: -433.386474609375
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_56_mesh.mesh"
                        materials: [
                            license_plate_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_57
                        objectName: "LiXiang_L9_Body_57"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_57_mesh.mesh"
                        materials: [
                            defaultMaterial_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_58
                        objectName: "LiXiang_L9_Body_58"
                        x: -195.6195068359375
                        y: 3.6510133743286133
                        z: -1019.6044921875
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_58_mesh.mesh"
                        materials: [
                            glass_Lamp_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_59
                        objectName: "LiXiang_L9_Body_59"
                        x: -195.61962890625
                        y: 3.6510133743286133
                        z: -1019.6045532226562
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_59_mesh.mesh"
                        materials: [
                            carpaint_Black_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_60
                        objectName: "LiXiang_L9_Body_60"
                        x: -195.61962890625
                        y: 3.6510133743286133
                        z: -1019.6045532226562
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_60_mesh.mesh"
                        materials: [
                            glass_Lamp_material
                        ]
                    }
                    Model {
                        id: liXiang_L9_Body_61
                        objectName: "LiXiang_L9_Body_61"
                        x: -195.61962890625
                        y: 3.6510133743286133
                        z: -1019.6045532226562
                        source: "qrc:/LiXiang_L9/meshes/liXiang_L9_Body_61_mesh.mesh"
                        materials: [
                            lamp_Red_material
                        ]
                    }
                }
            }
        }
    }

    // // Animations:
    // Timeline {
    //     id: take_001_timeline
    //     objectName: "Take 001"
    //     property real framesPerSecond: 25
    //     startFrame: 0
    //     endFrame: 1960
    //     currentFrame: 0
    //     enabled: true
    //     animations: TimelineAnimation {
    //         duration: 1960
    //         from: 0
    //         to: 1960
    //         running: true
    //         loops: Animation.Infinite
    //     }
    //     KeyframeGroup {
    //         target: ctrl
    //         property: "rotation"
    //         keyframeSource: "animations/ctrl_rotation_0.qad"
    //     }
    //     KeyframeGroup {
    //         target: doorBL
    //         property: "position"
    //         Keyframe {
    //             frame: 0
    //             value: Qt.vector3d(97.5369, -944.938, 749.777)
    //         }
    //     }
    //     KeyframeGroup {
    //         target: doorBL
    //         property: "rotation"
    //         keyframeSource: "animations/doorBL_rotation_0.qad"
    //     }
    //     KeyframeGroup {
    //         target: doorBR
    //         property: "position"
    //         Keyframe {
    //             frame: 0
    //             value: Qt.vector3d(97.526, 947.873, 749.777)
    //         }
    //     }
    //     KeyframeGroup {
    //         target: doorBR
    //         property: "rotation"
    //         keyframeSource: "animations/doorBR_rotation_0.qad"
    //     }
    //     KeyframeGroup {
    //         target: doorFL
    //         property: "position"
    //         Keyframe {
    //             frame: 0
    //             value: Qt.vector3d(-1017.1, -944.888, 749.777)
    //         }
    //     }
    //     KeyframeGroup {
    //         target: doorFL
    //         property: "rotation"
    //         keyframeSource: "animations/doorFL_rotation_0.qad"
    //     }
    //     KeyframeGroup {
    //         target: doorFR
    //         property: "position"
    //         Keyframe {
    //             frame: 0
    //             value: Qt.vector3d(-1017.1, 947.83, 749.777)
    //         }
    //     }
    //     KeyframeGroup {
    //         target: doorFR
    //         property: "rotation"
    //         keyframeSource: "animations/doorFR_rotation_0.qad"
    //     }
    //     KeyframeGroup {
    //         target: handleBL
    //         property: "position"
    //         keyframeSource: "animations/handleBL_position_0.qad"
    //     }
    //     KeyframeGroup {
    //         target: handleBR
    //         property: "position"
    //         keyframeSource: "animations/handleBR_position_0.qad"
    //     }
    //     KeyframeGroup {
    //         target: handleFL
    //         property: "position"
    //         keyframeSource: "animations/handleFL_position_0.qad"
    //     }
    //     KeyframeGroup {
    //         target: handleFL001
    //         property: "position"
    //         keyframeSource: "animations/handleFL001_position_0.qad"
    //     }
    //     KeyframeGroup {
    //         target: hydraulic_rod_Left
    //         property: "position"
    //         Keyframe {
    //             frame: 0
    //             value: Qt.vector3d(2052.09, -587, 1533.75)
    //         }
    //     }
    //     KeyframeGroup {
    //         target: hydraulic_rod_Left
    //         property: "rotation"
    //         keyframeSource: "animations/hydraulic_rod_Left_rotation_0.qad"
    //     }
    //     KeyframeGroup {
    //         target: hydraulic_rod_Right
    //         property: "position"
    //         Keyframe {
    //             frame: 0
    //             value: Qt.vector3d(2052.09, 592.282, 1533.74)
    //         }
    //     }
    //     KeyframeGroup {
    //         target: hydraulic_rod_Right
    //         property: "rotation"
    //         keyframeSource: "animations/hydraulic_rod_Right_rotation_0.qad"
    //     }
    //     KeyframeGroup {
    //         target: liXiang_L9_Trunk_05
    //         property: "position"
    //         Keyframe {
    //             frame: 0
    //             value: Qt.vector3d(281.679, -0.000549316, -347.65)
    //         }
    //     }
    //     KeyframeGroup {
    //         target: liXiang_L9_Trunk_05
    //         property: "rotation"
    //         Keyframe {
    //             frame: 0
    //             value: Qt.quaternion(-1.5648e-07, -0.136031, -2.95724e-07, 0.990705)
    //         }
    //     }
    //     KeyframeGroup {
    //         target: trunk
    //         property: "position"
    //         Keyframe {
    //             frame: 0
    //             value: Qt.vector3d(1978.38, -7.57167e-05, 1732.2)
    //         }
    //     }
    //     KeyframeGroup {
    //         target: trunk
    //         property: "rotation"
    //         keyframeSource: "animations/trunk_rotation_0.qad"
    //     }
    // }

    Node {
        id: __materialLibrary__

        Texture {
            id: brakes_Normal_png_texture
            objectName: "Brakes_Normal.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
            source: "qrc:/maps/Brakes_Normal.png"
            // Source texture path expected: maps/Brakes_Normal.png
            // Skipped property: source, reason: Failed to find texture at c:/Users/22094/Documents/Qt/Vehicula/Brakes_Normal.png
        }

        Texture {
            id: lx_L9_interior_png_texture
            objectName: "LX_L9_interior.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
            source: "qrc:/maps/LX_L9_interior.png"
            // Source texture path expected: maps/LX_L9_interior.png
            // Skipped property: source, reason: Failed to find texture at c:/Users/22094/Documents/Qt/Vehicula/LX_L9_interior.png
        }

        Texture {
            id: grid_n_png_texture
            objectName: "grid_n.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
            source: "qrc:/maps/grid_n.png"
            // Source texture path expected: maps/grid_n.png
            // Skipped property: source, reason: Failed to find texture at c:/Users/22094/Documents/Qt/Vehicula/grid_n.png
        }

        Texture {
            id: leatherBMP_Normal_4K_png_texture
            objectName: "LeatherBMP_Normal_4K.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
            source: "qrc:/maps/LeatherBMP_Normal_4K.png"
            // Source texture path expected: maps/LeatherBMP_Normal_4K.png
            // Skipped property: source, reason: Failed to find texture at c:/Users/22094/Documents/Qt/Vehicula/LeatherBMP_Normal_4K.png
        }

        Texture {
            id: michelin_Wheels_Tire_sidewall_Normal_png_texture
            objectName: "Michelin_Wheels_Tire_sidewall_Normal.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
            source: "qrc:/maps/Michelin_Wheels_Tire_sidewall_Normal.png"
            // Source texture path expected: maps/Michelin_Wheels_Tire_sidewall_Normal.png
            // Skipped property: source, reason: Failed to find texture at c:/Users/22094/Documents/Qt/Vehicula/Michelin_Wheels_Tire_sidewall_Normal.png
        }

        Texture {
            id: license_plate_png_texture
            objectName: "license_plate.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
            source: "qrc:/maps/license_plate.png"
            // Source texture path expected: maps/license_plate.png
            // Skipped property: source, reason: Failed to find texture at c:/Users/22094/Documents/Qt/Vehicula/license_plate.png
        }

        Texture {
            id: brakes_png_texture
            objectName: "Brakes.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
            source: "qrc:/maps/Brakes.png"
            // Source texture path expected: maps/Brakes.png
            // Skipped property: source, reason: Failed to find texture at c:/Users/22094/Documents/Qt/Vehicula/Brakes.png
        }

        Texture {
            id: albedo___AO_VRayCompTex_0000_png_texture
            objectName: "Albedo + AO_VRayCompTex_0000.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
            source: "qrc:/maps/Albedo + AO_VRayCompTex_0000.png"
            // Source texture path expected: maps/Albedo + AO_VRayCompTex_0000.png
            // Skipped property: source, reason: Failed to find texture at c:/Users/22094/Documents/Qt/Vehicula/Albedo + AO_VRayCompTex_0000.png
        }

        Texture {
            id: cloth_4K_Normal_jpg_texture
            objectName: "Cloth_4K_Normal.jpg"
            generateMipmaps: true
            mipFilter: Texture.Linear
            source: "qrc:/maps/Cloth_4K_Normal.jpg"
            // Source texture path expected: maps/Cloth_4K_Normal.jpg
            // Skipped property: source, reason: Failed to find texture at c:/Users/22094/Documents/Qt/Vehicula/Cloth_4K_Normal.jpg
        }

        Texture {
            id: carpet_DFS_png_texture
            objectName: "Carpet_DFS.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
            source: "qrc:/maps/Carpet_DFS.png"
            // Source texture path expected: maps/Carpet_DFS.png
            // Skipped property: source, reason: Failed to find texture at c:/Users/22094/Documents/Qt/Vehicula/Carpet_DFS.png
        }

        Texture {
            id: dashboard_png_texture
            objectName: "Dashboard.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
            source: "qrc:/maps/Dashboard.png"
            // Source texture path expected: maps/Dashboard.png
            // Skipped property: source, reason: Failed to find texture at c:/Users/22094/Documents/Qt/Vehicula/Dashboard.png
        }

        Texture {
            id: leather_hole_png_texture
            objectName: "Leather_hole.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
            source: "qrc:/maps/Leather_hole.png"
            // Source texture path expected: maps/Leather_hole.png
            // Skipped property: source, reason: Failed to find texture at c:/Users/22094/Documents/Qt/Vehicula/Leather_hole.png
        }

        Texture {
            id: leather_hole_Normal_png_texture
            objectName: "Leather_hole_Normal.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
            source: "qrc:/maps/Leather_hole_Normal.png"
            // Source texture path expected: maps/Leather_hole_Normal.png
            // Skipped property: source, reason: Failed to find texture at c:/Users/22094/Documents/Qt/Vehicula/Leather_hole_Normal.png
        }

        Texture {
            id: leather_Brown_png_texture
            objectName: "Leather_Brown.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
            source: "qrc:/maps/Leather_Brown.png"
            // Source texture path expected: maps/Leather_Brown.png
            // Skipped property: source, reason: Failed to find texture at c:/Users/22094/Documents/Qt/Vehicula/Leather_Brown.png
        }

        Texture {
            id: strip_N_png_texture
            objectName: "strip_N.png"
            generateMipmaps: true
            mipFilter: Texture.Linear
            source: "qrc:/maps/strip_N.png"
            // Source texture path expected: maps/strip_N.png
            // Skipped property: source, reason: Failed to find texture at c:/Users/22094/Documents/Qt/Vehicula/strip_N.png
        }

        Texture {
            id: lightsBMP_jpg_texture
            objectName: "LightsBMP.jpg"
            generateMipmaps: true
            mipFilter: Texture.Linear
            source: "qrc:/maps/LightsBMP.jpg"
            // Source texture path expected: maps/LightsBMP.jpg
            // Skipped property: source, reason: Failed to find texture at c:/Users/22094/Documents/Qt/Vehicula/LightsBMP.jpg
        }

        PrincipledMaterial {
            id: carpaint_Grey_material
            objectName: "Carpaint_Grey"
            baseColor: "#ff212121"
            roughness: 0.15634
        }

        PrincipledMaterial {
            id: tire_material
            objectName: "Tire"
            baseColor: "#ff010101"
            roughness: 0.5776112079620361
            normalMap: michelin_Wheels_Tire_sidewall_Normal_png_texture
        }

        PrincipledMaterial {
            id: taillight_Glass_material
            objectName: "Taillight_Glass"
            baseColor: "#ff000000"
            roughness: -0.18879568576812744
        }

        PrincipledMaterial {
            id: glass_darkB_material
            objectName: "glass_darkB"
            baseColor: "#ff000000"
            roughness: 0.8318207263946533
        }

        PrincipledMaterial {
            id: lamp_Red_material
            objectName: "Lamp_Red"
            baseColor: "#ff960000"
            roughness: -0.15972769260406494
            normalMap: grid_n_png_texture
        }

        PrincipledMaterial {
            id: glass_Lamp_material
            objectName: "glass_Lamp"
            roughness: -0.18879568576812744
            normalMap: grid_n_png_texture
            emissiveFactor.x: 0.172549
            emissiveFactor.y: 0.172549
            emissiveFactor.z: 0.172549
        }

        PrincipledMaterial {
            id: license_plate_material
            objectName: "license_plate"
            baseColor: "#ffcccccc"
            baseColorMap: license_plate_png_texture
            roughness: 0.4343146085739136
        }

        PrincipledMaterial {
            id: plastic_material
            objectName: "Plastic"
            baseColor: "#ff030404"
            roughness: 0.607843816280365
        }

        PrincipledMaterial {
            id: black_Plastic_material
            objectName: "Black_Plastic"
            baseColor: "#ff050505"
            roughness: 0.5583641529083252
        }

        PrincipledMaterial {
            id: black_Plastic_bump_material
            objectName: "Black_Plastic_bump"
            baseColor: "#ff0a0a0a"
            roughness: 0.5583641529083252
            normalMap: leatherBMP_Normal_4K_png_texture
        }

        PrincipledMaterial {
            id: carpaint_green_material
            objectName: "carpaint_green"
            baseColor: "#ff001314"
            roughness: 0.16335
        }

        PrincipledMaterial {
            id: leatherBMP_bump_material
            objectName: "LeatherBMP_bump"
            baseColor: "#ff0a0a0a"
            roughness: 0.5583641529083252
            normalMap: leatherBMP_Normal_4K_png_texture
        }

        PrincipledMaterial {
            id: interior_material
            objectName: "interior"
            baseColor: "#ff808080"
            baseColorMap: lx_L9_interior_png_texture
            roughness: 0.5583641529083252
        }

        PrincipledMaterial {
            id: interior_sound_material
            objectName: "interior_sound"
            baseColor: "#ff808080"
            roughness: 0.5583641529083252
        }

        PrincipledMaterial {
            id: black_material
            objectName: "Black"
            baseColor: "#ff000000"
            roughness: -0.18879568576812744
        }

        PrincipledMaterial {
            id: glassWinds_material
            opacity: 0.98
            objectName: "GlassWinds"
            baseColor: "#ff000a0c"
            roughness: 0.32466
        }

        PrincipledMaterial {
            id: mirro_material
            objectName: "Mirro"
            baseColor: "#ffa0a0a0"
            roughness: 0
        }

        PrincipledMaterial {
            id: glass_Lamp_L_material
            objectName: "glass_Lamp_L"
            roughness: -0.18879568576812744
            normalMap: grid_n_png_texture
        }

        PrincipledMaterial {
            id: metallic_paint_Lamp_material
            objectName: "Metallic_paint_Lamp"
            baseColor: "#ffc8c8c8"
            roughness: 0.8585786819458008
            normalMap: grid_n_png_texture
        }

        PrincipledMaterial {
            id: leather_material
            objectName: "Leather"
            baseColor: "#ff000000"
            roughness: 0.6000000238418579
        }

        PrincipledMaterial {
            id: black_Plastic_Bump_material
            objectName: "Black_Plastic_Bump"
            baseColor: "#ff0a0a0a"
            roughness: 0.5583641529083252
            normalMap: grid_n_png_texture
        }

        PrincipledMaterial {
            id: red_material
            objectName: "Red"
            baseColor: "#ffff0000"
            roughness: 0.17994850873947144
        }

        PrincipledMaterial {
            id: screen_material
            objectName: "Screen"
            baseColor: "#ff808080"
            baseColorMap: lx_L9_interior_png_texture
            roughness: -0.18879568576812744
            emissiveMap: lx_L9_interior_png_texture
        }

        PrincipledMaterial {
            id: cloth_material
            objectName: "Cloth"
            baseColor: "#ff808080"
            baseColorMap: albedo___AO_VRayCompTex_0000_png_texture
            roughness: -0.18879568576812744
            normalMap: cloth_4K_Normal_jpg_texture
        }

        PrincipledMaterial {
            id: carpaint_Wheel_material
            objectName: "carpaint_Wheel"
            baseColor: "#ff323232"
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: carpet_DFS_material
            objectName: "Carpet_DFS"
            baseColor: "#ff808080"
            baseColorMap: carpet_DFS_png_texture
            roughness: 0.5583641529083252
        }

        PrincipledMaterial {
            id: safety_belt_material
            objectName: "safety_belt"
            baseColor: "#ff050505"
            roughness: 0.5583641529083252
            normalMap: cloth_4K_Normal_jpg_texture
        }

        PrincipledMaterial {
            id: lamp_white_material
            objectName: "lamp_white"
            roughness: -0.18879568576812744
        }

        PrincipledMaterial {
            id: dashboard_material
            objectName: "Dashboard"
            baseColor: "#ff969696"
            baseColorMap: dashboard_png_texture
            roughness: 0.5014088749885559
        }

        PrincipledMaterial {
            id: carpaint_Black_material
            objectName: "carpaint_Black"
            baseColor: "#ff323232"
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: leather_hole_material
            objectName: "Leather_hole"
            baseColor: "#ff656565"
            baseColorMap: leather_hole_png_texture
            roughness: 0.5014088749885559
            normalMap: leather_hole_Normal_png_texture
        }

        PrincipledMaterial {
            id: brakes_material
            objectName: "Brakes"
            baseColor: "#ff000000"
            baseColorMap: brakes_png_texture
            roughness: 0.4343146085739136
            normalMap: brakes_Normal_png_texture
        }

        PrincipledMaterial {
            id: leather_Brown_material
            objectName: "Leather_Brown"
            baseColor: "#ff656565"
            baseColorMap: leather_Brown_png_texture
            roughness: 0.5014088749885559
            normalMap: leatherBMP_Normal_4K_png_texture
        }

        PrincipledMaterial {
            id: suture_material
            objectName: "suture"
            baseColor: "#ff0a0605"
            roughness: -0.18879568576812744
            normalMap: strip_N_png_texture
        }

        PrincipledMaterial {
            id: defaultMaterial_material
            objectName: "DefaultMaterial"
            baseColor: "#ffcccccc"
        }

        PrincipledMaterial {
            id: lens_material
            objectName: "Lens"
            baseColor: "#ff000000"
            roughness: -0.18879568576812744
        }

        PrincipledMaterial {
            id: carpaint_Red_material
            objectName: "Carpaint_Red"
            baseColor: "#ffa00328"
            roughness: 0.8585786819458008
            normalMap: grid_n_png_texture
        }

        PrincipledMaterial {
            id: daylight_material
            objectName: "Daylight"
            roughness: -0.18879568576812744
            normalMap: grid_n_png_texture
            emissiveMap: lightsBMP_jpg_texture
        }

        PrincipledMaterial {
            id: orange_material
            objectName: "Orange"
            baseColor: "#ffff3c00"
            roughness: 0.17994850873947144
        }

        PrincipledMaterial {
            id: glassLights_material
            objectName: "GlassLights"
            baseColor: "#ff232323"
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: glass_Red_material
            objectName: "Glass_Red"
            baseColor: "#ff960000"
            roughness: -0.15972769260406494
        }

        PrincipledMaterial {
            id: chromeplating
            metalness: 1
            roughness: 0.1353
            objectName: "Chromeplating"
            baseColor: "#f5f5f5"
        }

        SpecularGlossyMaterial {
            id: mirro2
            specularColor: "#fffefe"
            albedoColor: "#a0a0a0"
            objectName: "Mirro2"
        }

        PrincipledMaterial {
            id: radar
            roughness: 0.1
            metalness: 0
            baseColor: "#111111"
            objectName: "Radar"
        }

        SpecularGlossyMaterial {
            id: lamp
            opacity: 0.9
            specularColor: "#fffefe"
            objectName: "lamp"
            albedoColor: "#101010"
        }
    }

    DirectionalLight {
        id: directionalLight
        x: 0
        y: 3000
        eulerRotation.x: 270
        brightness: 5.24
        z: 0
    }
}

/*##^##
Designer {
    D{i:0;cameraSpeed3d:16;cameraSpeed3dMultiplier:1}
}
##^##*/
