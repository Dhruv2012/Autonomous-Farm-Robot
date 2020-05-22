/****************************************************************************
** Meta object code from reading C++ file 'robot_image_plugin.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz_plugins/include/mapviz_plugins/robot_image_plugin.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'robot_image_plugin.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz_plugins__RobotImagePlugin_t {
    QByteArrayData data[15];
    char stringdata0[210];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz_plugins__RobotImagePlugin_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz_plugins__RobotImagePlugin_t qt_meta_stringdata_mapviz_plugins__RobotImagePlugin = {
    {
QT_MOC_LITERAL(0, 0, 32), // "mapviz_plugins::RobotImagePlugin"
QT_MOC_LITERAL(1, 33, 10), // "SelectFile"
QT_MOC_LITERAL(2, 44, 0), // ""
QT_MOC_LITERAL(3, 45, 11), // "SelectFrame"
QT_MOC_LITERAL(4, 57, 11), // "FrameEdited"
QT_MOC_LITERAL(5, 69, 11), // "ImageEdited"
QT_MOC_LITERAL(6, 81, 12), // "WidthChanged"
QT_MOC_LITERAL(7, 94, 5), // "value"
QT_MOC_LITERAL(8, 100, 13), // "HeightChanged"
QT_MOC_LITERAL(9, 114, 14), // "OffsetXChanged"
QT_MOC_LITERAL(10, 129, 14), // "OffsetYChanged"
QT_MOC_LITERAL(11, 144, 17), // "RatioEqualToggled"
QT_MOC_LITERAL(12, 162, 7), // "toggled"
QT_MOC_LITERAL(13, 170, 18), // "RatioCustomToggled"
QT_MOC_LITERAL(14, 189, 20) // "RatioOriginalToggled"

    },
    "mapviz_plugins::RobotImagePlugin\0"
    "SelectFile\0\0SelectFrame\0FrameEdited\0"
    "ImageEdited\0WidthChanged\0value\0"
    "HeightChanged\0OffsetXChanged\0"
    "OffsetYChanged\0RatioEqualToggled\0"
    "toggled\0RatioCustomToggled\0"
    "RatioOriginalToggled"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz_plugins__RobotImagePlugin[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   69,    2, 0x09 /* Protected */,
       3,    0,   70,    2, 0x09 /* Protected */,
       4,    0,   71,    2, 0x09 /* Protected */,
       5,    0,   72,    2, 0x09 /* Protected */,
       6,    1,   73,    2, 0x09 /* Protected */,
       8,    1,   76,    2, 0x09 /* Protected */,
       9,    1,   79,    2, 0x09 /* Protected */,
      10,    1,   82,    2, 0x09 /* Protected */,
      11,    1,   85,    2, 0x09 /* Protected */,
      13,    1,   88,    2, 0x09 /* Protected */,
      14,    1,   91,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Double,    7,
    QMetaType::Void, QMetaType::Double,    7,
    QMetaType::Void, QMetaType::Double,    7,
    QMetaType::Void, QMetaType::Double,    7,
    QMetaType::Void, QMetaType::Bool,   12,
    QMetaType::Void, QMetaType::Bool,   12,
    QMetaType::Void, QMetaType::Bool,   12,

       0        // eod
};

void mapviz_plugins::RobotImagePlugin::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        RobotImagePlugin *_t = static_cast<RobotImagePlugin *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->SelectFile(); break;
        case 1: _t->SelectFrame(); break;
        case 2: _t->FrameEdited(); break;
        case 3: _t->ImageEdited(); break;
        case 4: _t->WidthChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 5: _t->HeightChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 6: _t->OffsetXChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 7: _t->OffsetYChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 8: _t->RatioEqualToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 9: _t->RatioCustomToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 10: _t->RatioOriginalToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject mapviz_plugins::RobotImagePlugin::staticMetaObject = {
    { &mapviz::MapvizPlugin::staticMetaObject, qt_meta_stringdata_mapviz_plugins__RobotImagePlugin.data,
      qt_meta_data_mapviz_plugins__RobotImagePlugin,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz_plugins::RobotImagePlugin::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz_plugins::RobotImagePlugin::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz_plugins__RobotImagePlugin.stringdata0))
        return static_cast<void*>(this);
    return mapviz::MapvizPlugin::qt_metacast(_clname);
}

int mapviz_plugins::RobotImagePlugin::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = mapviz::MapvizPlugin::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 11)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 11;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
