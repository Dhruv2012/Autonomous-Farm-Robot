/********************************************************************************
** Form generated from reading UI file 'float_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_FLOAT_CONFIG_H
#define UI_FLOAT_CONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QWidget>
#include <mapviz/color_button.h>

QT_BEGIN_NAMESPACE

class Ui_float_config
{
public:
    QGridLayout *gridLayout;
    QLabel *label_2;
    QPushButton *selecttopic;
    QLabel *label;
    QLineEdit *topic;
    QLabel *font_label;
    QPushButton *font_button;
    QLabel *color_label;
    mapviz::ColorButton *color;
    QComboBox *anchor;
    QSpinBox *offsetx;
    QLabel *label_3;
    QLabel *label_4;
    QLabel *status;
    QSpinBox *offsety;
    QLabel *label_5;
    QLabel *label_8;
    QComboBox *units;
    QLineEdit *postfix;
    QLabel *label_6;

    void setupUi(QWidget *float_config)
    {
        if (float_config->objectName().isEmpty())
            float_config->setObjectName(QStringLiteral("float_config"));
        float_config->resize(400, 300);
        float_config->setStyleSheet(QStringLiteral(""));
        gridLayout = new QGridLayout(float_config);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setVerticalSpacing(4);
        gridLayout->setContentsMargins(2, 2, 2, 2);
        label_2 = new QLabel(float_config);
        label_2->setObjectName(QStringLiteral("label_2"));
        QFont font;
        font.setFamily(QStringLiteral("Sans Serif"));
        font.setPointSize(8);
        label_2->setFont(font);

        gridLayout->addWidget(label_2, 12, 0, 1, 1);

        selecttopic = new QPushButton(float_config);
        selecttopic->setObjectName(QStringLiteral("selecttopic"));
        selecttopic->setMaximumSize(QSize(55, 16777215));
        selecttopic->setFont(font);
        selecttopic->setStyleSheet(QStringLiteral(""));

        gridLayout->addWidget(selecttopic, 2, 2, 1, 1);

        label = new QLabel(float_config);
        label->setObjectName(QStringLiteral("label"));
        label->setFont(font);

        gridLayout->addWidget(label, 2, 0, 1, 1);

        topic = new QLineEdit(float_config);
        topic->setObjectName(QStringLiteral("topic"));
        topic->setFont(font);

        gridLayout->addWidget(topic, 2, 1, 1, 1);

        font_label = new QLabel(float_config);
        font_label->setObjectName(QStringLiteral("font_label"));
        font_label->setFont(font);

        gridLayout->addWidget(font_label, 3, 0, 1, 1);

        font_button = new QPushButton(float_config);
        font_button->setObjectName(QStringLiteral("font_button"));
        font_button->setMaximumSize(QSize(16777215, 16777215));
        font_button->setFont(font);

        gridLayout->addWidget(font_button, 3, 1, 1, 1);

        color_label = new QLabel(float_config);
        color_label->setObjectName(QStringLiteral("color_label"));
        color_label->setFont(font);

        gridLayout->addWidget(color_label, 4, 0, 1, 1);

        color = new mapviz::ColorButton(float_config);
        color->setObjectName(QStringLiteral("color"));
        color->setMaximumSize(QSize(24, 24));
        color->setAutoFillBackground(false);
        color->setStyleSheet(QStringLiteral(""));

        gridLayout->addWidget(color, 4, 1, 1, 1);

        anchor = new QComboBox(float_config);
        anchor->setObjectName(QStringLiteral("anchor"));
        anchor->setMaximumSize(QSize(16777215, 25));
        QFont font1;
        font1.setFamily(QStringLiteral("Sans Serif"));
        font1.setPointSize(9);
        anchor->setFont(font1);

        gridLayout->addWidget(anchor, 5, 1, 1, 1);

        offsetx = new QSpinBox(float_config);
        offsetx->setObjectName(QStringLiteral("offsetx"));
        offsetx->setMaximum(2000);

        gridLayout->addWidget(offsetx, 6, 1, 1, 1);

        label_3 = new QLabel(float_config);
        label_3->setObjectName(QStringLiteral("label_3"));
        label_3->setFont(font);

        gridLayout->addWidget(label_3, 5, 0, 1, 1);

        label_4 = new QLabel(float_config);
        label_4->setObjectName(QStringLiteral("label_4"));
        label_4->setFont(font);

        gridLayout->addWidget(label_4, 6, 0, 1, 1);

        status = new QLabel(float_config);
        status->setObjectName(QStringLiteral("status"));
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        gridLayout->addWidget(status, 12, 1, 1, 2);

        offsety = new QSpinBox(float_config);
        offsety->setObjectName(QStringLiteral("offsety"));
        offsety->setMaximum(2000);

        gridLayout->addWidget(offsety, 7, 1, 1, 1);

        label_5 = new QLabel(float_config);
        label_5->setObjectName(QStringLiteral("label_5"));
        label_5->setFont(font);

        gridLayout->addWidget(label_5, 7, 0, 1, 1);

        label_8 = new QLabel(float_config);
        label_8->setObjectName(QStringLiteral("label_8"));
        label_8->setFont(font);

        gridLayout->addWidget(label_8, 10, 0, 1, 1);

        units = new QComboBox(float_config);
        units->setObjectName(QStringLiteral("units"));
        units->setMaximumSize(QSize(16777213, 25));
        units->setFont(font1);

        gridLayout->addWidget(units, 10, 1, 1, 1);

        postfix = new QLineEdit(float_config);
        postfix->setObjectName(QStringLiteral("postfix"));

        gridLayout->addWidget(postfix, 11, 1, 1, 1);

        label_6 = new QLabel(float_config);
        label_6->setObjectName(QStringLiteral("label_6"));

        gridLayout->addWidget(label_6, 11, 0, 1, 1);


        retranslateUi(float_config);

        QMetaObject::connectSlotsByName(float_config);
    } // setupUi

    void retranslateUi(QWidget *float_config)
    {
        float_config->setWindowTitle(QApplication::translate("float_config", "Form", Q_NULLPTR));
        label_2->setText(QApplication::translate("float_config", "Status:", Q_NULLPTR));
        selecttopic->setText(QApplication::translate("float_config", "Select", Q_NULLPTR));
        label->setText(QApplication::translate("float_config", "Topic:", Q_NULLPTR));
        font_label->setText(QApplication::translate("float_config", "Font:", Q_NULLPTR));
        font_button->setText(QApplication::translate("float_config", "Helvetica", Q_NULLPTR));
        color_label->setText(QApplication::translate("float_config", "Color:", Q_NULLPTR));
        color->setText(QString());
        anchor->clear();
        anchor->insertItems(0, QStringList()
         << QApplication::translate("float_config", "top left", Q_NULLPTR)
         << QApplication::translate("float_config", "top center", Q_NULLPTR)
         << QApplication::translate("float_config", "top right", Q_NULLPTR)
         << QApplication::translate("float_config", "center left", Q_NULLPTR)
         << QApplication::translate("float_config", "center", Q_NULLPTR)
         << QApplication::translate("float_config", "center right", Q_NULLPTR)
         << QApplication::translate("float_config", "bottom left", Q_NULLPTR)
         << QApplication::translate("float_config", "bottom center", Q_NULLPTR)
         << QApplication::translate("float_config", "bottom right", Q_NULLPTR)
        );
        label_3->setText(QApplication::translate("float_config", "Anchor:", Q_NULLPTR));
        label_4->setText(QApplication::translate("float_config", "Offset X:", Q_NULLPTR));
        status->setText(QApplication::translate("float_config", "No topic", Q_NULLPTR));
        label_5->setText(QApplication::translate("float_config", "Offset Y:", Q_NULLPTR));
        label_8->setText(QApplication::translate("float_config", "Units:", Q_NULLPTR));
        units->clear();
        units->insertItems(0, QStringList()
         << QApplication::translate("float_config", "pixels", Q_NULLPTR)
         << QApplication::translate("float_config", "percent", Q_NULLPTR)
        );
        label_6->setText(QApplication::translate("float_config", "Postfix:", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class float_config: public Ui_float_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_FLOAT_CONFIG_H
