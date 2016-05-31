#ifndef TESTDATA_H
#define TESTDATA_H

#include <QObject>

typedef struct _tagDataA {
    int n_sign_id;
    QString str_clr;

    _tagDataA()
        : n_sign_id( -1 )
        , str_clr( "" ) {}
}DataA;

class TestData : public QObject
{
    Q_OBJECT
public:
    TestData();
    ~TestData();
    QJsonArray get_data();
private:
    QList<DataA> m_list_data;
};

#endif // TESTDATA_H
