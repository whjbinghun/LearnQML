#ifndef COLORMAKER_H
#define COLORMAKER_H

#include <QObject>
#include <QColor>
#include <QDateTime>
#include <QTime>
#include <QTimerEvent>
#include <QQmlListProperty>
#include "presetinfo.h"


//class Preset : public QObject
//{
//    Q_OBJECT
//    Q_PROPERTY(int n_preset_rail READ get_preset_rail )
//    Q_PROPERTY(int n_preset_ptz READ get_preset_ptz )
//    Q_PROPERTY(QString itemname READ itemname1 NOTIFY nameChanged )
//public:
//    explicit Preset(QObject *parent = 0):
//        mn_preset_rail(0)
//      , mn_preset_ptz(0)
//      , m_str_preset_name(""){}
//    ~Preset(){}
//    int get_preset_rail(){ return mn_preset_rail; }
//    int get_preset_ptz(){ return mn_preset_ptz; }
//    QString itemname1(){ return m_str_preset_name; }
//public:
//    int mn_preset_rail;
//    int mn_preset_ptz;
//    QString m_str_preset_name;
//signals:
//    void nameChanged();
//};

class ColorMaker : public QObject
{
    Q_OBJECT
    Q_ENUMS(GenerateAlgorithm)
    Q_PROPERTY(QQmlListProperty<PresetInfo> preset_items READ preset_items )
public:
    explicit ColorMaker(QObject *parent = 0);
    ~ColorMaker();

    QQmlListProperty<PresetInfo> preset_items();
public:
  //  QList<QObject*> m_preset_info_list;
    QList<PresetInfo*> item_list;

};

#endif // COLORMAKER_H
