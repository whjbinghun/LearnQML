#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>

#include "colormaker.h"
#include "presetinfo.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<PresetInfo>( "an.qt.Preset", 1, 0, "PresetInfo" );
    qmlRegisterType<ColorMaker>( "an.qt.ColorMaker", 1, 0, "ColorMaker" );

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

