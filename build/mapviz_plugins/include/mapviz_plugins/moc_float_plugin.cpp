/****************************************************************************
** Meta object code from reading C++ file 'float_plugin.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz_plugins/include/mapviz_plugins/float_plugin.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'float_plugin.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz_plugins__FloatPlugin_t {
    QByteArrayData data[14];
    char stringdata0[151];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz_plugins__FloatPlugin_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz_plugins__FloatPlugin_t qt_meta_stringdata_mapviz_plugins__FloatPlugin = {
    {
QT_MOC_LITERAL(0, 0, 27), // "mapviz_plugins::FloatPlugin"
QT_MOC_LITERAL(1, 28, 11), // "SelectColor"
QT_MOC_LITERAL(2, 40, 0), // ""
QT_MOC_LITERAL(3, 41, 10), // "SelectFont"
QT_MOC_LITERAL(4, 52, 11), // "SelectTopic"
QT_MOC_LITERAL(5, 64, 11), // "TopicEdited"
QT_MOC_LITERAL(6, 76, 9), // "SetAnchor"
QT_MOC_LITERAL(7, 86, 6), // "anchor"
QT_MOC_LITERAL(8, 93, 8), // "SetUnits"
QT_MOC_LITERAL(9, 102, 5), // "units"
QT_MOC_LITERAL(10, 108, 10), // "SetOffsetX"
QT_MOC_LITERAL(11, 119, 6), // "offset"
QT_MOC_LITERAL(12, 126, 10), // "SetOffsetY"
QT_MOC_LITERAL(13, 137, 13) // "PostfixEdited"

    },
    "mapviz_plugins::FloatPlugin\0SelectColor\0"
    "\0SelectFont\0SelectTopic\0TopicEdited\0"
    "SetAnchor\0anchor\0SetUnits\0units\0"
    "SetOffsetX\0offset\0SetOffsetY\0PostfixEdited"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz_plugins__FloatPlugin[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   59,    2, 0x09 /* Protected */,
       3,    0,   60,    2, 0x09 /* Protected */,
       4,    0,   61,    2, 0x09 /* Protected */,
       5,    0,   62,    2, 0x09 /* Protected */,
       6,    1,   63,    2, 0x09 /* Protected */,
       8,    1,   66,    2, 0x09 /* Protected */,
      10,    1,   69,    2, 0x09 /* Protected */,
      12,    1,   72,    2, 0x09 /* Protected */,
      13,    0,   75,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    7,
    QMetaType::Void, QMetaType::QString,    9,
    QMetaType::Void, QMetaType::Int,   11,
    QMetaType::Void, QMetaType::Int,   11,
    QMetaType::Void,

       0        // eod
};

void mapviz_plugins::FloatPlugin::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        FloatPlugin *_t = static_cast<FloatPlugin *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->SelectColor(); break;
        case 1: _t->SelectFont(); break;
        case 2: _t->SelectTopic(); break;
        case 3: _t->TopicEdited(); break;
        case 4: _t->SetAnchor((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 5: _t->SetUnits((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 6: _t->SetOffsetX((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 7: _t->SetOffsetY((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 8: _t->PostfixEdited(); break;
        default: ;
        }
    }
}

const QMetaObject mapviz_plugins::FloatPlugin::staticMetaObject = {
    { &mapviz::MapvizPlugin::staticMetaObject, qt_meta_stringdata_mapviz_plugins__FloatPlugin.data,
      qt_meta_data_mapviz_plugins__FloatPlugin,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz_plugins::FloatPlugin::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz_plugins::FloatPlugin::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz_plugins__FloatPlugin.stringdata0))
        return static_cast<void*>(this);
    return mapviz::MapvizPlugin::qt_metacast(_clname);
}

int mapviz_plugins::FloatPlugin::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = mapviz::MapvizPlugin::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 9;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
