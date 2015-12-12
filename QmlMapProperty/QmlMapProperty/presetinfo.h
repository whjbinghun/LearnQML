#ifndef PRESETINFO_H
#define PRESETINFO_H

#include <QObject>

class PresetInfo : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int n_preset_rail READ get_preset_rail )
    Q_PROPERTY(int n_preset_ptz READ get_preset_ptz )
    Q_PROPERTY(QString itemname READ itemname1 NOTIFY nameChanged )
public:
    explicit PresetInfo(QObject *parent = 0);
    ~PresetInfo();
    int get_preset_rail();
    int get_preset_ptz();
    QString itemname1();

signals:
    void nameChanged();
public:
    int mn_preset_rail;
    int mn_preset_ptz;
    QString m_str_preset_name;
};

#endif // PRESETINFO_H
