/********************************************************************************
** Form generated from reading UI file 'multires_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MULTIRES_CONFIG_H
#define UI_MULTIRES_CONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDoubleSpinBox>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_multires_config
{
public:
    QGridLayout *gridLayout;
    QLabel *label_2;
    QLabel *status;
    QPushButton *browse;
    QLabel *label;
    QLineEdit *path;
    QLabel *label_3;
    QLabel *label_4;
    QDoubleSpinBox *x_offset_spin_box;
    QDoubleSpinBox *y_offset_spin_box;

    void setupUi(QWidget *multires_config)
    {
        if (multires_config->objectName().isEmpty())
            multires_config->setObjectName(QStringLiteral("multires_config"));
        multires_config->resize(400, 300);
        multires_config->setStyleSheet(QStringLiteral(""));
        gridLayout = new QGridLayout(multires_config);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setVerticalSpacing(4);
        gridLayout->setContentsMargins(2, 2, 2, 2);
        label_2 = new QLabel(multires_config);
        label_2->setObjectName(QStringLiteral("label_2"));
        QFont font;
        font.setFamily(QStringLiteral("Sans Serif"));
        font.setPointSize(8);
        label_2->setFont(font);

        gridLayout->addWidget(label_2, 6, 1, 1, 1);

        status = new QLabel(multires_config);
        status->setObjectName(QStringLiteral("status"));
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        gridLayout->addWidget(status, 6, 2, 1, 2);

        browse = new QPushButton(multires_config);
        browse->setObjectName(QStringLiteral("browse"));
        browse->setMaximumSize(QSize(55, 16777215));
        browse->setFont(font);
        browse->setStyleSheet(QStringLiteral(""));

        gridLayout->addWidget(browse, 2, 3, 1, 1);

        label = new QLabel(multires_config);
        label->setObjectName(QStringLiteral("label"));
        label->setFont(font);

        gridLayout->addWidget(label, 2, 1, 1, 1);

        path = new QLineEdit(multires_config);
        path->setObjectName(QStringLiteral("path"));
        path->setFont(font);

        gridLayout->addWidget(path, 2, 2, 1, 1);

        label_3 = new QLabel(multires_config);
        label_3->setObjectName(QStringLiteral("label_3"));
        QFont font1;
        font1.setFamily(QStringLiteral("Sans"));
        font1.setPointSize(8);
        label_3->setFont(font1);

        gridLayout->addWidget(label_3, 3, 1, 1, 1);

        label_4 = new QLabel(multires_config);
        label_4->setObjectName(QStringLiteral("label_4"));
        label_4->setFont(font1);

        gridLayout->addWidget(label_4, 4, 1, 1, 1);

        x_offset_spin_box = new QDoubleSpinBox(multires_config);
        x_offset_spin_box->setObjectName(QStringLiteral("x_offset_spin_box"));
        x_offset_spin_box->setMinimum(-100);
        x_offset_spin_box->setSingleStep(0.1);
        x_offset_spin_box->setValue(0);

        gridLayout->addWidget(x_offset_spin_box, 3, 2, 1, 1);

        y_offset_spin_box = new QDoubleSpinBox(multires_config);
        y_offset_spin_box->setObjectName(QStringLiteral("y_offset_spin_box"));
        y_offset_spin_box->setMinimum(-100);
        y_offset_spin_box->setSingleStep(0.1);

        gridLayout->addWidget(y_offset_spin_box, 4, 2, 1, 1);


        retranslateUi(multires_config);

        QMetaObject::connectSlotsByName(multires_config);
    } // setupUi

    void retranslateUi(QWidget *multires_config)
    {
        multires_config->setWindowTitle(QApplication::translate("multires_config", "Form", Q_NULLPTR));
        label_2->setText(QApplication::translate("multires_config", "Status:", Q_NULLPTR));
        status->setText(QApplication::translate("multires_config", "Unconfigured", Q_NULLPTR));
        browse->setText(QApplication::translate("multires_config", "Browse", Q_NULLPTR));
        label->setText(QApplication::translate("multires_config", "Geo File:", Q_NULLPTR));
        label_3->setText(QApplication::translate("multires_config", "X (East) offset", Q_NULLPTR));
        label_4->setText(QApplication::translate("multires_config", "Y (North) offset", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class multires_config: public Ui_multires_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MULTIRES_CONFIG_H
