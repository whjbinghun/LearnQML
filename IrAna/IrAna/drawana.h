#ifndef DRAWANA_H
#define DRAWANA_H

#include <QObject>

class DrawAna : public QObject
{
    Q_OBJECT
public:
    explicit DrawAna(QObject *parent = 0);
    ~DrawAna();
signals:

public slots:
private:

};

#endif // DRAWANA_H
