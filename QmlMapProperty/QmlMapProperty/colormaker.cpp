#include "colormaker.h"
#include <QDebug>

ColorMaker::ColorMaker(QObject *parent) :
    QObject(parent)
{
    qsrand( QDateTime::currentDateTime().toTime_t() );
    PresetInfo *p_preset = new PresetInfo;
    p_preset->mn_preset_ptz = 0;
    p_preset->mn_preset_rail = 1;
    p_preset->m_str_preset_name = "aa";
  //  m_preset_info_list.push_back(p_preset);
    item_list.push_back(p_preset);
    p_preset = new PresetInfo;
    p_preset->mn_preset_ptz = 10;
    p_preset->mn_preset_rail = 20;
    p_preset->m_str_preset_name = "bb";
  //  m_preset_info_list.push_back(p_preset);
    item_list.push_back(p_preset);

    init_preset_info();
}

ColorMaker::~ColorMaker()
{

}

void ColorMaker::init_preset_info()
{
    PresetInfo *p_preset = new PresetInfo;
    p_preset->mn_preset_ptz = 0;
    p_preset->mn_preset_rail = 1;
    p_preset->m_str_preset_name = "aa";
    m_map_preset_info.insert( 0, p_preset );

    p_preset = new PresetInfo;
    p_preset->mn_preset_ptz = 10;
    p_preset->mn_preset_rail = 20;
    p_preset->m_str_preset_name = "bb";
    m_map_preset_info.insert( 1, p_preset );
}

QQmlListProperty<PresetInfo> ColorMaker::get_preset_items()
{
    return QQmlListProperty<PresetInfo>(this, item_list);
}

QMap<int, PresetInfo *> ColorMaker::get_map_preset()
{
    return m_map_preset_info;
}


