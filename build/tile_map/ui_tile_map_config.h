/********************************************************************************
** Form generated from reading UI file 'tile_map_config.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_TILE_MAP_CONFIG_H
#define UI_TILE_MAP_CONFIG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_tile_map_config
{
public:
    QGridLayout *gridLayout;
    QLabel *url_label;
    QLabel *label;
    QLabel *status;
    QLabel *label_6;
    QPushButton *reset_cache_button;
    QComboBox *source_combo;
    QLineEdit *base_url_text;
    QPushButton *delete_button;
    QPushButton *save_button;
    QLabel *label_2;
    QSpinBox *max_zoom_spin_box;

    void setupUi(QWidget *tile_map_config)
    {
        if (tile_map_config->objectName().isEmpty())
            tile_map_config->setObjectName(QStringLiteral("tile_map_config"));
        tile_map_config->resize(305, 141);
        tile_map_config->setStyleSheet(QStringLiteral(""));
        gridLayout = new QGridLayout(tile_map_config);
        gridLayout->setContentsMargins(2, 2, 2, 2);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setVerticalSpacing(4);
        url_label = new QLabel(tile_map_config);
        url_label->setObjectName(QStringLiteral("url_label"));
        QFont font;
        font.setFamily(QStringLiteral("Sans Serif"));
        font.setPointSize(8);
        url_label->setFont(font);

        gridLayout->addWidget(url_label, 3, 0, 1, 1);

        label = new QLabel(tile_map_config);
        label->setObjectName(QStringLiteral("label"));
        label->setFont(font);

        gridLayout->addWidget(label, 2, 0, 1, 1);

        status = new QLabel(tile_map_config);
        status->setObjectName(QStringLiteral("status"));
        status->setFont(font);
        status->setStyleSheet(QStringLiteral(""));
        status->setWordWrap(true);

        gridLayout->addWidget(status, 7, 1, 1, 3);

        label_6 = new QLabel(tile_map_config);
        label_6->setObjectName(QStringLiteral("label_6"));
        label_6->setFont(font);

        gridLayout->addWidget(label_6, 4, 0, 1, 1);

        reset_cache_button = new QPushButton(tile_map_config);
        reset_cache_button->setObjectName(QStringLiteral("reset_cache_button"));

        gridLayout->addWidget(reset_cache_button, 5, 3, 1, 1);

        source_combo = new QComboBox(tile_map_config);
        source_combo->setObjectName(QStringLiteral("source_combo"));
        source_combo->setMaximumSize(QSize(16777215, 27));
        source_combo->setEditable(false);

        gridLayout->addWidget(source_combo, 2, 1, 1, 3);

        base_url_text = new QLineEdit(tile_map_config);
        base_url_text->setObjectName(QStringLiteral("base_url_text"));
        base_url_text->setEnabled(false);

        gridLayout->addWidget(base_url_text, 3, 1, 1, 3);

        delete_button = new QPushButton(tile_map_config);
        delete_button->setObjectName(QStringLiteral("delete_button"));
        delete_button->setEnabled(false);

        gridLayout->addWidget(delete_button, 4, 3, 1, 1);

        save_button = new QPushButton(tile_map_config);
        save_button->setObjectName(QStringLiteral("save_button"));
        save_button->setEnabled(false);

        gridLayout->addWidget(save_button, 4, 2, 1, 1);

        label_2 = new QLabel(tile_map_config);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setFont(font);

        gridLayout->addWidget(label_2, 7, 0, 1, 1);

        max_zoom_spin_box = new QSpinBox(tile_map_config);
        max_zoom_spin_box->setObjectName(QStringLiteral("max_zoom_spin_box"));
        max_zoom_spin_box->setEnabled(false);
        QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(max_zoom_spin_box->sizePolicy().hasHeightForWidth());
        max_zoom_spin_box->setSizePolicy(sizePolicy);
        max_zoom_spin_box->setMaximumSize(QSize(50, 16777215));
        max_zoom_spin_box->setValue(15);

        gridLayout->addWidget(max_zoom_spin_box, 4, 1, 1, 1);


        retranslateUi(tile_map_config);

        QMetaObject::connectSlotsByName(tile_map_config);
    } // setupUi

    void retranslateUi(QWidget *tile_map_config)
    {
        tile_map_config->setWindowTitle(QApplication::translate("tile_map_config", "Form", Q_NULLPTR));
        url_label->setText(QApplication::translate("tile_map_config", "Base URL:", Q_NULLPTR));
        label->setText(QApplication::translate("tile_map_config", "Source:", Q_NULLPTR));
        status->setText(QApplication::translate("tile_map_config", "Unconfigured", Q_NULLPTR));
        label_6->setText(QApplication::translate("tile_map_config", "Max Zoom:", Q_NULLPTR));
        reset_cache_button->setText(QApplication::translate("tile_map_config", "Reset Cache", Q_NULLPTR));
        source_combo->clear();
        source_combo->insertItems(0, QStringList()
         << QApplication::translate("tile_map_config", "Stamen (terrain)", Q_NULLPTR)
         << QApplication::translate("tile_map_config", "Stamen (watercolor)", Q_NULLPTR)
         << QApplication::translate("tile_map_config", "Stamen (toner)", Q_NULLPTR)
         << QApplication::translate("tile_map_config", "Bing Maps (terrain)", Q_NULLPTR)
         << QApplication::translate("tile_map_config", "Custom WMTS Source...", Q_NULLPTR)
        );
        base_url_text->setText(QApplication::translate("tile_map_config", "http://tile.stamen.com/terrain/", Q_NULLPTR));
        delete_button->setText(QApplication::translate("tile_map_config", "Delete", Q_NULLPTR));
        save_button->setText(QApplication::translate("tile_map_config", "Save...", Q_NULLPTR));
        label_2->setText(QApplication::translate("tile_map_config", "Status:", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class tile_map_config: public Ui_tile_map_config {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_TILE_MAP_CONFIG_H
