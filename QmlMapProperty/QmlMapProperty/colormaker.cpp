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

}

ColorMaker::~ColorMaker()
{

}

QQmlListProperty<PresetInfo> ColorMaker::preset_items()
{
  return QQmlListProperty<PresetInfo>(this, item_list);
}
