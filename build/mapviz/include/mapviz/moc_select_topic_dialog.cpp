/****************************************************************************
** Meta object code from reading C++ file 'select_topic_dialog.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz/include/mapviz/select_topic_dialog.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'select_topic_dialog.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz__SelectTopicDialog_t {
    QByteArrayData data[4];
    char stringdata0[61];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz__SelectTopicDialog_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz__SelectTopicDialog_t qt_meta_stringdata_mapviz__SelectTopicDialog = {
    {
QT_MOC_LITERAL(0, 0, 25), // "mapviz::SelectTopicDialog"
QT_MOC_LITERAL(1, 26, 11), // "fetchTopics"
QT_MOC_LITERAL(2, 38, 0), // ""
QT_MOC_LITERAL(3, 39, 21) // "updateDisplayedTopics"

    },
    "mapviz::SelectTopicDialog\0fetchTopics\0"
    "\0updateDisplayedTopics"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz__SelectTopicDialog[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   24,    2, 0x08 /* Private */,
       3,    0,   25,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void mapviz::SelectTopicDialog::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        SelectTopicDialog *_t = static_cast<SelectTopicDialog *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->fetchTopics(); break;
        case 1: _t->updateDisplayedTopics(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject mapviz::SelectTopicDialog::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_mapviz__SelectTopicDialog.data,
      qt_meta_data_mapviz__SelectTopicDialog,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz::SelectTopicDialog::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz::SelectTopicDialog::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz__SelectTopicDialog.stringdata0))
        return static_cast<void*>(this);
    return QDialog::qt_metacast(_clname);
}

int mapviz::SelectTopicDialog::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 2;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
