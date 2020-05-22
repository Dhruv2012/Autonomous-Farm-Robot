/********************************************************************************
** Form generated from reading UI file 'topic_select.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_TOPIC_SELECT_H
#define UI_TOPIC_SELECT_H

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

class Ui_topicselect
{
public:
    QHBoxLayout *horizontalLayout;
    QListWidget *displaylist;
    QDialogButtonBox *buttonBox;

    void setupUi(QDialog *topicselect)
    {
        if (topicselect->objectName().isEmpty())
            topicselect->setObjectName(QStringLiteral("topicselect"));
        topicselect->resize(400, 300);
        topicselect->setModal(true);
        horizontalLayout = new QHBoxLayout(topicselect);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        displaylist = new QListWidget(topicselect);
        displaylist->setObjectName(QStringLiteral("displaylist"));
        displaylist->setSortingEnabled(true);

        horizontalLayout->addWidget(displaylist);

        buttonBox = new QDialogButtonBox(topicselect);
        buttonBox->setObjectName(QStringLiteral("buttonBox"));
        buttonBox->setOrientation(Qt::Vertical);
        buttonBox->setStandardButtons(QDialogButtonBox::Cancel|QDialogButtonBox::Ok);

        horizontalLayout->addWidget(buttonBox);


        retranslateUi(topicselect);
        QObject::connect(buttonBox, SIGNAL(accepted()), topicselect, SLOT(accept()));
        QObject::connect(buttonBox, SIGNAL(rejected()), topicselect, SLOT(reject()));

        QMetaObject::connectSlotsByName(topicselect);
    } // setupUi

    void retranslateUi(QDialog *topicselect)
    {
        topicselect->setWindowTitle(QApplication::translate("topicselect", "Select Topic", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class topicselect: public Ui_topicselect {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_TOPIC_SELECT_H
