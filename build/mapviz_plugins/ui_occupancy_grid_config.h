/********************************************************************************
** Form generated from reading UI file 'occupancy_grid_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_OCCUPANCY_GRID_CONFIG_H
#define UI_OCCUPANCY_GRID_CONFIG_H

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
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_occupancy_grid_config
{
public:
    QGridLayout *gridLayout;
    QDoubleSpinBox *alpha;
    QCheckBox *checkbox_update;
    QLabel *label_2;
    QLabel *label_3;
    QLineEdit *topic_grid;
    QLabel *status;
    QPushButton *select_grid;
    QLabel *label_4;
    QComboBox *color_scheme;

    void setupUi(QWidget *occupancy_grid_config)
    {
        if (occupancy_grid_config->objectName().isEmpty())
            occupancy_grid_config->setObjectName(QStringLiteral("occupancy_grid_config"));
        occupancy_grid_config->resize(347, 123);
        occupancy_grid_config->setStyleSheet(QStringLiteral(""));
        gridLayout = new QGridLayout(occupancy_grid_config);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setVerticalSpacing(4);
        gridLayout->setContentsMargins(2, 2, 2, 2);
        alpha = new QDoubleSpinBox(occupancy_grid_config);
        alpha->setObjectName(QStringLiteral("alpha"));
        alpha->setMaximumSize(QSize(50, 16777215));
        alpha->setDecimals(1);
        alpha->setMaximum(1);
        alpha->setSingleStep(0.1);
        alpha->setValue(1);

        gridLayout->addWidget(alpha, 4, 1, 1, 1);

        checkbox_update = new QCheckBox(occupancy_grid_config);
        checkbox_update->setObjectName(QStringLiteral("checkbox_update"));
        checkbox_update->setChecked(true);

        gridLayout->addWidget(checkbox_update, 3, 1, 1, 1);

        label_2 = new QLabel(occupancy_grid_config);
        label_2->setObjectName(QStringLiteral("label_2"));
        QFont font;
        font.setFamily(QStringLiteral("Sans Serif"));
        font.setPointSize(8);
        label_2->setFont(font);

        gridLayout->addWidget(label_2, 6, 0, 1, 1);

        label_3 = new QLabel(occupancy_grid_config);
        label_3->setObjectName(QStringLiteral("label_3"));
        QFont font1;
        font1.setPointSize(8);
        label_3->setFont(font1);

        gridLayout->addWidget(label_3, 4, 0, 1, 1);

        topic_grid = new QLineEdit(occupancy_grid_config);
        topic_grid->setObjectName(QStringLiteral("topic_grid"));
        topic_grid->setFont(font1);

        gridLayout->addWidget(topic_grid, 2, 1, 1, 1);

        status = new QLabel(occupancy_grid_config);
        status->setObjectName(QStringLiteral("status"));
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        gridLayout->addWidget(status, 6, 1, 1, 2);

        select_grid = new QPushButton(occupancy_grid_config);
        select_grid->setObjectName(QStringLiteral("select_grid"));
        select_grid->setMaximumSize(QSize(100, 16777215));
        select_grid->setFont(font1);

        gridLayout->addWidget(select_grid, 2, 0, 1, 1);

        label_4 = new QLabel(occupancy_grid_config);
        label_4->setObjectName(QStringLiteral("label_4"));
        label_4->setFont(font1);

        gridLayout->addWidget(label_4, 5, 0, 1, 1);

        color_scheme = new QComboBox(occupancy_grid_config);
        color_scheme->setObjectName(QStringLiteral("color_scheme"));
        color_scheme->setMaximumSize(QSize(100, 16777215));

        gridLayout->addWidget(color_scheme, 5, 1, 1, 1);


        retranslateUi(occupancy_grid_config);

        QMetaObject::connectSlotsByName(occupancy_grid_config);
    } // setupUi

    void retranslateUi(QWidget *occupancy_grid_config)
    {
        occupancy_grid_config->setWindowTitle(QApplication::translate("occupancy_grid_config", "Form", Q_NULLPTR));
        checkbox_update->setText(QApplication::translate("occupancy_grid_config", "Subscribe to grid_updates", Q_NULLPTR));
        label_2->setText(QApplication::translate("occupancy_grid_config", "Status:", Q_NULLPTR));
        label_3->setText(QApplication::translate("occupancy_grid_config", "Alpha:", Q_NULLPTR));
        status->setText(QApplication::translate("occupancy_grid_config", "No frame", Q_NULLPTR));
        select_grid->setText(QApplication::translate("occupancy_grid_config", "Select Topic:", Q_NULLPTR));
        label_4->setText(QApplication::translate("occupancy_grid_config", "Color Scheme:", Q_NULLPTR));
        color_scheme->clear();
        color_scheme->insertItems(0, QStringList()
         << QApplication::translate("occupancy_grid_config", "map", Q_NULLPTR)
         << QApplication::translate("occupancy_grid_config", "costmap", Q_NULLPTR)
        );
    } // retranslateUi

};

namespace Ui {
    class occupancy_grid_config: public Ui_occupancy_grid_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_OCCUPANCY_GRID_CONFIG_H
