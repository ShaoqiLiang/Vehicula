QT += quick quick3d

SOURCES += \
        main.cpp

resources.files = main.qml \
                    LiXiang_L9/LiXiang_L9.qml \
                    QuickButton.qml \
                    QuickSliderBar.qml
resources.prefix = /$${TARGET}
RESOURCES += resources \
    resources.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

CONFIG += resources_big
            \utf8_source

DISTFILES += \
    QuickButton.qml \
    QuickSliderBar.qml