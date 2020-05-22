/****************************************************************************
** Meta object code from reading C++ file 'occupancy_grid_plugin.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz_plugins/include/mapviz_plugins/occupancy_grid_plugin.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'occupancy_grid_plugin.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz_plugins__OccupancyGridPlugin_t {
    QByteArrayData data[9];
    char stringdata0[145];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz_plugins__OccupancyGridPlugin_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz_plugins__OccupancyGridPlugin_t qt_meta_stringdata_mapviz_plugins__OccupancyGridPlugin = {
    {
QT_MOC_LITERAL(0, 0, 35), // "mapviz_plugins::OccupancyGrid..."
QT_MOC_LITERAL(1, 36, 15), // "SelectTopicGrid"
QT_MOC_LITERAL(2, 52, 0), // ""
QT_MOC_LITERAL(3, 53, 15), // "TopicGridEdited"
QT_MOC_LITERAL(4, 69, 22), // "upgradeCheckBoxToggled"
QT_MOC_LITERAL(5, 92, 18), // "colorSchemeUpdated"
QT_MOC_LITERAL(6, 111, 8), // "DrawIcon"
QT_MOC_LITERAL(7, 120, 12), // "FrameChanged"
QT_MOC_LITERAL(8, 133, 11) // "std::string"

    },
    "mapviz_plugins::OccupancyGridPlugin\0"
    "SelectTopicGrid\0\0TopicGridEdited\0"
    "upgradeCheckBoxToggled\0colorSchemeUpdated\0"
    "DrawIcon\0FrameChanged\0std::string"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz_plugins__OccupancyGridPlugin[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   44,    2, 0x09 /* Protected */,
       3,    0,   45,    2, 0x09 /* Protected */,
       4,    1,   46,    2, 0x09 /* Protected */,
       5,    1,   49,    2, 0x09 /* Protected */,
       6,    0,   52,    2, 0x09 /* Protected */,
       7,    1,   53,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void, QMetaType::QString,    2,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 8,    2,

       0        // eod
};

void mapviz_plugins::OccupancyGridPlugin::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        OccupancyGridPlugin *_t = static_cast<OccupancyGridPlugin *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->SelectTopicGrid(); break;
        case 1: _t->TopicGridEdited(); break;
        case 2: _t->upgradeCheckBoxToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 3: _t->colorSchemeUpdated((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 4: _t->DrawIcon(); break;
        case 5: _t->FrameChanged((*reinterpret_cast< std::string(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject mapviz_plugins::OccupancyGridPlugin::staticMetaObject = {
    { &mapviz::MapvizPlugin::staticMetaObject, qt_meta_stringdata_mapviz_plugins__OccupancyGridPlugin.data,
      qt_meta_data_mapviz_plugins__OccupancyGridPlugin,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz_plugins::OccupancyGridPlugin::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz_plugins::OccupancyGridPlugin::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz_plugins__OccupancyGridPlugin.stringdata0))
        return static_cast<void*>(this);
    return mapviz::MapvizPlugin::qt_metacast(_clname);
}

int mapviz_plugins::OccupancyGridPlugin::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = mapviz::MapvizPlugin::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 6;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
