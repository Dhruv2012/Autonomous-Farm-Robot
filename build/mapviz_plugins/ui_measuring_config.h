/********************************************************************************
** Form generated from reading UI file 'measuring_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MEASURING_CONFIG_H
#define UI_MEASURING_CONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QDoubleSpinBox>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QWidget>
#include <mapviz/color_button.h>

QT_BEGIN_NAMESPACE

class Ui_measuring_config
{
public:
    QFormLayout *formLayout;
    QLabel *label_3;
    QLabel *measurement;
    QLabel *label_5;
    QLabel *totaldistance;
    mapviz::ColorButton *main_color;
    QLabel *label_2;
    QLabel *status;
    QCheckBox *show_measurements;
    QLabel *label;
    QPushButton *clear;
    mapviz::ColorButton *bkgnd_color;
    QLabel *label_4;
    QLabel *label_6;
    QLabel *label_7;
    QCheckBox *show_bkgnd_color;
    QSpinBox *font_size;
    QLabel *label_8;
    QDoubleSpinBox *alpha;
    QLabel *label_9;

    void setupUi(QWidget *measuring_config)
    {
        if (measuring_config->objectName().isEmpty())
            measuring_config->setObjectName(QStringLiteral("measuring_config"));
        measuring_config->resize(300, 240);
        QFont font;
        font.setPointSize(8);
        measuring_config->setFont(font);
        measuring_config->setStyleSheet(QStringLiteral(""));
        formLayout = new QFormLayout(measuring_config);
        formLayout->setObjectName(QStringLiteral("formLayout"));
        label_3 = new QLabel(measuring_config);
        label_3->setObjectName(QStringLiteral("label_3"));
        label_3->setMaximumSize(QSize(100, 16777215));

        formLayout->setWidget(0, QFormLayout::LabelRole, label_3);

        measurement = new QLabel(measuring_config);
        measurement->setObjectName(QStringLiteral("measurement"));
        measurement->setWordWrap(true);

        formLayout->setWidget(0, QFormLayout::FieldRole, measurement);

        label_5 = new QLabel(measuring_config);
        label_5->setObjectName(QStringLiteral("label_5"));
        label_5->setMaximumSize(QSize(100, 16777215));

        formLayout->setWidget(1, QFormLayout::LabelRole, label_5);

        totaldistance = new QLabel(measuring_config);
        totaldistance->setObjectName(QStringLiteral("totaldistance"));
        totaldistance->setWordWrap(true);

        formLayout->setWidget(1, QFormLayout::FieldRole, totaldistance);

        main_color = new mapviz::ColorButton(measuring_config);
        main_color->setObjectName(QStringLiteral("main_color"));
        main_color->setMaximumSize(QSize(24, 24));

        formLayout->setWidget(2, QFormLayout::FieldRole, main_color);

        label_2 = new QLabel(measuring_config);
        label_2->setObjectName(QStringLiteral("label_2"));

        formLayout->setWidget(9, QFormLayout::LabelRole, label_2);

        status = new QLabel(measuring_config);
        status->setObjectName(QStringLiteral("status"));
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        formLayout->setWidget(9, QFormLayout::FieldRole, status);

        show_measurements = new QCheckBox(measuring_config);
        show_measurements->setObjectName(QStringLiteral("show_measurements"));
        show_measurements->setChecked(true);

        formLayout->setWidget(5, QFormLayout::FieldRole, show_measurements);

        label = new QLabel(measuring_config);
        label->setObjectName(QStringLiteral("label"));

        formLayout->setWidget(5, QFormLayout::LabelRole, label);

        clear = new QPushButton(measuring_config);
        clear->setObjectName(QStringLiteral("clear"));
        clear->setMaximumSize(QSize(140, 16777215));
        clear->setIconSize(QSize(16, 16));

        formLayout->setWidget(8, QFormLayout::FieldRole, clear);

        bkgnd_color = new mapviz::ColorButton(measuring_config);
        bkgnd_color->setObjectName(QStringLiteral("bkgnd_color"));
        bkgnd_color->setMaximumSize(QSize(24, 24));

        formLayout->setWidget(3, QFormLayout::FieldRole, bkgnd_color);

        label_4 = new QLabel(measuring_config);
        label_4->setObjectName(QStringLiteral("label_4"));

        formLayout->setWidget(2, QFormLayout::LabelRole, label_4);

        label_6 = new QLabel(measuring_config);
        label_6->setObjectName(QStringLiteral("label_6"));

        formLayout->setWidget(3, QFormLayout::LabelRole, label_6);

        label_7 = new QLabel(measuring_config);
        label_7->setObjectName(QStringLiteral("label_7"));

        formLayout->setWidget(4, QFormLayout::LabelRole, label_7);

        show_bkgnd_color = new QCheckBox(measuring_config);
        show_bkgnd_color->setObjectName(QStringLiteral("show_bkgnd_color"));
        show_bkgnd_color->setChecked(true);

        formLayout->setWidget(4, QFormLayout::FieldRole, show_bkgnd_color);

        font_size = new QSpinBox(measuring_config);
        font_size->setObjectName(QStringLiteral("font_size"));
        font_size->setMaximumSize(QSize(48, 16777215));
        font_size->setButtonSymbols(QAbstractSpinBox::PlusMinus);
        font_size->setMinimum(5);
        font_size->setMaximum(40);
        font_size->setValue(10);

        formLayout->setWidget(6, QFormLayout::FieldRole, font_size);

        label_8 = new QLabel(measuring_config);
        label_8->setObjectName(QStringLiteral("label_8"));

        formLayout->setWidget(6, QFormLayout::LabelRole, label_8);

        alpha = new QDoubleSpinBox(measuring_config);
        alpha->setObjectName(QStringLiteral("alpha"));
        alpha->setMaximumSize(QSize(48, 16777215));
        alpha->setButtonSymbols(QAbstractSpinBox::PlusMinus);
        alpha->setMinimum(0);
        alpha->setMaximum(1);
        alpha->setValue(0.5);
        alpha->setSingleStep(0.1);

        formLayout->setWidget(7, QFormLayout::FieldRole, alpha);

        label_9 = new QLabel(measuring_config);
        label_9->setObjectName(QStringLiteral("label_9"));

        formLayout->setWidget(7, QFormLayout::LabelRole, label_9);


        retranslateUi(measuring_config);

        main_color->setDefault(false);
        bkgnd_color->setDefault(false);


        QMetaObject::connectSlotsByName(measuring_config);
    } // setupUi

    void retranslateUi(QWidget *measuring_config)
    {
        measuring_config->setWindowTitle(QApplication::translate("measuring_config", "Form", Q_NULLPTR));
        label_3->setText(QApplication::translate("measuring_config", "Distance:", Q_NULLPTR));
        measurement->setText(QString());
        label_5->setText(QApplication::translate("measuring_config", "Total Distance:", Q_NULLPTR));
        totaldistance->setText(QString());
        main_color->setText(QString());
        label_2->setText(QApplication::translate("measuring_config", "Status:", Q_NULLPTR));
        status->setText(QApplication::translate("measuring_config", "No topic", Q_NULLPTR));
        show_measurements->setText(QString());
        label->setText(QApplication::translate("measuring_config", "Show Measurements:", Q_NULLPTR));
        clear->setText(QApplication::translate("measuring_config", "Clear", Q_NULLPTR));
        bkgnd_color->setText(QString());
        label_4->setText(QApplication::translate("measuring_config", "Main Color: ", Q_NULLPTR));
        label_6->setText(QApplication::translate("measuring_config", "Background Color:", Q_NULLPTR));
        label_7->setText(QApplication::translate("measuring_config", "Show Background Color:", Q_NULLPTR));
        show_bkgnd_color->setText(QString());
        label_8->setText(QApplication::translate("measuring_config", "Font Size:", Q_NULLPTR));
        label_9->setText(QApplication::translate("measuring_config", "Alpha:", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class measuring_config: public Ui_measuring_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MEASURING_CONFIG_H
