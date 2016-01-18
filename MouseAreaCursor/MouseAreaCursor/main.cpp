#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "mouseareatest.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<MouseAreaTest>("MouseAreaTest", 1, 0, "MouseAreaTest");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

