/********************************************************************************
** Form generated from reading UI file 'textured_marker_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_TEXTURED_MARKER_CONFIG_H
#define UI_TEXTURED_MARKER_CONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSlider>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_textured_marker_config
{
public:
    QGridLayout *gridLayout;
    QLabel *status;
    QLineEdit *topic;
    QLabel *label_2;
    QPushButton *selecttopic;
    QLabel *label;
    QPushButton *clear;
    QLabel *alphaLabel;
    QSlider *alphaSlide;

    void setupUi(QWidget *textured_marker_config)
    {
        if (textured_marker_config->objectName().isEmpty())
            textured_marker_config->setObjectName(QStringLiteral("textured_marker_config"));
        textured_marker_config->resize(400, 330);
        textured_marker_config->setStyleSheet(QStringLiteral(""));
        gridLayout = new QGridLayout(textured_marker_config);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setVerticalSpacing(4);
        gridLayout->setContentsMargins(2, 2, 2, 2);
        status = new QLabel(textured_marker_config);
        status->setObjectName(QStringLiteral("status"));
        QFont font;
        font.setFamily(QStringLiteral("Sans Serif"));
        font.setPointSize(8);
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        gridLayout->addWidget(status, 5, 1, 1, 2);

        topic = new QLineEdit(textured_marker_config);
        topic->setObjectName(QStringLiteral("topic"));
        topic->setFont(font);

        gridLayout->addWidget(topic, 2, 1, 1, 1);

        label_2 = new QLabel(textured_marker_config);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setFont(font);

        gridLayout->addWidget(label_2, 5, 0, 1, 1);

        selecttopic = new QPushButton(textured_marker_config);
        selecttopic->setObjectName(QStringLiteral("selecttopic"));
        selecttopic->setMaximumSize(QSize(55, 16777215));
        selecttopic->setFont(font);
        selecttopic->setStyleSheet(QStringLiteral(""));

        gridLayout->addWidget(selecttopic, 2, 2, 1, 1);

        label = new QLabel(textured_marker_config);
        label->setObjectName(QStringLiteral("label"));
        label->setFont(font);

        gridLayout->addWidget(label, 2, 0, 1, 1);

        clear = new QPushButton(textured_marker_config);
        clear->setObjectName(QStringLiteral("clear"));

        gridLayout->addWidget(clear, 4, 1, 1, 1);

        alphaLabel = new QLabel(textured_marker_config);
        alphaLabel->setObjectName(QStringLiteral("alphaLabel"));
        alphaLabel->setFont(font);

        gridLayout->addWidget(alphaLabel, 3, 0, 1, 1);

        alphaSlide = new QSlider(textured_marker_config);
        alphaSlide->setObjectName(QStringLiteral("alphaSlide"));
        alphaSlide->setMinimum(5);
        alphaSlide->setMaximum(25);
        alphaSlide->setValue(25);
        alphaSlide->setOrientation(Qt::Horizontal);
        alphaSlide->setTickPosition(QSlider::NoTicks);

        gridLayout->addWidget(alphaSlide, 3, 1, 1, 1);


        retranslateUi(textured_marker_config);

        QMetaObject::connectSlotsByName(textured_marker_config);
    } // setupUi

    void retranslateUi(QWidget *textured_marker_config)
    {
        textured_marker_config->setWindowTitle(QApplication::translate("textured_marker_config", "Form", Q_NULLPTR));
        status->setText(QApplication::translate("textured_marker_config", "No topic", Q_NULLPTR));
        label_2->setText(QApplication::translate("textured_marker_config", "Status:", Q_NULLPTR));
        selecttopic->setText(QApplication::translate("textured_marker_config", "Select", Q_NULLPTR));
        label->setText(QApplication::translate("textured_marker_config", "Topic:", Q_NULLPTR));
        clear->setText(QApplication::translate("textured_marker_config", " Clear All Markers", Q_NULLPTR));
        alphaLabel->setText(QApplication::translate("textured_marker_config", "Alpha:", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class textured_marker_config: public Ui_textured_marker_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_TEXTURED_MARKER_CONFIG_H
