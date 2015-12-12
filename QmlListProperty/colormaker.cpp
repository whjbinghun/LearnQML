#include "colormaker.h"
#include <QDebug>

ColorMaker::ColorMaker(QObject *parent) :
    QObject(parent)
{
    qsrand( QDateTime::currentDateTime().toTime_t() );
    Preset *p_preset = new Preset;
    p_preset->mn_preset_ptz = 0;
    p_preset->mn_preset_rail = 1;
    p_preset->m_str_preset_name = "aa";
  //  m_preset_info_list.push_back(p_preset);
    item_list.push_back(p_preset);
    p_preset = new Preset;
    p_preset->mn_preset_ptz = 10;
    p_preset->mn_preset_rail = 20;
    p_preset->m_str_preset_name = "bb";
  //  m_preset_info_list.push_back(p_preset);
    item_list.push_back(p_preset);

}

ColorMaker::~ColorMaker()
{

}


QQmlListProperty<Preset> ColorMaker::preset_items()
{
  return QQmlListProperty<Preset>(this, item_list);
}
