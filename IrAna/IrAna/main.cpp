#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "paintediranaitem.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<PaintedIrAnaItem>("an.qml.Controls", 1, 0, "PaintedIrAnaItem");


    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

