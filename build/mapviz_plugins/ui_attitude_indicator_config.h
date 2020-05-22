/********************************************************************************
** Form generated from reading UI file 'attitude_indicator_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ATTITUDE_INDICATOR_CONFIG_H
#define UI_ATTITUDE_INDICATOR_CONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_attitude_indicator_config
{
public:
    QGridLayout *gridLayout;
    QLabel *label_2;
    QLabel *status;
    QLabel *label_3;
    QLineEdit *topic;
    QPushButton *selecttopic;

    void setupUi(QWidget *attitude_indicator_config)
    {
        if (attitude_indicator_config->objectName().isEmpty())
            attitude_indicator_config->setObjectName(QStringLiteral("attitude_indicator_config"));
        attitude_indicator_config->resize(401, 68);
        attitude_indicator_config->setAcceptDrops(false);
        attitude_indicator_config->setStyleSheet(QStringLiteral(""));
        gridLayout = new QGridLayout(attitude_indicator_config);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setVerticalSpacing(4);
        gridLayout->setContentsMargins(2, 2, 2, 2);
        label_2 = new QLabel(attitude_indicator_config);
        label_2->setObjectName(QStringLiteral("label_2"));
        QFont font;
        font.setFamily(QStringLiteral("Sans Serif"));
        font.setPointSize(8);
        label_2->setFont(font);

        gridLayout->addWidget(label_2, 4, 0, 1, 1);

        status = new QLabel(attitude_indicator_config);
        status->setObjectName(QStringLiteral("status"));
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        gridLayout->addWidget(status, 4, 1, 1, 2);

        label_3 = new QLabel(attitude_indicator_config);
        label_3->setObjectName(QStringLiteral("label_3"));
        QFont font1;
        font1.setFamily(QStringLiteral("Sans Serif"));
        font1.setPointSize(10);
        label_3->setFont(font1);

        gridLayout->addWidget(label_3, 2, 0, 1, 1);

        topic = new QLineEdit(attitude_indicator_config);
        topic->setObjectName(QStringLiteral("topic"));

        gridLayout->addWidget(topic, 2, 1, 1, 1);

        selecttopic = new QPushButton(attitude_indicator_config);
        selecttopic->setObjectName(QStringLiteral("selecttopic"));
        selecttopic->setAcceptDrops(false);

        gridLayout->addWidget(selecttopic, 2, 2, 1, 1);


        retranslateUi(attitude_indicator_config);

        QMetaObject::connectSlotsByName(attitude_indicator_config);
    } // setupUi

    void retranslateUi(QWidget *attitude_indicator_config)
    {
        attitude_indicator_config->setWindowTitle(QApplication::translate("attitude_indicator_config", "Form", Q_NULLPTR));
        label_2->setText(QApplication::translate("attitude_indicator_config", "Status:", Q_NULLPTR));
        status->setText(QApplication::translate("attitude_indicator_config", "No topic", Q_NULLPTR));
        label_3->setText(QApplication::translate("attitude_indicator_config", "Topic:", Q_NULLPTR));
        selecttopic->setText(QApplication::translate("attitude_indicator_config", "Select", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class attitude_indicator_config: public Ui_attitude_indicator_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ATTITUDE_INDICATOR_CONFIG_H
