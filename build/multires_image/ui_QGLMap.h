/********************************************************************************
** Form generated from reading UI file 'QGLMap.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QGLMAP_H
#define UI_QGLMAP_H

#include <QtCore/QVariant>
#include <QtOpenGL/QGLWidget>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>

QT_BEGIN_NAMESPACE

class Ui_QGLMapClass
{
public:

    void setupUi(QGLWidget *QGLMapClass)
    {
        if (QGLMapClass->objectName().isEmpty())
            QGLMapClass->setObjectName(QStringLiteral("QGLMapClass"));
        QGLMapClass->resize(400, 300);

        retranslateUi(QGLMapClass);

        QMetaObject::connectSlotsByName(QGLMapClass);
    } // setupUi

    void retranslateUi(QGLWidget *QGLMapClass)
    {
        QGLMapClass->setWindowTitle(QApplication::translate("QGLMapClass", "QGLMap", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class QGLMapClass: public Ui_QGLMapClass {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QGLMAP_H
