#ifndef MSDIALOG_H
#define MSDIALOG_H

#include <QQuickWindow>

class MsDialog : public QQuickWindow
{
    Q_OBJECT
public:
    explicit MsDialog(QQuickWindow *parent = 0);
    ~MsDialog();
signals:

public slots:
};

#endif // MSDIALOG_H
