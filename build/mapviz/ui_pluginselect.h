/********************************************************************************
** Form generated from reading UI file 'pluginselect.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_PLUGINSELECT_H
#define UI_PLUGINSELECT_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDialog>
#include <QtWidgets/QDialogButtonBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QListWidget>

QT_BEGIN_NAMESPACE

class Ui_pluginselect
{
public:
    QHBoxLayout *horizontalLayout;
    QListWidget *displaylist;
    QDialogButtonBox *buttonBox;

    void setupUi(QDialog *pluginselect)
    {
        if (pluginselect->objectName().isEmpty())
            pluginselect->setObjectName(QStringLiteral("pluginselect"));
        pluginselect->resize(400, 300);
        pluginselect->setModal(true);
        horizontalLayout = new QHBoxLayout(pluginselect);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        displaylist = new QListWidget(pluginselect);
        displaylist->setObjectName(QStringLiteral("displaylist"));
        displaylist->setSortingEnabled(true);

        horizontalLayout->addWidget(displaylist);

        buttonBox = new QDialogButtonBox(pluginselect);
        buttonBox->setObjectName(QStringLiteral("buttonBox"));
        buttonBox->setOrientation(Qt::Vertical);
        buttonBox->setStandardButtons(QDialogButtonBox::Cancel|QDialogButtonBox::Ok);

        horizontalLayout->addWidget(buttonBox);


        retranslateUi(pluginselect);
        QObject::connect(buttonBox, SIGNAL(accepted()), pluginselect, SLOT(accept()));
        QObject::connect(buttonBox, SIGNAL(rejected()), pluginselect, SLOT(reject()));
        QObject::connect(displaylist, SIGNAL(doubleClicked(QModelIndex)), pluginselect, SLOT(accept()));

        QMetaObject::connectSlotsByName(pluginselect);
    } // setupUi

    void retranslateUi(QDialog *pluginselect)
    {
        pluginselect->setWindowTitle(QApplication::translate("pluginselect", "Select New Display", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class pluginselect: public Ui_pluginselect {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_PLUGINSELECT_H
