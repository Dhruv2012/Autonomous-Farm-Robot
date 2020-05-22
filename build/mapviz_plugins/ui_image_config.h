/********************************************************************************
** Form generated from reading UI file 'image_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_IMAGE_CONFIG_H
#define UI_IMAGE_CONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDoubleSpinBox>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_image_config
{
public:
    QGridLayout *gridLayout;
    QLabel *label;
    QComboBox *transport_combo_box;
    QLabel *label_3;
    QCheckBox *keep_ratio;
    QLabel *label_8;
    QLabel *label_7;
    QComboBox *units;
    QLabel *label_9;
    QLabel *label_2;
    QLabel *label_6;
    QLabel *status;
    QLabel *label_5;
    QLabel *label_4;
    QSpacerItem *verticalSpacer;
    QSpinBox *offsety;
    QSpinBox *offsetx;
    QComboBox *anchor;
    QLineEdit *topic;
    QPushButton *selecttopic;
    QDoubleSpinBox *width;
    QDoubleSpinBox *height;

    void setupUi(QWidget *image_config)
    {
        if (image_config->objectName().isEmpty())
            image_config->setObjectName(QStringLiteral("image_config"));
        image_config->resize(396, 371);
        image_config->setStyleSheet(QStringLiteral(""));
        gridLayout = new QGridLayout(image_config);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        label = new QLabel(image_config);
        label->setObjectName(QStringLiteral("label"));
        QFont font;
        font.setFamily(QStringLiteral("Sans Serif"));
        font.setPointSize(8);
        label->setFont(font);

        gridLayout->addWidget(label, 0, 0, 1, 1);

        transport_combo_box = new QComboBox(image_config);
        transport_combo_box->setObjectName(QStringLiteral("transport_combo_box"));
        transport_combo_box->setMaximumSize(QSize(16777215, 25));

        gridLayout->addWidget(transport_combo_box, 8, 1, 2, 2);

        label_3 = new QLabel(image_config);
        label_3->setObjectName(QStringLiteral("label_3"));
        label_3->setFont(font);

        gridLayout->addWidget(label_3, 1, 0, 1, 1);

        keep_ratio = new QCheckBox(image_config);
        keep_ratio->setObjectName(QStringLiteral("keep_ratio"));

        gridLayout->addWidget(keep_ratio, 4, 1, 1, 2);

        label_8 = new QLabel(image_config);
        label_8->setObjectName(QStringLiteral("label_8"));
        label_8->setFont(font);

        gridLayout->addWidget(label_8, 7, 0, 1, 1);

        label_7 = new QLabel(image_config);
        label_7->setObjectName(QStringLiteral("label_7"));
        label_7->setFont(font);

        gridLayout->addWidget(label_7, 6, 0, 1, 1);

        units = new QComboBox(image_config);
        units->setObjectName(QStringLiteral("units"));
        units->setMaximumSize(QSize(16777213, 25));
        QFont font1;
        font1.setFamily(QStringLiteral("Sans Serif"));
        font1.setPointSize(9);
        units->setFont(font1);

        gridLayout->addWidget(units, 7, 1, 1, 2);

        label_9 = new QLabel(image_config);
        label_9->setObjectName(QStringLiteral("label_9"));
        label_9->setFont(font);

        gridLayout->addWidget(label_9, 8, 0, 2, 1);

        label_2 = new QLabel(image_config);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setFont(font);

        gridLayout->addWidget(label_2, 11, 0, 1, 1);

        label_6 = new QLabel(image_config);
        label_6->setObjectName(QStringLiteral("label_6"));
        label_6->setFont(font);

        gridLayout->addWidget(label_6, 5, 0, 1, 1);

        status = new QLabel(image_config);
        status->setObjectName(QStringLiteral("status"));
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        gridLayout->addWidget(status, 11, 2, 1, 1);

        label_5 = new QLabel(image_config);
        label_5->setObjectName(QStringLiteral("label_5"));
        label_5->setFont(font);

        gridLayout->addWidget(label_5, 3, 0, 1, 1);

        label_4 = new QLabel(image_config);
        label_4->setObjectName(QStringLiteral("label_4"));
        label_4->setFont(font);

        gridLayout->addWidget(label_4, 2, 0, 1, 1);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        gridLayout->addItem(verticalSpacer, 10, 1, 1, 1);

        offsety = new QSpinBox(image_config);
        offsety->setObjectName(QStringLiteral("offsety"));
        offsety->setMaximum(2000);

        gridLayout->addWidget(offsety, 3, 1, 1, 1);

        offsetx = new QSpinBox(image_config);
        offsetx->setObjectName(QStringLiteral("offsetx"));
        offsetx->setMaximum(2000);

        gridLayout->addWidget(offsetx, 2, 1, 1, 1);

        anchor = new QComboBox(image_config);
        anchor->setObjectName(QStringLiteral("anchor"));
        anchor->setMaximumSize(QSize(16777215, 25));
        anchor->setFont(font1);

        gridLayout->addWidget(anchor, 1, 1, 1, 1);

        topic = new QLineEdit(image_config);
        topic->setObjectName(QStringLiteral("topic"));
        topic->setFont(font);

        gridLayout->addWidget(topic, 0, 1, 1, 1);

        selecttopic = new QPushButton(image_config);
        selecttopic->setObjectName(QStringLiteral("selecttopic"));
        selecttopic->setMaximumSize(QSize(55, 16777215));
        selecttopic->setFont(font);
        selecttopic->setStyleSheet(QStringLiteral(""));

        gridLayout->addWidget(selecttopic, 0, 2, 1, 1);

        width = new QDoubleSpinBox(image_config);
        width->setObjectName(QStringLiteral("width"));
        width->setDecimals(0);
        width->setMinimum(1);
        width->setMaximum(10000);
        width->setValue(320);

        gridLayout->addWidget(width, 5, 1, 1, 2);

        height = new QDoubleSpinBox(image_config);
        height->setObjectName(QStringLiteral("height"));
        height->setDecimals(0);
        height->setMinimum(1);
        height->setMaximum(10000);
        height->setValue(240);

        gridLayout->addWidget(height, 6, 1, 1, 2);


        retranslateUi(image_config);

        QMetaObject::connectSlotsByName(image_config);
    } // setupUi

    void retranslateUi(QWidget *image_config)
    {
        image_config->setWindowTitle(QApplication::translate("image_config", "Form", Q_NULLPTR));
        label->setText(QApplication::translate("image_config", "Topic:", Q_NULLPTR));
        transport_combo_box->clear();
        transport_combo_box->insertItems(0, QStringList()
         << QApplication::translate("image_config", "default", Q_NULLPTR)
        );
        label_3->setText(QApplication::translate("image_config", "Anchor:", Q_NULLPTR));
        keep_ratio->setText(QApplication::translate("image_config", "Keep original aspect ratio", Q_NULLPTR));
        label_8->setText(QApplication::translate("image_config", "Units:", Q_NULLPTR));
        label_7->setText(QApplication::translate("image_config", "Height:", Q_NULLPTR));
        units->clear();
        units->insertItems(0, QStringList()
         << QApplication::translate("image_config", "pixels", Q_NULLPTR)
         << QApplication::translate("image_config", "percent", Q_NULLPTR)
        );
        label_9->setText(QApplication::translate("image_config", "Transport:", Q_NULLPTR));
        label_2->setText(QApplication::translate("image_config", "Status:", Q_NULLPTR));
        label_6->setText(QApplication::translate("image_config", "Width:", Q_NULLPTR));
        status->setText(QApplication::translate("image_config", "No topic", Q_NULLPTR));
        label_5->setText(QApplication::translate("image_config", "Offset Y:", Q_NULLPTR));
        label_4->setText(QApplication::translate("image_config", "Offset X:", Q_NULLPTR));
        anchor->clear();
        anchor->insertItems(0, QStringList()
         << QApplication::translate("image_config", "top left", Q_NULLPTR)
         << QApplication::translate("image_config", "top center", Q_NULLPTR)
         << QApplication::translate("image_config", "top right", Q_NULLPTR)
         << QApplication::translate("image_config", "center left", Q_NULLPTR)
         << QApplication::translate("image_config", "center", Q_NULLPTR)
         << QApplication::translate("image_config", "center right", Q_NULLPTR)
         << QApplication::translate("image_config", "bottom left", Q_NULLPTR)
         << QApplication::translate("image_config", "bottom center", Q_NULLPTR)
         << QApplication::translate("image_config", "bottom right", Q_NULLPTR)
        );
        selecttopic->setText(QApplication::translate("image_config", "Select", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class image_config: public Ui_image_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_IMAGE_CONFIG_H
