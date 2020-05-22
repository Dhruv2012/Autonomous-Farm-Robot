/****************************************************************************
** Meta object code from reading C++ file 'grid_plugin.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz_plugins/include/mapviz_plugins/grid_plugin.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'grid_plugin.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz_plugins__GridPlugin_t {
    QByteArrayData data[17];
    char stringdata0[135];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz_plugins__GridPlugin_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz_plugins__GridPlugin_t qt_meta_stringdata_mapviz_plugins__GridPlugin = {
    {
QT_MOC_LITERAL(0, 0, 26), // "mapviz_plugins::GridPlugin"
QT_MOC_LITERAL(1, 27, 11), // "SelectFrame"
QT_MOC_LITERAL(2, 39, 0), // ""
QT_MOC_LITERAL(3, 40, 11), // "FrameEdited"
QT_MOC_LITERAL(4, 52, 8), // "SetAlpha"
QT_MOC_LITERAL(5, 61, 5), // "alpha"
QT_MOC_LITERAL(6, 67, 4), // "SetX"
QT_MOC_LITERAL(7, 72, 1), // "x"
QT_MOC_LITERAL(8, 74, 4), // "SetY"
QT_MOC_LITERAL(9, 79, 1), // "y"
QT_MOC_LITERAL(10, 81, 7), // "SetSize"
QT_MOC_LITERAL(11, 89, 4), // "size"
QT_MOC_LITERAL(12, 94, 7), // "SetRows"
QT_MOC_LITERAL(13, 102, 4), // "rows"
QT_MOC_LITERAL(14, 107, 10), // "SetColumns"
QT_MOC_LITERAL(15, 118, 7), // "columns"
QT_MOC_LITERAL(16, 126, 8) // "DrawIcon"

    },
    "mapviz_plugins::GridPlugin\0SelectFrame\0"
    "\0FrameEdited\0SetAlpha\0alpha\0SetX\0x\0"
    "SetY\0y\0SetSize\0size\0SetRows\0rows\0"
    "SetColumns\0columns\0DrawIcon"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz_plugins__GridPlugin[] = {

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
      12,    1,   73,    2, 0x09 /* Protected */,
      14,    1,   76,    2, 0x09 /* Protected */,
      16,    0,   79,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Double,    5,
    QMetaType::Void, QMetaType::Double,    7,
    QMetaType::Void, QMetaType::Double,    9,
    QMetaType::Void, QMetaType::Double,   11,
    QMetaType::Void, QMetaType::Int,   13,
    QMetaType::Void, QMetaType::Int,   15,
    QMetaType::Void,

       0        // eod
};

void mapviz_plugins::GridPlugin::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        GridPlugin *_t = static_cast<GridPlugin *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->SelectFrame(); break;
        case 1: _t->FrameEdited(); break;
        case 2: _t->SetAlpha((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 3: _t->SetX((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 4: _t->SetY((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 5: _t->SetSize((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 6: _t->SetRows((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 7: _t->SetColumns((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 8: _t->DrawIcon(); break;
        default: ;
        }
    }
}

const QMetaObject mapviz_plugins::GridPlugin::staticMetaObject = {
    { &mapviz::MapvizPlugin::staticMetaObject, qt_meta_stringdata_mapviz_plugins__GridPlugin.data,
      qt_meta_data_mapviz_plugins__GridPlugin,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz_plugins::GridPlugin::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz_plugins::GridPlugin::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz_plugins__GridPlugin.stringdata0))
        return static_cast<void*>(this);
    return mapviz::MapvizPlugin::qt_metacast(_clname);
}

int mapviz_plugins::GridPlugin::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
