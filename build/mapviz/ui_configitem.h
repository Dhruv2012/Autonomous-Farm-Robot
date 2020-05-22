/********************************************************************************
** Form generated from reading UI file 'configitem.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_CONFIGITEM_H
#define UI_CONFIGITEM_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>
#include "mapviz/widgets.h"

QT_BEGIN_NAMESPACE

class Ui_configitem
{
public:
    QVBoxLayout *verticalLayout;
    mapviz::DoubleClickWidget *header;
    QHBoxLayout *horizontalLayout;
    mapviz::SingleClickLabel *signlabel;
    QLabel *namelabel;
    mapviz::IconWidget *icon;
    QCheckBox *show;
    QWidget *content;
    QVBoxLayout *content_layout;
    QLabel *label;

    void setupUi(QWidget *configitem)
    {
        if (configitem->objectName().isEmpty())
            configitem->setObjectName(QStringLiteral("configitem"));
        configitem->resize(400, 300);
        QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(configitem->sizePolicy().hasHeightForWidth());
        configitem->setSizePolicy(sizePolicy);
        verticalLayout = new QVBoxLayout(configitem);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(0, 2, 0, 0);
        header = new mapviz::DoubleClickWidget(configitem);
        header->setObjectName(QStringLiteral("header"));
        QSizePolicy sizePolicy1(QSizePolicy::Expanding, QSizePolicy::Fixed);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(header->sizePolicy().hasHeightForWidth());
        header->setSizePolicy(sizePolicy1);
        QPalette palette;
        QBrush brush(QColor(0, 0, 0, 255));
        brush.setStyle(Qt::SolidPattern);
        palette.setBrush(QPalette::Active, QPalette::WindowText, brush);
        QBrush brush1(QColor(169, 169, 169, 255));
        brush1.setStyle(Qt::SolidPattern);
        palette.setBrush(QPalette::Active, QPalette::Button, brush1);
        QBrush brush2(QColor(234, 230, 222, 255));
        brush2.setStyle(Qt::SolidPattern);
        palette.setBrush(QPalette::Active, QPalette::Light, brush2);
        QBrush brush3(QColor(195, 191, 185, 255));
        brush3.setStyle(Qt::SolidPattern);
        palette.setBrush(QPalette::Active, QPalette::Midlight, brush3);
        QBrush brush4(QColor(78, 76, 74, 255));
        brush4.setStyle(Qt::SolidPattern);
        palette.setBrush(QPalette::Active, QPalette::Dark, brush4);
        QBrush brush5(QColor(104, 102, 99, 255));
        brush5.setStyle(Qt::SolidPattern);
        palette.setBrush(QPalette::Active, QPalette::Mid, brush5);
        palette.setBrush(QPalette::Active, QPalette::Text, brush);
        QBrush brush6(QColor(255, 255, 255, 255));
        brush6.setStyle(Qt::SolidPattern);
        palette.setBrush(QPalette::Active, QPalette::BrightText, brush6);
        palette.setBrush(QPalette::Active, QPalette::ButtonText, brush);
        palette.setBrush(QPalette::Active, QPalette::Base, brush1);
        palette.setBrush(QPalette::Active, QPalette::Window, brush1);
        palette.setBrush(QPalette::Active, QPalette::Shadow, brush);
        QBrush brush7(QColor(205, 204, 201, 255));
        brush7.setStyle(Qt::SolidPattern);
        palette.setBrush(QPalette::Active, QPalette::AlternateBase, brush7);
        QBrush brush8(QColor(255, 255, 220, 255));
        brush8.setStyle(Qt::SolidPattern);
        palette.setBrush(QPalette::Active, QPalette::ToolTipBase, brush8);
        palette.setBrush(QPalette::Active, QPalette::ToolTipText, brush);
        palette.setBrush(QPalette::Inactive, QPalette::WindowText, brush);
        palette.setBrush(QPalette::Inactive, QPalette::Button, brush1);
        palette.setBrush(QPalette::Inactive, QPalette::Light, brush2);
        palette.setBrush(QPalette::Inactive, QPalette::Midlight, brush3);
        palette.setBrush(QPalette::Inactive, QPalette::Dark, brush4);
        palette.setBrush(QPalette::Inactive, QPalette::Mid, brush5);
        palette.setBrush(QPalette::Inactive, QPalette::Text, brush);
        palette.setBrush(QPalette::Inactive, QPalette::BrightText, brush6);
        palette.setBrush(QPalette::Inactive, QPalette::ButtonText, brush);
        palette.setBrush(QPalette::Inactive, QPalette::Base, brush1);
        palette.setBrush(QPalette::Inactive, QPalette::Window, brush1);
        palette.setBrush(QPalette::Inactive, QPalette::Shadow, brush);
        palette.setBrush(QPalette::Inactive, QPalette::AlternateBase, brush7);
        palette.setBrush(QPalette::Inactive, QPalette::ToolTipBase, brush8);
        palette.setBrush(QPalette::Inactive, QPalette::ToolTipText, brush);
        palette.setBrush(QPalette::Disabled, QPalette::WindowText, brush4);
        palette.setBrush(QPalette::Disabled, QPalette::Button, brush1);
        palette.setBrush(QPalette::Disabled, QPalette::Light, brush2);
        palette.setBrush(QPalette::Disabled, QPalette::Midlight, brush3);
        palette.setBrush(QPalette::Disabled, QPalette::Dark, brush4);
        palette.setBrush(QPalette::Disabled, QPalette::Mid, brush5);
        palette.setBrush(QPalette::Disabled, QPalette::Text, brush4);
        palette.setBrush(QPalette::Disabled, QPalette::BrightText, brush6);
        palette.setBrush(QPalette::Disabled, QPalette::ButtonText, brush4);
        palette.setBrush(QPalette::Disabled, QPalette::Base, brush1);
        palette.setBrush(QPalette::Disabled, QPalette::Window, brush1);
        palette.setBrush(QPalette::Disabled, QPalette::Shadow, brush);
        QBrush brush9(QColor(156, 153, 148, 255));
        brush9.setStyle(Qt::SolidPattern);
        palette.setBrush(QPalette::Disabled, QPalette::AlternateBase, brush9);
        palette.setBrush(QPalette::Disabled, QPalette::ToolTipBase, brush8);
        palette.setBrush(QPalette::Disabled, QPalette::ToolTipText, brush);
        header->setPalette(palette);
        header->setStyleSheet(QStringLiteral("QWidget { background-color : DarkGray ;}"));
        horizontalLayout = new QHBoxLayout(header);
        horizontalLayout->setSpacing(0);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        horizontalLayout->setSizeConstraint(QLayout::SetDefaultConstraint);
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        signlabel = new mapviz::SingleClickLabel(header);
        signlabel->setObjectName(QStringLiteral("signlabel"));
        QPalette palette1;
        QBrush brush10(QColor(211, 211, 211, 255));
        brush10.setStyle(Qt::SolidPattern);
        palette1.setBrush(QPalette::Active, QPalette::Button, brush10);
        QBrush brush11(QColor(162, 159, 154, 255));
        brush11.setStyle(Qt::SolidPattern);
        palette1.setBrush(QPalette::Active, QPalette::Light, brush11);
        palette1.setBrush(QPalette::Active, QPalette::Base, brush10);
        palette1.setBrush(QPalette::Active, QPalette::Window, brush10);
        palette1.setBrush(QPalette::Inactive, QPalette::Button, brush10);
        palette1.setBrush(QPalette::Inactive, QPalette::Light, brush11);
        palette1.setBrush(QPalette::Inactive, QPalette::Base, brush10);
        palette1.setBrush(QPalette::Inactive, QPalette::Window, brush10);
        palette1.setBrush(QPalette::Disabled, QPalette::Button, brush10);
        palette1.setBrush(QPalette::Disabled, QPalette::Light, brush11);
        palette1.setBrush(QPalette::Disabled, QPalette::Base, brush10);
        palette1.setBrush(QPalette::Disabled, QPalette::Window, brush10);
        signlabel->setPalette(palette1);
        QFont font;
        font.setFamily(QStringLiteral("DejaVu Sans Mono"));
        font.setPointSize(9);
        signlabel->setFont(font);
        signlabel->setStyleSheet(QStringLiteral("QLabel { background-color : LightGray ; }"));

        horizontalLayout->addWidget(signlabel);

        namelabel = new QLabel(header);
        namelabel->setObjectName(QStringLiteral("namelabel"));
        sizePolicy.setHeightForWidth(namelabel->sizePolicy().hasHeightForWidth());
        namelabel->setSizePolicy(sizePolicy);
        QFont font1;
        font1.setFamily(QStringLiteral("Ubuntu"));
        font1.setPointSize(9);
        font1.setBold(true);
        font1.setWeight(75);
        namelabel->setFont(font1);

        horizontalLayout->addWidget(namelabel);

        icon = new mapviz::IconWidget(header);
        icon->setObjectName(QStringLiteral("icon"));
        QSizePolicy sizePolicy2(QSizePolicy::Preferred, QSizePolicy::Expanding);
        sizePolicy2.setHorizontalStretch(0);
        sizePolicy2.setVerticalStretch(0);
        sizePolicy2.setHeightForWidth(icon->sizePolicy().hasHeightForWidth());
        icon->setSizePolicy(sizePolicy2);
        icon->setMinimumSize(QSize(20, 20));

        horizontalLayout->addWidget(icon);

        show = new QCheckBox(header);
        show->setObjectName(QStringLiteral("show"));
        QSizePolicy sizePolicy3(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy3.setHorizontalStretch(0);
        sizePolicy3.setVerticalStretch(0);
        sizePolicy3.setHeightForWidth(show->sizePolicy().hasHeightForWidth());
        show->setSizePolicy(sizePolicy3);
        show->setMaximumSize(QSize(20, 16777215));
        show->setChecked(true);
        show->setTristate(false);

        horizontalLayout->addWidget(show);


        verticalLayout->addWidget(header);

        content = new QWidget(configitem);
        content->setObjectName(QStringLiteral("content"));
        QSizePolicy sizePolicy4(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy4.setHorizontalStretch(0);
        sizePolicy4.setVerticalStretch(0);
        sizePolicy4.setHeightForWidth(content->sizePolicy().hasHeightForWidth());
        content->setSizePolicy(sizePolicy4);
        content_layout = new QVBoxLayout(content);
        content_layout->setObjectName(QStringLiteral("content_layout"));
        content_layout->setContentsMargins(0, 0, 0, 0);
        label = new QLabel(content);
        label->setObjectName(QStringLiteral("label"));
        QSizePolicy sizePolicy5(QSizePolicy::Preferred, QSizePolicy::Fixed);
        sizePolicy5.setHorizontalStretch(0);
        sizePolicy5.setVerticalStretch(0);
        sizePolicy5.setHeightForWidth(label->sizePolicy().hasHeightForWidth());
        label->setSizePolicy(sizePolicy5);

        content_layout->addWidget(label);


        verticalLayout->addWidget(content);


        retranslateUi(configitem);
        QObject::connect(header, SIGNAL(DoubleClicked()), configitem, SLOT(Hide()));
        QObject::connect(signlabel, SIGNAL(Clicked()), configitem, SLOT(Hide()));
        QObject::connect(show, SIGNAL(toggled(bool)), configitem, SLOT(ToggleDraw(bool)));

        QMetaObject::connectSlotsByName(configitem);
    } // setupUi

    void retranslateUi(QWidget *configitem)
    {
        configitem->setWindowTitle(QApplication::translate("configitem", "Form", Q_NULLPTR));
        signlabel->setText(QApplication::translate("configitem", " - ", Q_NULLPTR));
        namelabel->setText(QApplication::translate("configitem", "Name", Q_NULLPTR));
        show->setText(QString());
        label->setText(QApplication::translate("configitem", "Config goes here...", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class configitem: public Ui_configitem {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_CONFIGITEM_H
