/********************************************************************************
** Form generated from reading UI file 'navsat_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_NAVSAT_CONFIG_H
#define UI_NAVSAT_CONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
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
#include <mapviz/color_button.h>

QT_BEGIN_NAMESPACE

class Ui_navsat_config
{
public:
    QGridLayout *gridLayout;
    QLabel *label_6;
    QLabel *status;
    QLabel *label_4;
    QSpinBox *buffersize;
    QLabel *label_3;
    QPushButton *buttonResetBuffer;
    QPushButton *selecttopic;
    QDoubleSpinBox *positiontolerance;
    QLineEdit *topic;
    mapviz::ColorButton *color;
    QComboBox *drawstyle;
    QLabel *label;
    QLabel *label_2;
    QLabel *label_7;
    QSpacerItem *verticalSpacer;

    void setupUi(QWidget *navsat_config)
    {
        if (navsat_config->objectName().isEmpty())
            navsat_config->setObjectName(QStringLiteral("navsat_config"));
        navsat_config->resize(400, 159);
        navsat_config->setStyleSheet(QStringLiteral(""));
        gridLayout = new QGridLayout(navsat_config);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setVerticalSpacing(4);
        gridLayout->setContentsMargins(2, 2, 2, 2);
        label_6 = new QLabel(navsat_config);
        label_6->setObjectName(QStringLiteral("label_6"));
        QFont font;
        font.setFamily(QStringLiteral("Sans Serif"));
        font.setPointSize(8);
        label_6->setFont(font);

        gridLayout->addWidget(label_6, 6, 0, 1, 1);

        status = new QLabel(navsat_config);
        status->setObjectName(QStringLiteral("status"));
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        gridLayout->addWidget(status, 7, 1, 1, 2);

        label_4 = new QLabel(navsat_config);
        label_4->setObjectName(QStringLiteral("label_4"));
        label_4->setFont(font);

        gridLayout->addWidget(label_4, 5, 0, 1, 1);

        buffersize = new QSpinBox(navsat_config);
        buffersize->setObjectName(QStringLiteral("buffersize"));
        buffersize->setButtonSymbols(QAbstractSpinBox::PlusMinus);
        buffersize->setMaximum(99999999);

        gridLayout->addWidget(buffersize, 6, 1, 1, 1);

        label_3 = new QLabel(navsat_config);
        label_3->setObjectName(QStringLiteral("label_3"));
        label_3->setFont(font);

        gridLayout->addWidget(label_3, 3, 0, 1, 1);

        buttonResetBuffer = new QPushButton(navsat_config);
        buttonResetBuffer->setObjectName(QStringLiteral("buttonResetBuffer"));
        buttonResetBuffer->setMaximumSize(QSize(55, 16777215));

        gridLayout->addWidget(buttonResetBuffer, 6, 2, 1, 1);

        selecttopic = new QPushButton(navsat_config);
        selecttopic->setObjectName(QStringLiteral("selecttopic"));
        selecttopic->setMaximumSize(QSize(55, 16777215));
        selecttopic->setFont(font);
        selecttopic->setStyleSheet(QStringLiteral(""));

        gridLayout->addWidget(selecttopic, 2, 2, 1, 1);

        positiontolerance = new QDoubleSpinBox(navsat_config);
        positiontolerance->setObjectName(QStringLiteral("positiontolerance"));
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(positiontolerance->sizePolicy().hasHeightForWidth());
        positiontolerance->setSizePolicy(sizePolicy);
        positiontolerance->setButtonSymbols(QAbstractSpinBox::PlusMinus);
        positiontolerance->setValue(1);

        gridLayout->addWidget(positiontolerance, 5, 1, 1, 1);

        topic = new QLineEdit(navsat_config);
        topic->setObjectName(QStringLiteral("topic"));
        topic->setFont(font);

        gridLayout->addWidget(topic, 2, 1, 1, 1);

        color = new mapviz::ColorButton(navsat_config);
        color->setObjectName(QStringLiteral("color"));
        color->setMaximumSize(QSize(24, 24));
        color->setAutoFillBackground(false);
        color->setStyleSheet(QStringLiteral(""));

        gridLayout->addWidget(color, 3, 1, 1, 1);

        drawstyle = new QComboBox(navsat_config);
        drawstyle->setObjectName(QStringLiteral("drawstyle"));
        drawstyle->setMaximumSize(QSize(16777215, 25));
        QFont font1;
        font1.setFamily(QStringLiteral("Sans Serif"));
        font1.setPointSize(9);
        drawstyle->setFont(font1);

        gridLayout->addWidget(drawstyle, 4, 1, 1, 1);

        label = new QLabel(navsat_config);
        label->setObjectName(QStringLiteral("label"));
        label->setFont(font);

        gridLayout->addWidget(label, 2, 0, 1, 1);

        label_2 = new QLabel(navsat_config);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setFont(font);

        gridLayout->addWidget(label_2, 7, 0, 1, 1);

        label_7 = new QLabel(navsat_config);
        label_7->setObjectName(QStringLiteral("label_7"));
        label_7->setFont(font);

        gridLayout->addWidget(label_7, 4, 0, 1, 1);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        gridLayout->addItem(verticalSpacer, 8, 1, 1, 1);


        retranslateUi(navsat_config);

        QMetaObject::connectSlotsByName(navsat_config);
    } // setupUi

    void retranslateUi(QWidget *navsat_config)
    {
        navsat_config->setWindowTitle(QApplication::translate("navsat_config", "Form", Q_NULLPTR));
        label_6->setText(QApplication::translate("navsat_config", "Buffer Size:", Q_NULLPTR));
        status->setText(QApplication::translate("navsat_config", "No topic", Q_NULLPTR));
        label_4->setText(QApplication::translate("navsat_config", "Position Tolerance:", Q_NULLPTR));
        label_3->setText(QApplication::translate("navsat_config", "Color:", Q_NULLPTR));
        buttonResetBuffer->setText(QApplication::translate("navsat_config", "Clear", Q_NULLPTR));
        selecttopic->setText(QApplication::translate("navsat_config", "Select", Q_NULLPTR));
        positiontolerance->setSuffix(QString());
        color->setText(QString());
        drawstyle->clear();
        drawstyle->insertItems(0, QStringList()
         << QApplication::translate("navsat_config", "lines", Q_NULLPTR)
         << QApplication::translate("navsat_config", "points", Q_NULLPTR)
        );
        label->setText(QApplication::translate("navsat_config", "Topic:", Q_NULLPTR));
        label_2->setText(QApplication::translate("navsat_config", "Status:", Q_NULLPTR));
        label_7->setText(QApplication::translate("navsat_config", "Draw Style:", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class navsat_config: public Ui_navsat_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_NAVSAT_CONFIG_H
