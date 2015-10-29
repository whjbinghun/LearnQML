#include "ColorMaker.h"
#include <QTimerEvent>
#include <QDateTime>

ColorMaker::ColorMaker(QObject *parent)
    : QObject( parent )
    , me_algorithm( RandomRGB )
    , m_current_color( Qt::black )
    , mn_color_timer( 0 )
{
    qsrand( QDateTime::currentDateTime().toTime_t() );
}

ColorMaker::~ColorMaker()
{

}

QColor ColorMaker::get_color() const
{
    return m_current_color;
}

void ColorMaker::set_color( const QColor &color )
{
    m_current_color = color;
    emit color_changed( m_current_color );
}

QColor ColorMaker::time_color() const
{
    QTime time = QTime::currentTime();
    int r = time.hour();
    int g = time.minute()*2;
    int b = time.second()*4;
    return QColor::fromRgb(r, g, b);
}

ColorMaker::EGenerateAlgorithm ColorMaker::algorithm() const
{
    return me_algorithm;
}

void ColorMaker::set_algorithm( ColorMaker::EGenerateAlgorithm e_algorithm )
{
    me_algorithm = e_algorithm;
}

void ColorMaker::start()
{
    if( mn_color_timer == 0 )
    {
        mn_color_timer = startTimer( 1000 );
    }
}

void ColorMaker::stop()
{
    if( mn_color_timer > 0)
    {
        killTimer( mn_color_timer );
        mn_color_timer = 0;
    }
}

void ColorMaker::timerEvent( QTimerEvent *e )
{
    if( e->timerId() == mn_color_timer )
    {
        switch( me_algorithm )
        {
        case RandomRGB:
            m_current_color.setRgb(qrand() % 255, qrand() % 255, qrand() % 255);
            break;
        case RandomRed:
            m_current_color.setRed(qrand() % 255);
            break;
        case RandomGreen:
            m_current_color.setGreen(qrand() % 255);
            break;
        case RandomBlue:
            m_current_color.setBlue(qrand() % 255);
            break;
        case LinearIncrease:
            {
                int r = m_current_color.red() + 10;
                int g = m_current_color.green() + 10;
                int b = m_current_color.blue() + 10;
                m_current_color.setRgb(r % 255, g % 255, b % 255);
            }
            break;
        }
        emit color_changed( m_current_color );
        emit currentTime( QDateTime::currentDateTime().toString("yyyy-MM-dd hh:mm:ss"));
    }
    else
    {
        QObject::timerEvent(e);
    }
}
