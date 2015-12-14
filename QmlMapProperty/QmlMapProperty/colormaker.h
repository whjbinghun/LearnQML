#ifndef COLORMAKER_H
#define COLORMAKER_H

#include <QObject>
#include <QColor>
#include <QDateTime>
#include <QTime>
#include <QTimerEvent>
#include <QQmlListProperty>
#include "presetinfo.h"
#include <QQmlPropertyMap>

class ColorMaker : public QObject
{
    Q_OBJECT
    Q_ENUMS(GenerateAlgorithm)
    Q_PROPERTY(QQmlListProperty<PresetInfo> preset_items READ get_preset_items )
public:
    explicit ColorMaker(QObject *parent = 0);
    ~ColorMaker();

    void init_preset_info();

    QQmlListProperty<PresetInfo> get_preset_items();
    QMap< int, PresetInfo*> get_map_preset();
public:
  //  QList<QObject*> m_preset_info_list;
    QList<PresetInfo*> item_list;
    QMap< int, PresetInfo*> m_map_preset_info;
};

#endif // COLORMAKER_H
