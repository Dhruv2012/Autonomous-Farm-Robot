/********************************************************************************
** Form generated from reading UI file 'robot_image_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ROBOT_IMAGE_CONFIG_H
#define UI_ROBOT_IMAGE_CONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDoubleSpinBox>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QRadioButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_robot_image_config
{
public:
    QGridLayout *gridLayout;
    QLabel *image_label;
    QPushButton *browse;
    QLabel *frame_label;
    QLineEdit *frame;
    QPushButton *selectframe;
    QLabel *width_label;
    QDoubleSpinBox *width;
    QLabel *height_label;
    QDoubleSpinBox *height;
    QLabel *offset_x_label;
    QDoubleSpinBox *offset_x;
    QLabel *offset_y_label;
    QDoubleSpinBox *offset_y;
    QLabel *status_label;
    QLabel *status;
    QLabel *label;
    QLineEdit *image;
    QWidget *widget;
    QHBoxLayout *horizontalLayout;
    QRadioButton *ratio_custom;
    QRadioButton *ratio_equal;
    QRadioButton *ratio_original;

    void setupUi(QWidget *robot_image_config)
    {
        if (robot_image_config->objectName().isEmpty())
            robot_image_config->setObjectName(QStringLiteral("robot_image_config"));
        robot_image_config->resize(383, 300);
        robot_image_config->setStyleSheet(QStringLiteral(""));
        gridLayout = new QGridLayout(robot_image_config);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        image_label = new QLabel(robot_image_config);
        image_label->setObjectName(QStringLiteral("image_label"));
        QFont font;
        font.setFamily(QStringLiteral("Sans Serif"));
        font.setPointSize(8);
        image_label->setFont(font);

        gridLayout->addWidget(image_label, 0, 0, 1, 1);

        browse = new QPushButton(robot_image_config);
        browse->setObjectName(QStringLiteral("browse"));
        browse->setMaximumSize(QSize(55, 16777215));
        browse->setFont(font);
        browse->setStyleSheet(QStringLiteral(""));

        gridLayout->addWidget(browse, 0, 3, 1, 1);

        frame_label = new QLabel(robot_image_config);
        frame_label->setObjectName(QStringLiteral("frame_label"));
        frame_label->setFont(font);

        gridLayout->addWidget(frame_label, 2, 0, 1, 1);

        frame = new QLineEdit(robot_image_config);
        frame->setObjectName(QStringLiteral("frame"));
        frame->setFont(font);

        gridLayout->addWidget(frame, 2, 1, 1, 2);

        selectframe = new QPushButton(robot_image_config);
        selectframe->setObjectName(QStringLiteral("selectframe"));
        selectframe->setMaximumSize(QSize(55, 16777215));
        selectframe->setFont(font);
        selectframe->setStyleSheet(QStringLiteral(""));

        gridLayout->addWidget(selectframe, 2, 3, 1, 1);

        width_label = new QLabel(robot_image_config);
        width_label->setObjectName(QStringLiteral("width_label"));
        width_label->setFont(font);

        gridLayout->addWidget(width_label, 3, 0, 1, 1);

        width = new QDoubleSpinBox(robot_image_config);
        width->setObjectName(QStringLiteral("width"));
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(width->sizePolicy().hasHeightForWidth());
        width->setSizePolicy(sizePolicy);
        width->setButtonSymbols(QAbstractSpinBox::PlusMinus);
        width->setValue(2);

        gridLayout->addWidget(width, 3, 1, 1, 2);

        height_label = new QLabel(robot_image_config);
        height_label->setObjectName(QStringLiteral("height_label"));
        height_label->setFont(font);

        gridLayout->addWidget(height_label, 4, 0, 1, 1);

        height = new QDoubleSpinBox(robot_image_config);
        height->setObjectName(QStringLiteral("height"));
        sizePolicy.setHeightForWidth(height->sizePolicy().hasHeightForWidth());
        height->setSizePolicy(sizePolicy);
        height->setButtonSymbols(QAbstractSpinBox::PlusMinus);
        height->setValue(1);

        gridLayout->addWidget(height, 4, 1, 1, 2);

        offset_x_label = new QLabel(robot_image_config);
        offset_x_label->setObjectName(QStringLiteral("offset_x_label"));
        offset_x_label->setFont(font);

        gridLayout->addWidget(offset_x_label, 5, 0, 1, 1);

        offset_x = new QDoubleSpinBox(robot_image_config);
        offset_x->setObjectName(QStringLiteral("offset_x"));
        sizePolicy.setHeightForWidth(offset_x->sizePolicy().hasHeightForWidth());
        offset_x->setSizePolicy(sizePolicy);
        offset_x->setButtonSymbols(QAbstractSpinBox::PlusMinus);
        offset_x->setValue(0);

        gridLayout->addWidget(offset_x, 5, 1, 1, 2);

        offset_y_label = new QLabel(robot_image_config);
        offset_y_label->setObjectName(QStringLiteral("offset_y_label"));
        offset_y_label->setFont(font);

        gridLayout->addWidget(offset_y_label, 6, 0, 1, 1);

        offset_y = new QDoubleSpinBox(robot_image_config);
        offset_y->setObjectName(QStringLiteral("offset_y"));
        sizePolicy.setHeightForWidth(offset_y->sizePolicy().hasHeightForWidth());
        offset_y->setSizePolicy(sizePolicy);
        offset_y->setButtonSymbols(QAbstractSpinBox::PlusMinus);
        offset_y->setValue(0);

        gridLayout->addWidget(offset_y, 6, 1, 1, 2);

        status_label = new QLabel(robot_image_config);
        status_label->setObjectName(QStringLiteral("status_label"));
        status_label->setFont(font);

        gridLayout->addWidget(status_label, 8, 0, 1, 1);

        status = new QLabel(robot_image_config);
        status->setObjectName(QStringLiteral("status"));
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        gridLayout->addWidget(status, 8, 1, 1, 2);

        label = new QLabel(robot_image_config);
        label->setObjectName(QStringLiteral("label"));

        gridLayout->addWidget(label, 7, 0, 1, 1);

        image = new QLineEdit(robot_image_config);
        image->setObjectName(QStringLiteral("image"));
        image->setFont(font);

        gridLayout->addWidget(image, 0, 1, 1, 2);

        widget = new QWidget(robot_image_config);
        widget->setObjectName(QStringLiteral("widget"));
        horizontalLayout = new QHBoxLayout(widget);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        ratio_custom = new QRadioButton(widget);
        ratio_custom->setObjectName(QStringLiteral("ratio_custom"));

        horizontalLayout->addWidget(ratio_custom);

        ratio_equal = new QRadioButton(widget);
        ratio_equal->setObjectName(QStringLiteral("ratio_equal"));

        horizontalLayout->addWidget(ratio_equal);

        ratio_original = new QRadioButton(widget);
        ratio_original->setObjectName(QStringLiteral("ratio_original"));

        horizontalLayout->addWidget(ratio_original);


        gridLayout->addWidget(widget, 7, 1, 1, 1);


        retranslateUi(robot_image_config);

        QMetaObject::connectSlotsByName(robot_image_config);
    } // setupUi

    void retranslateUi(QWidget *robot_image_config)
    {
        robot_image_config->setWindowTitle(QApplication::translate("robot_image_config", "Form", Q_NULLPTR));
        image_label->setText(QApplication::translate("robot_image_config", "Image File:", Q_NULLPTR));
        browse->setText(QApplication::translate("robot_image_config", "Browse", Q_NULLPTR));
        frame_label->setText(QApplication::translate("robot_image_config", "Frame:", Q_NULLPTR));
        selectframe->setText(QApplication::translate("robot_image_config", "Select", Q_NULLPTR));
        width_label->setText(QApplication::translate("robot_image_config", "Width:", Q_NULLPTR));
        width->setSuffix(QString());
        height_label->setText(QApplication::translate("robot_image_config", "Height:", Q_NULLPTR));
        height->setSuffix(QString());
        offset_x_label->setText(QApplication::translate("robot_image_config", "Offset x:", Q_NULLPTR));
        offset_x->setSuffix(QString());
        offset_y_label->setText(QApplication::translate("robot_image_config", "Offset y:", Q_NULLPTR));
        offset_y->setSuffix(QString());
        status_label->setText(QApplication::translate("robot_image_config", "Status:", Q_NULLPTR));
        status->setText(QApplication::translate("robot_image_config", "No topic", Q_NULLPTR));
        label->setText(QApplication::translate("robot_image_config", "Image ratio:", Q_NULLPTR));
        ratio_custom->setText(QApplication::translate("robot_image_config", "Custom", Q_NULLPTR));
        ratio_equal->setText(QApplication::translate("robot_image_config", "1:1", Q_NULLPTR));
        ratio_original->setText(QApplication::translate("robot_image_config", "Original", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class robot_image_config: public Ui_robot_image_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ROBOT_IMAGE_CONFIG_H
