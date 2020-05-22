/****************************************************************************
** Meta object code from reading C++ file 'pointcloud2_plugin.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz_plugins/include/mapviz_plugins/pointcloud2_plugin.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'pointcloud2_plugin.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz_plugins__PointCloud2Plugin_t {
    QByteArrayData data[22];
    char stringdata0[328];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz_plugins__PointCloud2Plugin_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz_plugins__PointCloud2Plugin_t qt_meta_stringdata_mapviz_plugins__PointCloud2Plugin = {
    {
QT_MOC_LITERAL(0, 0, 33), // "mapviz_plugins::PointCloud2Pl..."
QT_MOC_LITERAL(1, 34, 11), // "SelectTopic"
QT_MOC_LITERAL(2, 46, 0), // ""
QT_MOC_LITERAL(3, 47, 11), // "TopicEdited"
QT_MOC_LITERAL(4, 59, 11), // "AlphaEdited"
QT_MOC_LITERAL(5, 71, 9), // "new_value"
QT_MOC_LITERAL(6, 81, 23), // "ColorTransformerChanged"
QT_MOC_LITERAL(7, 105, 5), // "index"
QT_MOC_LITERAL(8, 111, 15), // "MinValueChanged"
QT_MOC_LITERAL(9, 127, 5), // "value"
QT_MOC_LITERAL(10, 133, 15), // "MaxValueChanged"
QT_MOC_LITERAL(11, 149, 16), // "PointSizeChanged"
QT_MOC_LITERAL(12, 166, 17), // "BufferSizeChanged"
QT_MOC_LITERAL(13, 184, 17), // "UseRainbowChanged"
QT_MOC_LITERAL(14, 202, 11), // "check_state"
QT_MOC_LITERAL(15, 214, 20), // "UseAutomaxminChanged"
QT_MOC_LITERAL(16, 235, 12), // "UpdateColors"
QT_MOC_LITERAL(17, 248, 8), // "DrawIcon"
QT_MOC_LITERAL(18, 257, 27), // "ResetTransformedPointClouds"
QT_MOC_LITERAL(19, 285, 16), // "ClearPointClouds"
QT_MOC_LITERAL(20, 302, 15), // "SetSubscription"
QT_MOC_LITERAL(21, 318, 9) // "subscribe"

    },
    "mapviz_plugins::PointCloud2Plugin\0"
    "SelectTopic\0\0TopicEdited\0AlphaEdited\0"
    "new_value\0ColorTransformerChanged\0"
    "index\0MinValueChanged\0value\0MaxValueChanged\0"
    "PointSizeChanged\0BufferSizeChanged\0"
    "UseRainbowChanged\0check_state\0"
    "UseAutomaxminChanged\0UpdateColors\0"
    "DrawIcon\0ResetTransformedPointClouds\0"
    "ClearPointClouds\0SetSubscription\0"
    "subscribe"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz_plugins__PointCloud2Plugin[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      15,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   89,    2, 0x09 /* Protected */,
       3,    0,   90,    2, 0x09 /* Protected */,
       4,    1,   91,    2, 0x09 /* Protected */,
       6,    1,   94,    2, 0x09 /* Protected */,
       8,    1,   97,    2, 0x09 /* Protected */,
      10,    1,  100,    2, 0x09 /* Protected */,
      11,    1,  103,    2, 0x09 /* Protected */,
      12,    1,  106,    2, 0x09 /* Protected */,
      13,    1,  109,    2, 0x09 /* Protected */,
      15,    1,  112,    2, 0x09 /* Protected */,
      16,    0,  115,    2, 0x09 /* Protected */,
      17,    0,  116,    2, 0x09 /* Protected */,
      18,    0,  117,    2, 0x09 /* Protected */,
      19,    0,  118,    2, 0x09 /* Protected */,
      20,    1,  119,    2, 0x09 /* Protected */,

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
    QMetaType::Void, QMetaType::Int,   14,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,   21,

       0        // eod
};

void mapviz_plugins::PointCloud2Plugin::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        PointCloud2Plugin *_t = static_cast<PointCloud2Plugin *>(_o);
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
        case 9: _t->UseAutomaxminChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 10: _t->UpdateColors(); break;
        case 11: _t->DrawIcon(); break;
        case 12: _t->ResetTransformedPointClouds(); break;
        case 13: _t->ClearPointClouds(); break;
        case 14: _t->SetSubscription((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject mapviz_plugins::PointCloud2Plugin::staticMetaObject = {
    { &mapviz::MapvizPlugin::staticMetaObject, qt_meta_stringdata_mapviz_plugins__PointCloud2Plugin.data,
      qt_meta_data_mapviz_plugins__PointCloud2Plugin,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz_plugins::PointCloud2Plugin::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz_plugins::PointCloud2Plugin::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz_plugins__PointCloud2Plugin.stringdata0))
        return static_cast<void*>(this);
    return mapviz::MapvizPlugin::qt_metacast(_clname);
}

int mapviz_plugins::PointCloud2Plugin::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = mapviz::MapvizPlugin::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 15)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 15;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 15)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 15;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
