#ifndef ColorMaker_H
#define ColorMaker_H

#include <QObject>
#include <QColor>
#include <QTimerEvent>

class ColorMaker : public QObject
{
    Q_OBJECT
    Q_ENUMS( EGenerateAlgorithm )
    Q_PROPERTY( QColor color READ get_color WRITE set_color NOTIFY color_changed )
    Q_PROPERTY( QColor time_color READ time_color )

public:
    ColorMaker( QObject *parent = 0 );
    ~ColorMaker();

    enum EGenerateAlgorithm{
        RandomRGB,
        RandomRed,
        RandomGreen,
        RandomBlue,
        LinearIncrease
    };

    QColor get_color() const;
    void set_color( const QColor &color );
    QColor time_color() const;

    Q_INVOKABLE EGenerateAlgorithm algorithm() const;
    Q_INVOKABLE void set_algorithm( EGenerateAlgorithm e_algorithm );

signals:
    void color_changed( const QColor &color );
    void currentTime( const QString &str_time );

public slots:
    void start();
    void stop();

protected:
    void timerEvent( QTimerEvent *e );

private:
    EGenerateAlgorithm me_algorithm;
    QColor m_current_color;
    int mn_color_timer;
};

#endif // ColorMaker_H
