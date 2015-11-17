#ifndef PAINTEDIRANAITEM_H
#define PAINTEDIRANAITEM_H

#include <QQuickPaintedItem>
#include <QPainter>
#include <QPen>

class PaintedIrAnaItem : public QQuickPaintedItem
{
public:
    PaintedIrAnaItem( QQuickItem *parent = 0 );
    ~PaintedIrAnaItem();

    void paint( QPainter *painter );
protected:
    void mousePressEvent( QMouseEvent *event );
    void mouseMoveEvent( QMouseEvent *event );
    void mouseReleaseEvent( QMouseEvent *event );

protected:
    QPointF m_lastPoint;
    bool m_bEnabled;
    bool m_bPressed;
    bool m_bMoved;
    QPen m_pen; // the Current Pen
};

#endif // PAINTEDIRANAITEM_H
