/********************************************************************************
** Form generated from reading UI file 'coordinate_picker_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_COORDINATE_PICKER_CONFIG_H
#define UI_COORDINATE_PICKER_CONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPlainTextEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_coordinate_picker_config
{
public:
    QGridLayout *gridLayout;
    QLabel *label_2;
    QLabel *status;
    QPlainTextEdit *coordTextEdit;
    QLabel *label;
    QLineEdit *frame;
    QPushButton *selectframe;
    QCheckBox *copyCheckBox;
    QPushButton *clearListButton;

    void setupUi(QWidget *coordinate_picker_config)
    {
        if (coordinate_picker_config->objectName().isEmpty())
            coordinate_picker_config->setObjectName(QStringLiteral("coordinate_picker_config"));
        coordinate_picker_config->resize(404, 304);
        coordinate_picker_config->setStyleSheet(QStringLiteral(""));
        gridLayout = new QGridLayout(coordinate_picker_config);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setVerticalSpacing(4);
        gridLayout->setContentsMargins(2, 2, 2, 2);
        label_2 = new QLabel(coordinate_picker_config);
        label_2->setObjectName(QStringLiteral("label_2"));
        QFont font;
        label_2->setFont(font);

        gridLayout->addWidget(label_2, 6, 0, 1, 1);

        status = new QLabel(coordinate_picker_config);
        status->setObjectName(QStringLiteral("status"));
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        gridLayout->addWidget(status, 6, 2, 1, 2);

        coordTextEdit = new QPlainTextEdit(coordinate_picker_config);
        coordTextEdit->setObjectName(QStringLiteral("coordTextEdit"));
        coordTextEdit->setLineWrapMode(QPlainTextEdit::NoWrap);
        coordTextEdit->setReadOnly(true);
        coordTextEdit->setTabStopWidth(4);
        coordTextEdit->setTextInteractionFlags(Qt::TextSelectableByKeyboard|Qt::TextSelectableByMouse);

        gridLayout->addWidget(coordTextEdit, 2, 2, 1, 1);

        label = new QLabel(coordinate_picker_config);
        label->setObjectName(QStringLiteral("label"));

        gridLayout->addWidget(label, 0, 0, 1, 1);

        frame = new QLineEdit(coordinate_picker_config);
        frame->setObjectName(QStringLiteral("frame"));

        gridLayout->addWidget(frame, 0, 2, 1, 1);

        selectframe = new QPushButton(coordinate_picker_config);
        selectframe->setObjectName(QStringLiteral("selectframe"));

        gridLayout->addWidget(selectframe, 0, 3, 1, 1);

        copyCheckBox = new QCheckBox(coordinate_picker_config);
        copyCheckBox->setObjectName(QStringLiteral("copyCheckBox"));

        gridLayout->addWidget(copyCheckBox, 1, 2, 1, 1);

        clearListButton = new QPushButton(coordinate_picker_config);
        clearListButton->setObjectName(QStringLiteral("clearListButton"));

        gridLayout->addWidget(clearListButton, 2, 3, 1, 1);


        retranslateUi(coordinate_picker_config);

        QMetaObject::connectSlotsByName(coordinate_picker_config);
    } // setupUi

    void retranslateUi(QWidget *coordinate_picker_config)
    {
        coordinate_picker_config->setWindowTitle(QApplication::translate("coordinate_picker_config", "Form", Q_NULLPTR));
        label_2->setText(QApplication::translate("coordinate_picker_config", "Status:", Q_NULLPTR));
        status->setText(QApplication::translate("coordinate_picker_config", "No topic", Q_NULLPTR));
        label->setText(QApplication::translate("coordinate_picker_config", "Frame:", Q_NULLPTR));
        selectframe->setText(QApplication::translate("coordinate_picker_config", "Select", Q_NULLPTR));
        copyCheckBox->setText(QApplication::translate("coordinate_picker_config", "Copy to Clipboard on Click", Q_NULLPTR));
        clearListButton->setText(QApplication::translate("coordinate_picker_config", "Clear List", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class coordinate_picker_config: public Ui_coordinate_picker_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_COORDINATE_PICKER_CONFIG_H
