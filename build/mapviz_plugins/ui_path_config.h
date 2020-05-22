/********************************************************************************
** Form generated from reading UI file 'path_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_PATH_CONFIG_H
#define UI_PATH_CONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QWidget>
#include <mapviz/color_button.h>

QT_BEGIN_NAMESPACE

class Ui_path_config
{
public:
    QGridLayout *gridLayout;
    QLabel *label_2;
    QLabel *label_3;
    QLabel *status;
    QPushButton *selecttopic;
    QLineEdit *topic;
    QLabel *label;
    mapviz::ColorButton *path_color;
    QSpacerItem *verticalSpacer;

    void setupUi(QWidget *path_config)
    {
        if (path_config->objectName().isEmpty())
            path_config->setObjectName(QStringLiteral("path_config"));
        path_config->resize(400, 79);
        path_config->setStyleSheet(QStringLiteral(""));
        gridLayout = new QGridLayout(path_config);
        gridLayout->setContentsMargins(2, 2, 2, 2);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setVerticalSpacing(4);
        label_2 = new QLabel(path_config);
        label_2->setObjectName(QStringLiteral("label_2"));
        QFont font;
        font.setFamily(QStringLiteral("Sans Serif"));
        font.setPointSize(8);
        label_2->setFont(font);

        gridLayout->addWidget(label_2, 6, 0, 1, 1);

        label_3 = new QLabel(path_config);
        label_3->setObjectName(QStringLiteral("label_3"));
        QFont font1;
        font1.setPointSize(8);
        label_3->setFont(font1);

        gridLayout->addWidget(label_3, 3, 0, 1, 1);

        status = new QLabel(path_config);
        status->setObjectName(QStringLiteral("status"));
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        gridLayout->addWidget(status, 6, 2, 1, 2);

        selecttopic = new QPushButton(path_config);
        selecttopic->setObjectName(QStringLiteral("selecttopic"));
        selecttopic->setMaximumSize(QSize(55, 16777215));
        selecttopic->setFont(font);
        selecttopic->setStyleSheet(QStringLiteral(""));

        gridLayout->addWidget(selecttopic, 2, 3, 1, 1);

        topic = new QLineEdit(path_config);
        topic->setObjectName(QStringLiteral("topic"));
        topic->setFont(font);

        gridLayout->addWidget(topic, 2, 2, 1, 1);

        label = new QLabel(path_config);
        label->setObjectName(QStringLiteral("label"));
        label->setFont(font);

        gridLayout->addWidget(label, 2, 0, 1, 1);

        path_color = new mapviz::ColorButton(path_config);
        path_color->setObjectName(QStringLiteral("path_color"));
        path_color->setMaximumSize(QSize(24, 24));

        gridLayout->addWidget(path_color, 3, 2, 1, 1);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        gridLayout->addItem(verticalSpacer, 5, 2, 1, 1);


        retranslateUi(path_config);

        QMetaObject::connectSlotsByName(path_config);
    } // setupUi

    void retranslateUi(QWidget *path_config)
    {
        path_config->setWindowTitle(QApplication::translate("path_config", "Form", Q_NULLPTR));
        label_2->setText(QApplication::translate("path_config", "Status:", Q_NULLPTR));
        label_3->setText(QApplication::translate("path_config", "Color:", Q_NULLPTR));
        status->setText(QApplication::translate("path_config", "No topic", Q_NULLPTR));
        selecttopic->setText(QApplication::translate("path_config", "Select", Q_NULLPTR));
        label->setText(QApplication::translate("path_config", "Topic:", Q_NULLPTR));
        path_color->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class path_config: public Ui_path_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_PATH_CONFIG_H
