/********************************************************************************
** Form generated from reading UI file 'marker_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MARKER_CONFIG_H
#define UI_MARKER_CONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QListWidget>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_marker_config
{
public:
    QGridLayout *gridLayout;
    QLabel *status;
    QLineEdit *topic;
    QLabel *label_2;
    QPushButton *selecttopic;
    QLabel *label;
    QPushButton *clear;
    QListWidget *nsList;

    void setupUi(QWidget *marker_config)
    {
        if (marker_config->objectName().isEmpty())
            marker_config->setObjectName(QStringLiteral("marker_config"));
        marker_config->resize(400, 300);
        marker_config->setStyleSheet(QStringLiteral(""));
        gridLayout = new QGridLayout(marker_config);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setVerticalSpacing(4);
        gridLayout->setContentsMargins(2, 2, 2, 2);
        status = new QLabel(marker_config);
        status->setObjectName(QStringLiteral("status"));
        QFont font;
        font.setFamily(QStringLiteral("Sans Serif"));
        font.setPointSize(8);
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        gridLayout->addWidget(status, 5, 3, 1, 2);

        topic = new QLineEdit(marker_config);
        topic->setObjectName(QStringLiteral("topic"));
        topic->setFont(font);

        gridLayout->addWidget(topic, 2, 3, 1, 1);

        label_2 = new QLabel(marker_config);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setFont(font);

        gridLayout->addWidget(label_2, 5, 0, 1, 1);

        selecttopic = new QPushButton(marker_config);
        selecttopic->setObjectName(QStringLiteral("selecttopic"));
        selecttopic->setMaximumSize(QSize(55, 16777215));
        selecttopic->setFont(font);
        selecttopic->setStyleSheet(QStringLiteral(""));

        gridLayout->addWidget(selecttopic, 2, 4, 1, 1);

        label = new QLabel(marker_config);
        label->setObjectName(QStringLiteral("label"));
        label->setFont(font);

        gridLayout->addWidget(label, 2, 0, 1, 1);

        clear = new QPushButton(marker_config);
        clear->setObjectName(QStringLiteral("clear"));

        gridLayout->addWidget(clear, 3, 3, 1, 1);

        nsList = new QListWidget(marker_config);
        nsList->setObjectName(QStringLiteral("nsList"));

        gridLayout->addWidget(nsList, 4, 3, 1, 1);


        retranslateUi(marker_config);

        QMetaObject::connectSlotsByName(marker_config);
    } // setupUi

    void retranslateUi(QWidget *marker_config)
    {
        marker_config->setWindowTitle(QApplication::translate("marker_config", "Form", Q_NULLPTR));
        status->setText(QApplication::translate("marker_config", "No topic", Q_NULLPTR));
        label_2->setText(QApplication::translate("marker_config", "Status:", Q_NULLPTR));
        selecttopic->setText(QApplication::translate("marker_config", "Select", Q_NULLPTR));
        label->setText(QApplication::translate("marker_config", "Topic:", Q_NULLPTR));
        clear->setText(QApplication::translate("marker_config", " Clear All Markers", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class marker_config: public Ui_marker_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MARKER_CONFIG_H
