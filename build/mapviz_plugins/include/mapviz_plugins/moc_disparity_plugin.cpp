/****************************************************************************
** Meta object code from reading C++ file 'disparity_plugin.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz_plugins/include/mapviz_plugins/disparity_plugin.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'disparity_plugin.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz_plugins__DisparityPlugin_t {
    QByteArrayData data[17];
    char stringdata0[174];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz_plugins__DisparityPlugin_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz_plugins__DisparityPlugin_t qt_meta_stringdata_mapviz_plugins__DisparityPlugin = {
    {
QT_MOC_LITERAL(0, 0, 31), // "mapviz_plugins::DisparityPlugin"
QT_MOC_LITERAL(1, 32, 11), // "SelectTopic"
QT_MOC_LITERAL(2, 44, 0), // ""
QT_MOC_LITERAL(3, 45, 11), // "TopicEdited"
QT_MOC_LITERAL(4, 57, 9), // "SetAnchor"
QT_MOC_LITERAL(5, 67, 6), // "anchor"
QT_MOC_LITERAL(6, 74, 8), // "SetUnits"
QT_MOC_LITERAL(7, 83, 5), // "units"
QT_MOC_LITERAL(8, 89, 10), // "SetOffsetX"
QT_MOC_LITERAL(9, 100, 6), // "offset"
QT_MOC_LITERAL(10, 107, 10), // "SetOffsetY"
QT_MOC_LITERAL(11, 118, 8), // "SetWidth"
QT_MOC_LITERAL(12, 127, 5), // "width"
QT_MOC_LITERAL(13, 133, 9), // "SetHeight"
QT_MOC_LITERAL(14, 143, 6), // "height"
QT_MOC_LITERAL(15, 150, 15), // "SetSubscription"
QT_MOC_LITERAL(16, 166, 7) // "visible"

    },
    "mapviz_plugins::DisparityPlugin\0"
    "SelectTopic\0\0TopicEdited\0SetAnchor\0"
    "anchor\0SetUnits\0units\0SetOffsetX\0"
    "offset\0SetOffsetY\0SetWidth\0width\0"
    "SetHeight\0height\0SetSubscription\0"
    "visible"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz_plugins__DisparityPlugin[] = {

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
       4,    1,   61,    2, 0x09 /* Protected */,
       6,    1,   64,    2, 0x09 /* Protected */,
       8,    1,   67,    2, 0x09 /* Protected */,
      10,    1,   70,    2, 0x09 /* Protected */,
      11,    1,   73,    2, 0x09 /* Protected */,
      13,    1,   76,    2, 0x09 /* Protected */,
      15,    1,   79,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    5,
    QMetaType::Void, QMetaType::QString,    7,
    QMetaType::Void, QMetaType::Int,    9,
    QMetaType::Void, QMetaType::Int,    9,
    QMetaType::Void, QMetaType::Int,   12,
    QMetaType::Void, QMetaType::Int,   14,
    QMetaType::Void, QMetaType::Bool,   16,

       0        // eod
};

void mapviz_plugins::DisparityPlugin::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        DisparityPlugin *_t = static_cast<DisparityPlugin *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->SelectTopic(); break;
        case 1: _t->TopicEdited(); break;
        case 2: _t->SetAnchor((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 3: _t->SetUnits((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 4: _t->SetOffsetX((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 5: _t->SetOffsetY((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->SetWidth((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 7: _t->SetHeight((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 8: _t->SetSubscription((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject mapviz_plugins::DisparityPlugin::staticMetaObject = {
    { &mapviz::MapvizPlugin::staticMetaObject, qt_meta_stringdata_mapviz_plugins__DisparityPlugin.data,
      qt_meta_data_mapviz_plugins__DisparityPlugin,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz_plugins::DisparityPlugin::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz_plugins::DisparityPlugin::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz_plugins__DisparityPlugin.stringdata0))
        return static_cast<void*>(this);
    return mapviz::MapvizPlugin::qt_metacast(_clname);
}

int mapviz_plugins::DisparityPlugin::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
