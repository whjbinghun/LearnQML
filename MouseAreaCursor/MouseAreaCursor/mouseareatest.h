#ifndef MOUSEAREATEST_H
#define MOUSEAREATEST_H

#include <QQuickPaintedItem>
#include <QPainter>
#include <QHoverEvent>

class MouseAreaTest : public QQuickPaintedItem
{
    Q_OBJECT
public:
    MouseAreaTest( QQuickItem *parent = 0 );
    virtual ~MouseAreaTest();
protected:
    virtual void paint(QPainter *painter);
    virtual void geometryChanged( const QRectF &newGeometry, const QRectF &oldGeometry );
    virtual void hoverEnterEvent(QHoverEvent *event);
    virtual void hoverLeaveEvent(QHoverEvent *event);
};

#endif // MOUSEAREATEST_H
