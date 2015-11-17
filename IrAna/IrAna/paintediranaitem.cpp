#include "paintediranaitem.h"

PaintedIrAnaItem::PaintedIrAnaItem( QQuickItem *parent )
{
    setAcceptedMouseButtons( Qt::LeftButton );
}

PaintedIrAnaItem::~PaintedIrAnaItem()
{

}

void PaintedIrAnaItem::paint( QPainter *painter )
{
    //painter->setRenderHint(QPainter::Antialiasing);

    /*int size = m_elements.size();
    ElementGroup *element;
    for(int i = 0; i < size; ++i)
    {
        element = m_elements.at(i);
        painter->setPen(element->m_pen);
        painter->drawLines(element->m_lines);
    }*/
    painter->drawLine( QPoint(1,1), QPoint(20, 20));
}

void PaintedIrAnaItem::mousePressEvent( QMouseEvent *event )
{

}

void PaintedIrAnaItem::mouseMoveEvent( QMouseEvent *event )
{

}

void PaintedIrAnaItem::mouseReleaseEvent( QMouseEvent *event )
{

}

