/********************************************************************************
** Form generated from reading UI file 'disparity_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_DISPARITY_CONFIG_H
#define UI_DISPARITY_CONFIG_H

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

QT_BEGIN_NAMESPACE

class Ui_disparity_config
{
public:
    QGridLayout *gridLayout;
    QLabel *label_2;
    QPushButton *selecttopic;
    QLineEdit *topic;
    QLabel *label;
    QComboBox *anchor;
    QLabel *label_3;
    QLabel *label_4;
    QSpinBox *offsetx;
    QLabel *status;
    QLabel *label_5;
    QSpinBox *offsety;
    QLabel *label_6;
    QSpinBox *width;
    QLabel *label_7;
    QSpinBox *height;
    QLabel *label_8;
    QComboBox *units;

    void setupUi(QWidget *disparity_config)
    {
        if (disparity_config->objectName().isEmpty())
            disparity_config->setObjectName(QStringLiteral("disparity_config"));
        disparity_config->resize(400, 300);
        disparity_config->setStyleSheet(QStringLiteral(""));
        gridLayout = new QGridLayout(disparity_config);
        gridLayout->setContentsMargins(2, 2, 2, 2);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setVerticalSpacing(4);
        label_2 = new QLabel(disparity_config);
        label_2->setObjectName(QStringLiteral("label_2"));
        QFont font;
        font.setFamily(QStringLiteral("Sans Serif"));
        font.setPointSize(8);
        label_2->setFont(font);

        gridLayout->addWidget(label_2, 9, 0, 1, 1);

        selecttopic = new QPushButton(disparity_config);
        selecttopic->setObjectName(QStringLiteral("selecttopic"));
        selecttopic->setMaximumSize(QSize(55, 16777215));
        selecttopic->setFont(font);
        selecttopic->setStyleSheet(QStringLiteral(""));

        gridLayout->addWidget(selecttopic, 2, 2, 1, 1);

        topic = new QLineEdit(disparity_config);
        topic->setObjectName(QStringLiteral("topic"));
        topic->setFont(font);

        gridLayout->addWidget(topic, 2, 1, 1, 1);

        label = new QLabel(disparity_config);
        label->setObjectName(QStringLiteral("label"));
        label->setFont(font);

        gridLayout->addWidget(label, 2, 0, 1, 1);

        anchor = new QComboBox(disparity_config);
        anchor->setObjectName(QStringLiteral("anchor"));
        anchor->setMaximumSize(QSize(16777215, 25));
        QFont font1;
        font1.setFamily(QStringLiteral("Sans Serif"));
        font1.setPointSize(9);
        anchor->setFont(font1);

        gridLayout->addWidget(anchor, 3, 1, 1, 1);

        label_3 = new QLabel(disparity_config);
        label_3->setObjectName(QStringLiteral("label_3"));
        label_3->setFont(font);

        gridLayout->addWidget(label_3, 3, 0, 1, 1);

        label_4 = new QLabel(disparity_config);
        label_4->setObjectName(QStringLiteral("label_4"));
        label_4->setFont(font);

        gridLayout->addWidget(label_4, 4, 0, 1, 1);

        offsetx = new QSpinBox(disparity_config);
        offsetx->setObjectName(QStringLiteral("offsetx"));
        offsetx->setMaximum(2000);

        gridLayout->addWidget(offsetx, 4, 1, 1, 1);

        status = new QLabel(disparity_config);
        status->setObjectName(QStringLiteral("status"));
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        gridLayout->addWidget(status, 9, 1, 1, 2);

        label_5 = new QLabel(disparity_config);
        label_5->setObjectName(QStringLiteral("label_5"));
        label_5->setFont(font);

        gridLayout->addWidget(label_5, 5, 0, 1, 1);

        offsety = new QSpinBox(disparity_config);
        offsety->setObjectName(QStringLiteral("offsety"));
        offsety->setMaximum(2000);

        gridLayout->addWidget(offsety, 5, 1, 1, 1);

        label_6 = new QLabel(disparity_config);
        label_6->setObjectName(QStringLiteral("label_6"));
        label_6->setFont(font);

        gridLayout->addWidget(label_6, 6, 0, 1, 1);

        width = new QSpinBox(disparity_config);
        width->setObjectName(QStringLiteral("width"));
        width->setMaximum(2000);
        width->setValue(320);

        gridLayout->addWidget(width, 6, 1, 1, 1);

        label_7 = new QLabel(disparity_config);
        label_7->setObjectName(QStringLiteral("label_7"));
        label_7->setFont(font);

        gridLayout->addWidget(label_7, 7, 0, 1, 1);

        height = new QSpinBox(disparity_config);
        height->setObjectName(QStringLiteral("height"));
        height->setMaximum(2000);
        height->setValue(240);

        gridLayout->addWidget(height, 7, 1, 1, 1);

        label_8 = new QLabel(disparity_config);
        label_8->setObjectName(QStringLiteral("label_8"));
        label_8->setFont(font);

        gridLayout->addWidget(label_8, 8, 0, 1, 1);

        units = new QComboBox(disparity_config);
        units->setObjectName(QStringLiteral("units"));
        units->setMaximumSize(QSize(16777213, 25));
        units->setFont(font1);

        gridLayout->addWidget(units, 8, 1, 1, 1);


        retranslateUi(disparity_config);

        QMetaObject::connectSlotsByName(disparity_config);
    } // setupUi

    void retranslateUi(QWidget *disparity_config)
    {
        disparity_config->setWindowTitle(QApplication::translate("disparity_config", "Form", Q_NULLPTR));
        label_2->setText(QApplication::translate("disparity_config", "Status:", Q_NULLPTR));
        selecttopic->setText(QApplication::translate("disparity_config", "Select", Q_NULLPTR));
        label->setText(QApplication::translate("disparity_config", "Topic:", Q_NULLPTR));
        anchor->clear();
        anchor->insertItems(0, QStringList()
         << QApplication::translate("disparity_config", "top left", Q_NULLPTR)
         << QApplication::translate("disparity_config", "top center", Q_NULLPTR)
         << QApplication::translate("disparity_config", "top right", Q_NULLPTR)
         << QApplication::translate("disparity_config", "center left", Q_NULLPTR)
         << QApplication::translate("disparity_config", "center", Q_NULLPTR)
         << QApplication::translate("disparity_config", "center right", Q_NULLPTR)
         << QApplication::translate("disparity_config", "bottom left", Q_NULLPTR)
         << QApplication::translate("disparity_config", "bottom center", Q_NULLPTR)
         << QApplication::translate("disparity_config", "bottom right", Q_NULLPTR)
        );
        label_3->setText(QApplication::translate("disparity_config", "Anchor:", Q_NULLPTR));
        label_4->setText(QApplication::translate("disparity_config", "Offset X:", Q_NULLPTR));
        status->setText(QApplication::translate("disparity_config", "No topic", Q_NULLPTR));
        label_5->setText(QApplication::translate("disparity_config", "Offset Y:", Q_NULLPTR));
        label_6->setText(QApplication::translate("disparity_config", "Width:", Q_NULLPTR));
        label_7->setText(QApplication::translate("disparity_config", "Height:", Q_NULLPTR));
        label_8->setText(QApplication::translate("disparity_config", "Units:", Q_NULLPTR));
        units->clear();
        units->insertItems(0, QStringList()
         << QApplication::translate("disparity_config", "pixels", Q_NULLPTR)
         << QApplication::translate("disparity_config", "percent", Q_NULLPTR)
        );
    } // retranslateUi

};

namespace Ui {
    class disparity_config: public Ui_disparity_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_DISPARITY_CONFIG_H
