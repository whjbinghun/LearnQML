#include "mouseareatest.h"
#include <QCursor>

MouseAreaTest::MouseAreaTest(QQuickItem *parent)
    : QQuickPaintedItem( parent )
{
    setCursor( Qt::CrossCursor );
}

MouseAreaTest::~MouseAreaTest()
{

}

void MouseAreaTest::paint(QPainter *painter)
{

}

void MouseAreaTest::geometryChanged(const QRectF &newGeometry, const QRectF &oldGeometry)
{

}

void MouseAreaTest::hoverEnterEvent(QHoverEvent *event)
{

}

void MouseAreaTest::hoverLeaveEvent(QHoverEvent *event)
{

}

