#include "testdata.h"

TestData::TestData()
{

}

TestData::~TestData()
{

}

QJsonArray TestData::get_data()
{
    QJsonArray json_array;
    QList<DataA>::iterator it = m_list_data.begin();
    for( ; it != m_list_data.end(); ++it ){
        QJsonObject object;
        object.insert( "sign_id", (*it).n_sign_id );
        object.insert( "data_clr", (*it).str_clr );

        json_array.append( object );
    }

    return json_array;
}
