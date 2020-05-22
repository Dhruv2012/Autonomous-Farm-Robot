/********************************************************************************
** Form generated from reading UI file 'gps_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_GPS_CONFIG_H
#define UI_GPS_CONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDoubleSpinBox>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSlider>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QWidget>
#include <mapviz/color_button.h>

QT_BEGIN_NAMESPACE

class Ui_gps_config
{
public:
    QFormLayout *formLayout;
    QLabel *label;
    QLineEdit *topic;
    QPushButton *selecttopic;
    QLabel *label_3;
    mapviz::ColorButton *color;
    QLabel *label_7;
    QComboBox *drawstyle;
    QLabel *label_8;
    QHBoxLayout *horizontalLayout;
    QCheckBox *static_arrow_sizes;
    QSlider *arrow_size;
    QLabel *label_4;
    QDoubleSpinBox *positiontolerance;
    QLabel *label_6;
    QHBoxLayout *horizontalLayout_2;
    QSpinBox *buffersize;
    QPushButton *buttonResetBuffer;
    QLabel *label_5;
    QCheckBox *show_laps;
    QLabel *label_2;
    QLabel *status;
    QSpacerItem *verticalSpacer;

    void setupUi(QWidget *gps_config)
    {
        if (gps_config->objectName().isEmpty())
            gps_config->setObjectName(QStringLiteral("gps_config"));
        gps_config->resize(400, 222);
        gps_config->setStyleSheet(QStringLiteral(""));
        formLayout = new QFormLayout(gps_config);
        formLayout->setObjectName(QStringLiteral("formLayout"));
        label = new QLabel(gps_config);
        label->setObjectName(QStringLiteral("label"));
        QFont font;
        font.setFamily(QStringLiteral("Sans Serif"));
        font.setPointSize(8);
        label->setFont(font);

        formLayout->setWidget(0, QFormLayout::LabelRole, label);

        topic = new QLineEdit(gps_config);
        topic->setObjectName(QStringLiteral("topic"));
        topic->setFont(font);

        formLayout->setWidget(0, QFormLayout::FieldRole, topic);

        selecttopic = new QPushButton(gps_config);
        selecttopic->setObjectName(QStringLiteral("selecttopic"));
        selecttopic->setMaximumSize(QSize(55, 16777215));
        selecttopic->setFont(font);
        selecttopic->setStyleSheet(QStringLiteral(""));

        formLayout->setWidget(1, QFormLayout::FieldRole, selecttopic);

        label_3 = new QLabel(gps_config);
        label_3->setObjectName(QStringLiteral("label_3"));
        label_3->setFont(font);

        formLayout->setWidget(2, QFormLayout::LabelRole, label_3);

        color = new mapviz::ColorButton(gps_config);
        color->setObjectName(QStringLiteral("color"));
        color->setMaximumSize(QSize(24, 24));
        color->setAutoFillBackground(false);
        color->setStyleSheet(QStringLiteral(""));

        formLayout->setWidget(2, QFormLayout::FieldRole, color);

        label_7 = new QLabel(gps_config);
        label_7->setObjectName(QStringLiteral("label_7"));
        label_7->setFont(font);

        formLayout->setWidget(3, QFormLayout::LabelRole, label_7);

        drawstyle = new QComboBox(gps_config);
        drawstyle->setObjectName(QStringLiteral("drawstyle"));
        drawstyle->setMaximumSize(QSize(16777215, 25));
        QFont font1;
        font1.setFamily(QStringLiteral("Sans Serif"));
        font1.setPointSize(9);
        drawstyle->setFont(font1);

        formLayout->setWidget(3, QFormLayout::FieldRole, drawstyle);

        label_8 = new QLabel(gps_config);
        label_8->setObjectName(QStringLiteral("label_8"));
        label_8->setFont(font);

        formLayout->setWidget(4, QFormLayout::LabelRole, label_8);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        static_arrow_sizes = new QCheckBox(gps_config);
        static_arrow_sizes->setObjectName(QStringLiteral("static_arrow_sizes"));

        horizontalLayout->addWidget(static_arrow_sizes);

        arrow_size = new QSlider(gps_config);
        arrow_size->setObjectName(QStringLiteral("arrow_size"));
        arrow_size->setMinimum(1);
        arrow_size->setMaximum(500);
        arrow_size->setValue(25);
        arrow_size->setOrientation(Qt::Horizontal);

        horizontalLayout->addWidget(arrow_size);


        formLayout->setLayout(4, QFormLayout::FieldRole, horizontalLayout);

        label_4 = new QLabel(gps_config);
        label_4->setObjectName(QStringLiteral("label_4"));
        label_4->setFont(font);

        formLayout->setWidget(5, QFormLayout::LabelRole, label_4);

        positiontolerance = new QDoubleSpinBox(gps_config);
        positiontolerance->setObjectName(QStringLiteral("positiontolerance"));
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(positiontolerance->sizePolicy().hasHeightForWidth());
        positiontolerance->setSizePolicy(sizePolicy);
        positiontolerance->setButtonSymbols(QAbstractSpinBox::PlusMinus);
        positiontolerance->setValue(1);

        formLayout->setWidget(5, QFormLayout::FieldRole, positiontolerance);

        label_6 = new QLabel(gps_config);
        label_6->setObjectName(QStringLiteral("label_6"));
        label_6->setFont(font);

        formLayout->setWidget(6, QFormLayout::LabelRole, label_6);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        buffersize = new QSpinBox(gps_config);
        buffersize->setObjectName(QStringLiteral("buffersize"));
        buffersize->setButtonSymbols(QAbstractSpinBox::PlusMinus);
        buffersize->setMaximum(99999999);

        horizontalLayout_2->addWidget(buffersize);

        buttonResetBuffer = new QPushButton(gps_config);
        buttonResetBuffer->setObjectName(QStringLiteral("buttonResetBuffer"));
        buttonResetBuffer->setMaximumSize(QSize(55, 16777215));

        horizontalLayout_2->addWidget(buttonResetBuffer);


        formLayout->setLayout(6, QFormLayout::FieldRole, horizontalLayout_2);

        label_5 = new QLabel(gps_config);
        label_5->setObjectName(QStringLiteral("label_5"));

        formLayout->setWidget(7, QFormLayout::LabelRole, label_5);

        show_laps = new QCheckBox(gps_config);
        show_laps->setObjectName(QStringLiteral("show_laps"));

        formLayout->setWidget(7, QFormLayout::FieldRole, show_laps);

        label_2 = new QLabel(gps_config);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setFont(font);

        formLayout->setWidget(8, QFormLayout::LabelRole, label_2);

        status = new QLabel(gps_config);
        status->setObjectName(QStringLiteral("status"));
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        formLayout->setWidget(8, QFormLayout::FieldRole, status);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        formLayout->setItem(9, QFormLayout::FieldRole, verticalSpacer);


        retranslateUi(gps_config);

        QMetaObject::connectSlotsByName(gps_config);
    } // setupUi

    void retranslateUi(QWidget *gps_config)
    {
        gps_config->setWindowTitle(QApplication::translate("gps_config", "Form", Q_NULLPTR));
        label->setText(QApplication::translate("gps_config", "Topic:", Q_NULLPTR));
        selecttopic->setText(QApplication::translate("gps_config", "Select", Q_NULLPTR));
        label_3->setText(QApplication::translate("gps_config", "Color:", Q_NULLPTR));
        color->setText(QString());
        label_7->setText(QApplication::translate("gps_config", "Draw Style:", Q_NULLPTR));
        drawstyle->clear();
        drawstyle->insertItems(0, QStringList()
         << QApplication::translate("gps_config", "lines", Q_NULLPTR)
         << QApplication::translate("gps_config", "points", Q_NULLPTR)
         << QApplication::translate("gps_config", "arrows", Q_NULLPTR)
        );
        label_8->setText(QApplication::translate("gps_config", "Static Arrow Sizes:", Q_NULLPTR));
        static_arrow_sizes->setText(QString());
        label_4->setText(QApplication::translate("gps_config", "Position Tolerance:", Q_NULLPTR));
        positiontolerance->setSuffix(QString());
        label_6->setText(QApplication::translate("gps_config", "Buffer Size:", Q_NULLPTR));
        buttonResetBuffer->setText(QApplication::translate("gps_config", "Clear", Q_NULLPTR));
        label_5->setText(QApplication::translate("gps_config", "Show Laps", Q_NULLPTR));
        show_laps->setText(QString());
        label_2->setText(QApplication::translate("gps_config", "Status:", Q_NULLPTR));
        status->setText(QApplication::translate("gps_config", "No topic", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class gps_config: public Ui_gps_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_GPS_CONFIG_H
