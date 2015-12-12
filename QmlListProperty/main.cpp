#include <QtGui/QGuiApplication>
#include "qtquick2applicationviewer.h"
#include <QtQml>
#include "colormaker.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<Preset>( "an.qt.Preset", 1, 0, "Preset" );
    qmlRegisterType<ColorMaker>( "an.qt.ColorMaker", 1, 0, "ColorMaker" );

    QtQuick2ApplicationViewer viewer;

  //  ColorMaker colormaker;

  //  viewer.rootContext()->setContextProperty( "colorMaker", &colormaker );
   // viewer.rootContext()->setContextProperty( "colorMaker1", QVariant::fromValue(colormaker.m_preset_info_list) );

    viewer.setMainQmlFile(QStringLiteral("qml/colorMaker/main.qml"));
    viewer.showExpanded();

    return app.exec();
}
