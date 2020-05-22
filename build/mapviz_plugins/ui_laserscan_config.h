/********************************************************************************
** Form generated from reading UI file 'laserscan_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_LASERSCAN_CONFIG_H
#define UI_LASERSCAN_CONFIG_H

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
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>
#include <mapviz/color_button.h>

QT_BEGIN_NAMESPACE

class Ui_laserscan_config
{
public:
    QGridLayout *gridLayout;
    QLabel *label_2;
    QLabel *status;
    QPushButton *selecttopic;
    QLineEdit *topic;
    QLabel *label;
    QLabel *minValueLabel;
    QDoubleSpinBox *minValue;
    QLabel *maxValueLabel;
    QDoubleSpinBox *maxValue;
    QSpinBox *bufferSize;
    QDoubleSpinBox *alpha;
    QLabel *label_9;
    QComboBox *color_transformer;
    QLabel *label_4;
    QSpinBox *pointSize;
    QLabel *label_5;
    QLabel *label_6;
    QVBoxLayout *verticalLayout_2;
    QCheckBox *use_rainbow;
    QHBoxLayout *horizontalLayout;
    QLabel *minColorLabel;
    mapviz::ColorButton *min_color;
    QLabel *maxColorLabel;
    mapviz::ColorButton *max_color;
    QSpacerItem *horizontalSpacer;
    QLabel *label_3;

    void setupUi(QWidget *laserscan_config)
    {
        if (laserscan_config->objectName().isEmpty())
            laserscan_config->setObjectName(QStringLiteral("laserscan_config"));
        laserscan_config->resize(400, 300);
        laserscan_config->setStyleSheet(QStringLiteral(""));
        gridLayout = new QGridLayout(laserscan_config);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setVerticalSpacing(4);
        gridLayout->setContentsMargins(2, 2, 2, 2);
        label_2 = new QLabel(laserscan_config);
        label_2->setObjectName(QStringLiteral("label_2"));
        QFont font;
        font.setFamily(QStringLiteral("Sans Serif"));
        font.setPointSize(8);
        label_2->setFont(font);

        gridLayout->addWidget(label_2, 15, 0, 1, 1);

        status = new QLabel(laserscan_config);
        status->setObjectName(QStringLiteral("status"));
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        gridLayout->addWidget(status, 15, 2, 1, 3);

        selecttopic = new QPushButton(laserscan_config);
        selecttopic->setObjectName(QStringLiteral("selecttopic"));
        selecttopic->setMaximumSize(QSize(55, 16777215));
        selecttopic->setFont(font);
        selecttopic->setStyleSheet(QStringLiteral(""));

        gridLayout->addWidget(selecttopic, 2, 4, 1, 1);

        topic = new QLineEdit(laserscan_config);
        topic->setObjectName(QStringLiteral("topic"));
        topic->setFont(font);

        gridLayout->addWidget(topic, 2, 2, 1, 1);

        label = new QLabel(laserscan_config);
        label->setObjectName(QStringLiteral("label"));
        label->setFont(font);

        gridLayout->addWidget(label, 2, 0, 1, 1);

        minValueLabel = new QLabel(laserscan_config);
        minValueLabel->setObjectName(QStringLiteral("minValueLabel"));
        minValueLabel->setFont(font);

        gridLayout->addWidget(minValueLabel, 11, 0, 1, 1);

        minValue = new QDoubleSpinBox(laserscan_config);
        minValue->setObjectName(QStringLiteral("minValue"));
        minValue->setMinimum(-1e+9);
        minValue->setMaximum(1e+9);

        gridLayout->addWidget(minValue, 11, 2, 1, 1);

        maxValueLabel = new QLabel(laserscan_config);
        maxValueLabel->setObjectName(QStringLiteral("maxValueLabel"));
        maxValueLabel->setFont(font);

        gridLayout->addWidget(maxValueLabel, 12, 0, 1, 1);

        maxValue = new QDoubleSpinBox(laserscan_config);
        maxValue->setObjectName(QStringLiteral("maxValue"));
        maxValue->setMinimum(-1e+9);
        maxValue->setMaximum(1e+9);
        maxValue->setValue(100);

        gridLayout->addWidget(maxValue, 12, 2, 1, 1);

        bufferSize = new QSpinBox(laserscan_config);
        bufferSize->setObjectName(QStringLiteral("bufferSize"));
        bufferSize->setMaximum(99999999);
        bufferSize->setValue(1);

        gridLayout->addWidget(bufferSize, 3, 2, 1, 1);

        alpha = new QDoubleSpinBox(laserscan_config);
        alpha->setObjectName(QStringLiteral("alpha"));
        alpha->setMaximum(1);
        alpha->setSingleStep(0.1);
        alpha->setValue(1);

        gridLayout->addWidget(alpha, 6, 2, 1, 1);

        label_9 = new QLabel(laserscan_config);
        label_9->setObjectName(QStringLiteral("label_9"));
        label_9->setFont(font);

        gridLayout->addWidget(label_9, 6, 0, 1, 1);

        color_transformer = new QComboBox(laserscan_config);
        color_transformer->setObjectName(QStringLiteral("color_transformer"));

        gridLayout->addWidget(color_transformer, 5, 2, 1, 1);

        label_4 = new QLabel(laserscan_config);
        label_4->setObjectName(QStringLiteral("label_4"));
        label_4->setFont(font);

        gridLayout->addWidget(label_4, 4, 0, 1, 1);

        pointSize = new QSpinBox(laserscan_config);
        pointSize->setObjectName(QStringLiteral("pointSize"));
        pointSize->setMinimum(1);
        pointSize->setValue(3);

        gridLayout->addWidget(pointSize, 4, 2, 1, 1);

        label_5 = new QLabel(laserscan_config);
        label_5->setObjectName(QStringLiteral("label_5"));
        label_5->setFont(font);

        gridLayout->addWidget(label_5, 3, 0, 1, 1);

        label_6 = new QLabel(laserscan_config);
        label_6->setObjectName(QStringLiteral("label_6"));
        label_6->setFont(font);

        gridLayout->addWidget(label_6, 5, 0, 1, 1);

        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        use_rainbow = new QCheckBox(laserscan_config);
        use_rainbow->setObjectName(QStringLiteral("use_rainbow"));
        use_rainbow->setFont(font);

        verticalLayout_2->addWidget(use_rainbow);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        minColorLabel = new QLabel(laserscan_config);
        minColorLabel->setObjectName(QStringLiteral("minColorLabel"));
        QFont font1;
        font1.setFamily(QStringLiteral("Sans Serif"));
        font1.setPointSize(8);
        font1.setItalic(false);
        minColorLabel->setFont(font1);
        minColorLabel->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        horizontalLayout->addWidget(minColorLabel);

        min_color = new mapviz::ColorButton(laserscan_config);
        min_color->setObjectName(QStringLiteral("min_color"));
        min_color->setMaximumSize(QSize(24, 24));

        horizontalLayout->addWidget(min_color);

        maxColorLabel = new QLabel(laserscan_config);
        maxColorLabel->setObjectName(QStringLiteral("maxColorLabel"));
        maxColorLabel->setFont(font);
        maxColorLabel->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);

        horizontalLayout->addWidget(maxColorLabel);

        max_color = new mapviz::ColorButton(laserscan_config);
        max_color->setObjectName(QStringLiteral("max_color"));
        max_color->setMaximumSize(QSize(24, 24));

        horizontalLayout->addWidget(max_color);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer);


        verticalLayout_2->addLayout(horizontalLayout);


        gridLayout->addLayout(verticalLayout_2, 7, 2, 1, 1);

        label_3 = new QLabel(laserscan_config);
        label_3->setObjectName(QStringLiteral("label_3"));
        label_3->setFont(font);

        gridLayout->addWidget(label_3, 7, 0, 1, 1);


        retranslateUi(laserscan_config);

        QMetaObject::connectSlotsByName(laserscan_config);
    } // setupUi

    void retranslateUi(QWidget *laserscan_config)
    {
        laserscan_config->setWindowTitle(QApplication::translate("laserscan_config", "Form", Q_NULLPTR));
        label_2->setText(QApplication::translate("laserscan_config", "Status:", Q_NULLPTR));
        status->setText(QApplication::translate("laserscan_config", "No topic", Q_NULLPTR));
        selecttopic->setText(QApplication::translate("laserscan_config", "Select", Q_NULLPTR));
        label->setText(QApplication::translate("laserscan_config", "Topic:", Q_NULLPTR));
        minValueLabel->setText(QApplication::translate("laserscan_config", "Min Value:", Q_NULLPTR));
        maxValueLabel->setText(QApplication::translate("laserscan_config", "Max Value:", Q_NULLPTR));
        label_9->setText(QApplication::translate("laserscan_config", "Alpha:", Q_NULLPTR));
        label_4->setText(QApplication::translate("laserscan_config", "Point Size:", Q_NULLPTR));
        pointSize->setSuffix(QApplication::translate("laserscan_config", " pixel", Q_NULLPTR));
        label_5->setText(QApplication::translate("laserscan_config", "Buffer Size:", Q_NULLPTR));
        label_6->setText(QApplication::translate("laserscan_config", "Color Transformer:", Q_NULLPTR));
        use_rainbow->setText(QApplication::translate("laserscan_config", "Use Rainbow", Q_NULLPTR));
        minColorLabel->setText(QApplication::translate("laserscan_config", "Min:", Q_NULLPTR));
        min_color->setText(QString());
        maxColorLabel->setText(QApplication::translate("laserscan_config", "Max:", Q_NULLPTR));
        max_color->setText(QString());
        label_3->setText(QApplication::translate("laserscan_config", "Color:", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class laserscan_config: public Ui_laserscan_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_LASERSCAN_CONFIG_H
