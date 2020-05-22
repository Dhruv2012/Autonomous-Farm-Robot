/********************************************************************************
** Form generated from reading UI file 'draw_polygon_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_DRAW_POLYGON_CONFIG_H
#define UI_DRAW_POLYGON_CONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>
#include <mapviz/color_button.h>

QT_BEGIN_NAMESPACE

class Ui_draw_polygon_config
{
public:
    QGridLayout *gridLayout;
    QLineEdit *topic;
    mapviz::ColorButton *color;
    QLabel *label_4;
    QPushButton *publish;
    QLabel *label_2;
    QPushButton *clear;
    QLabel *label_3;
    QLabel *status;
    QLabel *label;
    QLineEdit *frame;
    QPushButton *selectframe;

    void setupUi(QWidget *draw_polygon_config)
    {
        if (draw_polygon_config->objectName().isEmpty())
            draw_polygon_config->setObjectName(QStringLiteral("draw_polygon_config"));
        draw_polygon_config->resize(404, 304);
        draw_polygon_config->setStyleSheet(QStringLiteral(""));
        gridLayout = new QGridLayout(draw_polygon_config);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setVerticalSpacing(4);
        gridLayout->setContentsMargins(2, 2, 2, 2);
        topic = new QLineEdit(draw_polygon_config);
        topic->setObjectName(QStringLiteral("topic"));

        gridLayout->addWidget(topic, 2, 2, 1, 1);

        color = new mapviz::ColorButton(draw_polygon_config);
        color->setObjectName(QStringLiteral("color"));
        color->setMaximumSize(QSize(24, 24));
        color->setAutoFillBackground(false);
        color->setStyleSheet(QStringLiteral(""));

        gridLayout->addWidget(color, 4, 2, 1, 1);

        label_4 = new QLabel(draw_polygon_config);
        label_4->setObjectName(QStringLiteral("label_4"));
        QFont font;
        label_4->setFont(font);

        gridLayout->addWidget(label_4, 2, 0, 1, 1);

        publish = new QPushButton(draw_polygon_config);
        publish->setObjectName(QStringLiteral("publish"));

        gridLayout->addWidget(publish, 8, 2, 1, 1);

        label_2 = new QLabel(draw_polygon_config);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setFont(font);

        gridLayout->addWidget(label_2, 9, 0, 1, 1);

        clear = new QPushButton(draw_polygon_config);
        clear->setObjectName(QStringLiteral("clear"));

        gridLayout->addWidget(clear, 5, 2, 1, 1);

        label_3 = new QLabel(draw_polygon_config);
        label_3->setObjectName(QStringLiteral("label_3"));
        label_3->setFont(font);

        gridLayout->addWidget(label_3, 4, 0, 1, 1);

        status = new QLabel(draw_polygon_config);
        status->setObjectName(QStringLiteral("status"));
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        gridLayout->addWidget(status, 9, 2, 1, 2);

        label = new QLabel(draw_polygon_config);
        label->setObjectName(QStringLiteral("label"));

        gridLayout->addWidget(label, 0, 0, 1, 1);

        frame = new QLineEdit(draw_polygon_config);
        frame->setObjectName(QStringLiteral("frame"));

        gridLayout->addWidget(frame, 0, 2, 1, 1);

        selectframe = new QPushButton(draw_polygon_config);
        selectframe->setObjectName(QStringLiteral("selectframe"));

        gridLayout->addWidget(selectframe, 0, 3, 1, 1);


        retranslateUi(draw_polygon_config);

        QMetaObject::connectSlotsByName(draw_polygon_config);
    } // setupUi

    void retranslateUi(QWidget *draw_polygon_config)
    {
        draw_polygon_config->setWindowTitle(QApplication::translate("draw_polygon_config", "Form", Q_NULLPTR));
        color->setText(QString());
        label_4->setText(QApplication::translate("draw_polygon_config", "Topic:", Q_NULLPTR));
        publish->setText(QApplication::translate("draw_polygon_config", "Publish Polygon", Q_NULLPTR));
        label_2->setText(QApplication::translate("draw_polygon_config", "Status:", Q_NULLPTR));
        clear->setText(QApplication::translate("draw_polygon_config", "Clear", Q_NULLPTR));
        label_3->setText(QApplication::translate("draw_polygon_config", "Color:", Q_NULLPTR));
        status->setText(QApplication::translate("draw_polygon_config", "No topic", Q_NULLPTR));
        label->setText(QApplication::translate("draw_polygon_config", "Frame:", Q_NULLPTR));
        selectframe->setText(QApplication::translate("draw_polygon_config", "Select", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class draw_polygon_config: public Ui_draw_polygon_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_DRAW_POLYGON_CONFIG_H
