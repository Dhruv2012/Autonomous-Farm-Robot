/****************************************************************************
** Meta object code from reading C++ file 'string_plugin.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz_plugins/include/mapviz_plugins/string_plugin.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'string_plugin.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz_plugins__StringPlugin_t {
    QByteArrayData data[13];
    char stringdata0[138];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz_plugins__StringPlugin_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz_plugins__StringPlugin_t qt_meta_stringdata_mapviz_plugins__StringPlugin = {
    {
QT_MOC_LITERAL(0, 0, 28), // "mapviz_plugins::StringPlugin"
QT_MOC_LITERAL(1, 29, 11), // "SelectColor"
QT_MOC_LITERAL(2, 41, 0), // ""
QT_MOC_LITERAL(3, 42, 10), // "SelectFont"
QT_MOC_LITERAL(4, 53, 11), // "SelectTopic"
QT_MOC_LITERAL(5, 65, 11), // "TopicEdited"
QT_MOC_LITERAL(6, 77, 9), // "SetAnchor"
QT_MOC_LITERAL(7, 87, 6), // "anchor"
QT_MOC_LITERAL(8, 94, 8), // "SetUnits"
QT_MOC_LITERAL(9, 103, 5), // "units"
QT_MOC_LITERAL(10, 109, 10), // "SetOffsetX"
QT_MOC_LITERAL(11, 120, 6), // "offset"
QT_MOC_LITERAL(12, 127, 10) // "SetOffsetY"

    },
    "mapviz_plugins::StringPlugin\0SelectColor\0"
    "\0SelectFont\0SelectTopic\0TopicEdited\0"
    "SetAnchor\0anchor\0SetUnits\0units\0"
    "SetOffsetX\0offset\0SetOffsetY"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz_plugins__StringPlugin[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   54,    2, 0x09 /* Protected */,
       3,    0,   55,    2, 0x09 /* Protected */,
       4,    0,   56,    2, 0x09 /* Protected */,
       5,    0,   57,    2, 0x09 /* Protected */,
       6,    1,   58,    2, 0x09 /* Protected */,
       8,    1,   61,    2, 0x09 /* Protected */,
      10,    1,   64,    2, 0x09 /* Protected */,
      12,    1,   67,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    7,
    QMetaType::Void, QMetaType::QString,    9,
    QMetaType::Void, QMetaType::Int,   11,
    QMetaType::Void, QMetaType::Int,   11,

       0        // eod
};

void mapviz_plugins::StringPlugin::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        StringPlugin *_t = static_cast<StringPlugin *>(_o);
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
        default: ;
        }
    }
}

const QMetaObject mapviz_plugins::StringPlugin::staticMetaObject = {
    { &mapviz::MapvizPlugin::staticMetaObject, qt_meta_stringdata_mapviz_plugins__StringPlugin.data,
      qt_meta_data_mapviz_plugins__StringPlugin,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz_plugins::StringPlugin::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz_plugins::StringPlugin::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz_plugins__StringPlugin.stringdata0))
        return static_cast<void*>(this);
    return mapviz::MapvizPlugin::qt_metacast(_clname);
}

int mapviz_plugins::StringPlugin::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = mapviz::MapvizPlugin::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 8)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 8;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
