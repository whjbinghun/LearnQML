#include "presetinfo.h"

PresetInfo::PresetInfo(QObject *parent)
    : mn_preset_rail(0)
    , mn_preset_ptz(0)
    , m_str_preset_name("")
{

}

PresetInfo::~PresetInfo()
{

}

int PresetInfo::get_preset_rail()
{
    return mn_preset_rail;
}

int PresetInfo::get_preset_ptz()
{
    return mn_preset_ptz;
}

QString PresetInfo::itemname1()
{
    return m_str_preset_name;
}
