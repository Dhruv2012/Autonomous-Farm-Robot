/********************************************************************************
** Form generated from reading UI file 'move_base_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MOVE_BASE_CONFIG_H
#define UI_MOVE_BASE_CONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QFrame>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_move_base_config
{
public:
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout_1;
    QPushButton *pushButtonAbort;
    QPushButton *pushButtonInitialPose;
    QPushButton *pushButtonGoalPose;
    QSpacerItem *horizontalSpacer;
    QFrame *line;
    QHBoxLayout *horizontalLayout_2;
    QLabel *label_status;
    QLabel *status;
    QSpacerItem *verticalSpacer;

    void setupUi(QWidget *move_base_config)
    {
        if (move_base_config->objectName().isEmpty())
            move_base_config->setObjectName(QStringLiteral("move_base_config"));
        move_base_config->resize(394, 218);
        move_base_config->setStyleSheet(QStringLiteral(""));
        verticalLayout = new QVBoxLayout(move_base_config);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        horizontalLayout_1 = new QHBoxLayout();
        horizontalLayout_1->setObjectName(QStringLiteral("horizontalLayout_1"));
        horizontalLayout_1->setContentsMargins(-1, 11, -1, -1);
        pushButtonAbort = new QPushButton(move_base_config);
        pushButtonAbort->setObjectName(QStringLiteral("pushButtonAbort"));
        pushButtonAbort->setMinimumSize(QSize(65, 0));
        pushButtonAbort->setMaximumSize(QSize(65, 16777215));
        QFont font;
        font.setPointSize(8);
        pushButtonAbort->setFont(font);
        QIcon icon;
        icon.addFile(QStringLiteral(":/images/remove-icon-th.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButtonAbort->setIcon(icon);

        horizontalLayout_1->addWidget(pushButtonAbort);

        pushButtonInitialPose = new QPushButton(move_base_config);
        pushButtonInitialPose->setObjectName(QStringLiteral("pushButtonInitialPose"));
        pushButtonInitialPose->setMinimumSize(QSize(100, 0));
        pushButtonInitialPose->setMaximumSize(QSize(110, 16777215));
        pushButtonInitialPose->setFont(font);
        QIcon icon1;
        icon1.addFile(QStringLiteral(":/images/green-arrow.png"), QSize(), QIcon::Normal, QIcon::Off);
        pushButtonInitialPose->setIcon(icon1);
        pushButtonInitialPose->setCheckable(true);

        horizontalLayout_1->addWidget(pushButtonInitialPose);

        pushButtonGoalPose = new QPushButton(move_base_config);
        pushButtonGoalPose->setObjectName(QStringLiteral("pushButtonGoalPose"));
        pushButtonGoalPose->setMinimumSize(QSize(100, 0));
        pushButtonGoalPose->setMaximumSize(QSize(100, 16777215));
        pushButtonGoalPose->setFont(font);
        pushButtonGoalPose->setIcon(icon1);
        pushButtonGoalPose->setCheckable(true);

        horizontalLayout_1->addWidget(pushButtonGoalPose);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_1->addItem(horizontalSpacer);


        verticalLayout->addLayout(horizontalLayout_1);

        line = new QFrame(move_base_config);
        line->setObjectName(QStringLiteral("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        verticalLayout->addWidget(line);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        label_status = new QLabel(move_base_config);
        label_status->setObjectName(QStringLiteral("label_status"));
        QFont font1;
        label_status->setFont(font1);

        horizontalLayout_2->addWidget(label_status);

        status = new QLabel(move_base_config);
        status->setObjectName(QStringLiteral("status"));
        status->setFont(font1);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        horizontalLayout_2->addWidget(status);

        horizontalLayout_2->setStretch(1, 1);

        verticalLayout->addLayout(horizontalLayout_2);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer);


        retranslateUi(move_base_config);

        QMetaObject::connectSlotsByName(move_base_config);
    } // setupUi

    void retranslateUi(QWidget *move_base_config)
    {
        move_base_config->setWindowTitle(QApplication::translate("move_base_config", "Form", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        pushButtonAbort->setToolTip(QApplication::translate("move_base_config", "<html><head/><body><p>Abort [2D Nav Goal] execution</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        pushButtonAbort->setText(QApplication::translate("move_base_config", "Abort", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        pushButtonInitialPose->setToolTip(QApplication::translate("move_base_config", "<html><head/><body><p>Publish robot pose on topic [/initialpose]</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        pushButtonInitialPose->setText(QApplication::translate("move_base_config", "Estimated Pose", Q_NULLPTR));
#ifndef QT_NO_TOOLTIP
        pushButtonGoalPose->setToolTip(QApplication::translate("move_base_config", "<html><head/><body><p>Send a goal to [move_base] action server</p></body></html>", Q_NULLPTR));
#endif // QT_NO_TOOLTIP
        pushButtonGoalPose->setText(QApplication::translate("move_base_config", "2D Nav Goal", Q_NULLPTR));
        label_status->setText(QApplication::translate("move_base_config", "Status:", Q_NULLPTR));
        status->setText(QApplication::translate("move_base_config", "No topic", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class move_base_config: public Ui_move_base_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MOVE_BASE_CONFIG_H
