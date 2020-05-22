/********************************************************************************
** Form generated from reading UI file 'point_click_publisher_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_POINT_CLICK_PUBLISHER_CONFIG_H
#define UI_POINT_CLICK_PUBLISHER_CONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_point_click_publisher_config
{
public:
    QGridLayout *gridLayout;
    QLineEdit *topic;
    QLabel *label;
    QLabel *output_frame;
    QComboBox *outputframe;
    QLabel *point_publisher_status;
    QLabel *status;

    void setupUi(QWidget *point_click_publisher_config)
    {
        if (point_click_publisher_config->objectName().isEmpty())
            point_click_publisher_config->setObjectName(QStringLiteral("point_click_publisher_config"));
        point_click_publisher_config->resize(400, 300);
        point_click_publisher_config->setStyleSheet(QStringLiteral(""));
        gridLayout = new QGridLayout(point_click_publisher_config);
        gridLayout->setContentsMargins(2, 2, 2, 2);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setVerticalSpacing(4);
        topic = new QLineEdit(point_click_publisher_config);
        topic->setObjectName(QStringLiteral("topic"));
        QFont font;
        font.setFamily(QStringLiteral("Sans Serif"));
        font.setPointSize(8);
        topic->setFont(font);

        gridLayout->addWidget(topic, 2, 1, 1, 1);

        label = new QLabel(point_click_publisher_config);
        label->setObjectName(QStringLiteral("label"));
        label->setFont(font);

        gridLayout->addWidget(label, 2, 0, 1, 1);

        output_frame = new QLabel(point_click_publisher_config);
        output_frame->setObjectName(QStringLiteral("output_frame"));
        output_frame->setFont(font);

        gridLayout->addWidget(output_frame, 3, 0, 1, 1);

        outputframe = new QComboBox(point_click_publisher_config);
        outputframe->setObjectName(QStringLiteral("outputframe"));
        QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(outputframe->sizePolicy().hasHeightForWidth());
        outputframe->setSizePolicy(sizePolicy);
        outputframe->setMaximumSize(QSize(16777215, 25));
        outputframe->setFont(font);
        outputframe->setEditable(true);

        gridLayout->addWidget(outputframe, 3, 1, 1, 1);

        point_publisher_status = new QLabel(point_click_publisher_config);
        point_publisher_status->setObjectName(QStringLiteral("point_publisher_status"));
        point_publisher_status->setFont(font);

        gridLayout->addWidget(point_publisher_status, 4, 0, 1, 1);

        status = new QLabel(point_click_publisher_config);
        status->setObjectName(QStringLiteral("status"));
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        gridLayout->addWidget(status, 4, 1, 1, 1);


        retranslateUi(point_click_publisher_config);

        QMetaObject::connectSlotsByName(point_click_publisher_config);
    } // setupUi

    void retranslateUi(QWidget *point_click_publisher_config)
    {
        point_click_publisher_config->setWindowTitle(QApplication::translate("point_click_publisher_config", "Form", Q_NULLPTR));
        topic->setText(QApplication::translate("point_click_publisher_config", "clicked_point", Q_NULLPTR));
        label->setText(QApplication::translate("point_click_publisher_config", "Topic:", Q_NULLPTR));
        output_frame->setText(QApplication::translate("point_click_publisher_config", "Frame:", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        outputframe->setToolTip(QApplication::translate("point_click_publisher_config", "The reference frame that points will be published in.\n"
"                        ", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        point_publisher_status->setText(QApplication::translate("point_click_publisher_config", "Status:", Q_NULLPTR));
        status->setText(QApplication::translate("point_click_publisher_config", "No topic", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class point_click_publisher_config: public Ui_point_click_publisher_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_POINT_CLICK_PUBLISHER_CONFIG_H
