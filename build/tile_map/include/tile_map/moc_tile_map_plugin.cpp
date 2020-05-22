/****************************************************************************
** Meta object code from reading C++ file 'tile_map_plugin.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/tile_map/include/tile_map/tile_map_plugin.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'tile_map_plugin.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_tile_map__TileMapPlugin_t {
    QByteArrayData data[12];
    char stringdata0[153];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_tile_map__TileMapPlugin_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_tile_map__TileMapPlugin_t qt_meta_stringdata_tile_map__TileMapPlugin = {
    {
QT_MOC_LITERAL(0, 0, 23), // "tile_map::TileMapPlugin"
QT_MOC_LITERAL(1, 24, 10), // "PrintError"
QT_MOC_LITERAL(2, 35, 0), // ""
QT_MOC_LITERAL(3, 36, 11), // "std::string"
QT_MOC_LITERAL(4, 48, 7), // "message"
QT_MOC_LITERAL(5, 56, 9), // "PrintInfo"
QT_MOC_LITERAL(6, 66, 12), // "PrintWarning"
QT_MOC_LITERAL(7, 79, 16), // "DeleteTileSource"
QT_MOC_LITERAL(8, 96, 12), // "SelectSource"
QT_MOC_LITERAL(9, 109, 11), // "source_name"
QT_MOC_LITERAL(10, 121, 16), // "SaveCustomSource"
QT_MOC_LITERAL(11, 138, 14) // "ResetTileCache"

    },
    "tile_map::TileMapPlugin\0PrintError\0\0"
    "std::string\0message\0PrintInfo\0"
    "PrintWarning\0DeleteTileSource\0"
    "SelectSource\0source_name\0SaveCustomSource\0"
    "ResetTileCache"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_tile_map__TileMapPlugin[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   49,    2, 0x09 /* Protected */,
       5,    1,   52,    2, 0x09 /* Protected */,
       6,    1,   55,    2, 0x09 /* Protected */,
       7,    0,   58,    2, 0x09 /* Protected */,
       8,    1,   59,    2, 0x09 /* Protected */,
      10,    0,   62,    2, 0x09 /* Protected */,
      11,    0,   63,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    9,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void tile_map::TileMapPlugin::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        TileMapPlugin *_t = static_cast<TileMapPlugin *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->PrintError((*reinterpret_cast< const std::string(*)>(_a[1]))); break;
        case 1: _t->PrintInfo((*reinterpret_cast< const std::string(*)>(_a[1]))); break;
        case 2: _t->PrintWarning((*reinterpret_cast< const std::string(*)>(_a[1]))); break;
        case 3: _t->DeleteTileSource(); break;
        case 4: _t->SelectSource((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 5: _t->SaveCustomSource(); break;
        case 6: _t->ResetTileCache(); break;
        default: ;
        }
    }
}

const QMetaObject tile_map::TileMapPlugin::staticMetaObject = {
    { &mapviz::MapvizPlugin::staticMetaObject, qt_meta_stringdata_tile_map__TileMapPlugin.data,
      qt_meta_data_tile_map__TileMapPlugin,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *tile_map::TileMapPlugin::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *tile_map::TileMapPlugin::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_tile_map__TileMapPlugin.stringdata0))
        return static_cast<void*>(this);
    return mapviz::MapvizPlugin::qt_metacast(_clname);
}

int tile_map::TileMapPlugin::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = mapviz::MapvizPlugin::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 7)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 7;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
