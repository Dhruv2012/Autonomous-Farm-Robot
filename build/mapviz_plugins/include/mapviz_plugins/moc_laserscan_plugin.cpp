/****************************************************************************
** Meta object code from reading C++ file 'laserscan_plugin.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz_plugins/include/mapviz_plugins/laserscan_plugin.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'laserscan_plugin.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz_plugins__LaserScanPlugin_t {
    QByteArrayData data[18];
    char stringdata0[250];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz_plugins__LaserScanPlugin_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz_plugins__LaserScanPlugin_t qt_meta_stringdata_mapviz_plugins__LaserScanPlugin = {
    {
QT_MOC_LITERAL(0, 0, 31), // "mapviz_plugins::LaserScanPlugin"
QT_MOC_LITERAL(1, 32, 11), // "SelectTopic"
QT_MOC_LITERAL(2, 44, 0), // ""
QT_MOC_LITERAL(3, 45, 11), // "TopicEdited"
QT_MOC_LITERAL(4, 57, 11), // "AlphaEdited"
QT_MOC_LITERAL(5, 69, 3), // "val"
QT_MOC_LITERAL(6, 73, 23), // "ColorTransformerChanged"
QT_MOC_LITERAL(7, 97, 5), // "index"
QT_MOC_LITERAL(8, 103, 15), // "MinValueChanged"
QT_MOC_LITERAL(9, 119, 5), // "value"
QT_MOC_LITERAL(10, 125, 15), // "MaxValueChanged"
QT_MOC_LITERAL(11, 141, 16), // "PointSizeChanged"
QT_MOC_LITERAL(12, 158, 17), // "BufferSizeChanged"
QT_MOC_LITERAL(13, 176, 17), // "UseRainbowChanged"
QT_MOC_LITERAL(14, 194, 11), // "check_state"
QT_MOC_LITERAL(15, 206, 12), // "UpdateColors"
QT_MOC_LITERAL(16, 219, 8), // "DrawIcon"
QT_MOC_LITERAL(17, 228, 21) // "ResetTransformedScans"

    },
    "mapviz_plugins::LaserScanPlugin\0"
    "SelectTopic\0\0TopicEdited\0AlphaEdited\0"
    "val\0ColorTransformerChanged\0index\0"
    "MinValueChanged\0value\0MaxValueChanged\0"
    "PointSizeChanged\0BufferSizeChanged\0"
    "UseRainbowChanged\0check_state\0"
    "UpdateColors\0DrawIcon\0ResetTransformedScans"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz_plugins__LaserScanPlugin[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   74,    2, 0x09 /* Protected */,
       3,    0,   75,    2, 0x09 /* Protected */,
       4,    1,   76,    2, 0x09 /* Protected */,
       6,    1,   79,    2, 0x09 /* Protected */,
       8,    1,   82,    2, 0x09 /* Protected */,
      10,    1,   85,    2, 0x09 /* Protected */,
      11,    1,   88,    2, 0x09 /* Protected */,
      12,    1,   91,    2, 0x09 /* Protected */,
      13,    1,   94,    2, 0x09 /* Protected */,
      15,    0,   97,    2, 0x09 /* Protected */,
      16,    0,   98,    2, 0x09 /* Protected */,
      17,    0,   99,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Double,    5,
    QMetaType::Void, QMetaType::Int,    7,
    QMetaType::Void, QMetaType::Double,    9,
    QMetaType::Void, QMetaType::Double,    9,
    QMetaType::Void, QMetaType::Int,    9,
    QMetaType::Void, QMetaType::Int,    9,
    QMetaType::Void, QMetaType::Int,   14,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void mapviz_plugins::LaserScanPlugin::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        LaserScanPlugin *_t = static_cast<LaserScanPlugin *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->SelectTopic(); break;
        case 1: _t->TopicEdited(); break;
        case 2: _t->AlphaEdited((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 3: _t->ColorTransformerChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 4: _t->MinValueChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 5: _t->MaxValueChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 6: _t->PointSizeChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 7: _t->BufferSizeChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 8: _t->UseRainbowChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 9: _t->UpdateColors(); break;
        case 10: _t->DrawIcon(); break;
        case 11: _t->ResetTransformedScans(); break;
        default: ;
        }
    }
}

const QMetaObject mapviz_plugins::LaserScanPlugin::staticMetaObject = {
    { &mapviz::MapvizPlugin::staticMetaObject, qt_meta_stringdata_mapviz_plugins__LaserScanPlugin.data,
      qt_meta_data_mapviz_plugins__LaserScanPlugin,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz_plugins::LaserScanPlugin::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz_plugins::LaserScanPlugin::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz_plugins__LaserScanPlugin.stringdata0))
        return static_cast<void*>(this);
    return mapviz::MapvizPlugin::qt_metacast(_clname);
}

int mapviz_plugins::LaserScanPlugin::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = mapviz::MapvizPlugin::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 12)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 12;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
