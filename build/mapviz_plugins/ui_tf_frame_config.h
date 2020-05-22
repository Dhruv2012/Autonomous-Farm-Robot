/********************************************************************************
** Form generated from reading UI file 'tf_frame_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_TF_FRAME_CONFIG_H
#define UI_TF_FRAME_CONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDoubleSpinBox>
#include <QtWidgets/QGridLayout>
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

class Ui_tf_frame_config
{
public:
    QGridLayout *gridLayout;
    QLabel *label_3;
    QDoubleSpinBox *positiontolerance;
    QLabel *label;
    QComboBox *drawstyle;
    QPushButton *selectframe;
    mapviz::ColorButton *color;
    QPushButton *buttonResetBuffer;
    QLabel *label_2;
    QLabel *label_6;
    QSpinBox *buffersize;
    QLabel *label_4;
    QLabel *status;
    QHBoxLayout *horizontalLayout;
    QCheckBox *static_arrow_sizes;
    QSlider *arrow_size;
    QLabel *label_7;
    QLineEdit *frame;
    QLabel *label_5;
    QSpacerItem *verticalSpacer;

    void setupUi(QWidget *tf_frame_config)
    {
        if (tf_frame_config->objectName().isEmpty())
            tf_frame_config->setObjectName(QStringLiteral("tf_frame_config"));
        tf_frame_config->resize(383, 197);
        tf_frame_config->setStyleSheet(QStringLiteral(""));
        gridLayout = new QGridLayout(tf_frame_config);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        label_3 = new QLabel(tf_frame_config);
        label_3->setObjectName(QStringLiteral("label_3"));
        QFont font;
        font.setFamily(QStringLiteral("Sans Serif"));
        font.setPointSize(8);
        label_3->setFont(font);

        gridLayout->addWidget(label_3, 1, 0, 1, 1);

        positiontolerance = new QDoubleSpinBox(tf_frame_config);
        positiontolerance->setObjectName(QStringLiteral("positiontolerance"));
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(positiontolerance->sizePolicy().hasHeightForWidth());
        positiontolerance->setSizePolicy(sizePolicy);
        positiontolerance->setButtonSymbols(QAbstractSpinBox::PlusMinus);
        positiontolerance->setValue(1);

        gridLayout->addWidget(positiontolerance, 4, 1, 1, 1);

        label = new QLabel(tf_frame_config);
        label->setObjectName(QStringLiteral("label"));
        label->setFont(font);

        gridLayout->addWidget(label, 0, 0, 1, 1);

        drawstyle = new QComboBox(tf_frame_config);
        drawstyle->setObjectName(QStringLiteral("drawstyle"));
        drawstyle->setMaximumSize(QSize(16777215, 25));
        QFont font1;
        font1.setFamily(QStringLiteral("Sans Serif"));
        font1.setPointSize(9);
        drawstyle->setFont(font1);

        gridLayout->addWidget(drawstyle, 2, 1, 1, 1);

        selectframe = new QPushButton(tf_frame_config);
        selectframe->setObjectName(QStringLiteral("selectframe"));
        selectframe->setMaximumSize(QSize(55, 16777215));
        selectframe->setFont(font);
        selectframe->setStyleSheet(QStringLiteral(""));

        gridLayout->addWidget(selectframe, 0, 2, 1, 1);

        color = new mapviz::ColorButton(tf_frame_config);
        color->setObjectName(QStringLiteral("color"));
        color->setMaximumSize(QSize(24, 24));
        color->setAutoFillBackground(false);
        color->setStyleSheet(QStringLiteral(""));

        gridLayout->addWidget(color, 1, 1, 1, 1);

        buttonResetBuffer = new QPushButton(tf_frame_config);
        buttonResetBuffer->setObjectName(QStringLiteral("buttonResetBuffer"));
        buttonResetBuffer->setMaximumSize(QSize(55, 16777215));

        gridLayout->addWidget(buttonResetBuffer, 5, 2, 1, 1);

        label_2 = new QLabel(tf_frame_config);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setFont(font);

        gridLayout->addWidget(label_2, 6, 0, 1, 1);

        label_6 = new QLabel(tf_frame_config);
        label_6->setObjectName(QStringLiteral("label_6"));
        label_6->setFont(font);

        gridLayout->addWidget(label_6, 5, 0, 1, 1);

        buffersize = new QSpinBox(tf_frame_config);
        buffersize->setObjectName(QStringLiteral("buffersize"));
        buffersize->setButtonSymbols(QAbstractSpinBox::PlusMinus);
        buffersize->setMaximum(99999999);

        gridLayout->addWidget(buffersize, 5, 1, 1, 1);

        label_4 = new QLabel(tf_frame_config);
        label_4->setObjectName(QStringLiteral("label_4"));
        label_4->setFont(font);

        gridLayout->addWidget(label_4, 4, 0, 1, 1);

        status = new QLabel(tf_frame_config);
        status->setObjectName(QStringLiteral("status"));
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        gridLayout->addWidget(status, 6, 1, 1, 1);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        static_arrow_sizes = new QCheckBox(tf_frame_config);
        static_arrow_sizes->setObjectName(QStringLiteral("static_arrow_sizes"));

        horizontalLayout->addWidget(static_arrow_sizes);

        arrow_size = new QSlider(tf_frame_config);
        arrow_size->setObjectName(QStringLiteral("arrow_size"));
        arrow_size->setMinimum(1);
        arrow_size->setMaximum(500);
        arrow_size->setValue(25);
        arrow_size->setOrientation(Qt::Horizontal);

        horizontalLayout->addWidget(arrow_size);


        gridLayout->addLayout(horizontalLayout, 3, 1, 1, 1);

        label_7 = new QLabel(tf_frame_config);
        label_7->setObjectName(QStringLiteral("label_7"));
        label_7->setFont(font);

        gridLayout->addWidget(label_7, 2, 0, 1, 1);

        frame = new QLineEdit(tf_frame_config);
        frame->setObjectName(QStringLiteral("frame"));
        frame->setFont(font);

        gridLayout->addWidget(frame, 0, 1, 1, 1);

        label_5 = new QLabel(tf_frame_config);
        label_5->setObjectName(QStringLiteral("label_5"));
        label_5->setFont(font);

        gridLayout->addWidget(label_5, 3, 0, 1, 1);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        gridLayout->addItem(verticalSpacer, 7, 1, 1, 1);


        retranslateUi(tf_frame_config);

        QMetaObject::connectSlotsByName(tf_frame_config);
    } // setupUi

    void retranslateUi(QWidget *tf_frame_config)
    {
        tf_frame_config->setWindowTitle(QApplication::translate("tf_frame_config", "Form", Q_NULLPTR));
        label_3->setText(QApplication::translate("tf_frame_config", "Color:", Q_NULLPTR));
        positiontolerance->setSuffix(QString());
        label->setText(QApplication::translate("tf_frame_config", "Frame:", Q_NULLPTR));
        drawstyle->clear();
        drawstyle->insertItems(0, QStringList()
         << QApplication::translate("tf_frame_config", "lines", Q_NULLPTR)
         << QApplication::translate("tf_frame_config", "points", Q_NULLPTR)
         << QApplication::translate("tf_frame_config", "arrows", Q_NULLPTR)
        );
        selectframe->setText(QApplication::translate("tf_frame_config", "Select", Q_NULLPTR));
        color->setText(QString());
        buttonResetBuffer->setText(QApplication::translate("tf_frame_config", "Clear", Q_NULLPTR));
        label_2->setText(QApplication::translate("tf_frame_config", "Status:", Q_NULLPTR));
        label_6->setText(QApplication::translate("tf_frame_config", "Buffer Size:", Q_NULLPTR));
        label_4->setText(QApplication::translate("tf_frame_config", "Position Tolerance:", Q_NULLPTR));
        status->setText(QApplication::translate("tf_frame_config", "No topic", Q_NULLPTR));
        static_arrow_sizes->setText(QString());
        label_7->setText(QApplication::translate("tf_frame_config", "Draw Style:", Q_NULLPTR));
        label_5->setText(QApplication::translate("tf_frame_config", "Static Arrow Sizes:", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class tf_frame_config: public Ui_tf_frame_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_TF_FRAME_CONFIG_H
