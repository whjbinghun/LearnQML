#include <QtGui/QGuiApplication>
#include "qtquick2applicationviewer.h"
#include <QtQml>
#include "ColorMaker.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<ColorMaker>( "an.qt.ColorMaker", 1, 0, "ColorMaker" );

    QtQuick2ApplicationViewer viewer;
    viewer.setMainQmlFile(QStringLiteral("qml/ColorMark/main.qml"));
    viewer.showExpanded();

    return app.exec();
}
