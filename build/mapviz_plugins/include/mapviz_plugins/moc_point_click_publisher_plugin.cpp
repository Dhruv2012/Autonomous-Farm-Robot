/****************************************************************************
** Meta object code from reading C++ file 'point_click_publisher_plugin.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz_plugins/include/mapviz_plugins/point_click_publisher_plugin.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'point_click_publisher_plugin.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz_plugins__PointClickPublisherPlugin_t {
    QByteArrayData data[7];
    char stringdata0[94];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz_plugins__PointClickPublisherPlugin_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz_plugins__PointClickPublisherPlugin_t qt_meta_stringdata_mapviz_plugins__PointClickPublisherPlugin = {
    {
QT_MOC_LITERAL(0, 0, 41), // "mapviz_plugins::PointClickPub..."
QT_MOC_LITERAL(1, 42, 12), // "pointClicked"
QT_MOC_LITERAL(2, 55, 0), // ""
QT_MOC_LITERAL(3, 56, 5), // "point"
QT_MOC_LITERAL(4, 62, 12), // "topicChanged"
QT_MOC_LITERAL(5, 75, 5), // "topic"
QT_MOC_LITERAL(6, 81, 12) // "updateFrames"

    },
    "mapviz_plugins::PointClickPublisherPlugin\0"
    "pointClicked\0\0point\0topicChanged\0topic\0"
    "updateFrames"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz_plugins__PointClickPublisherPlugin[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   29,    2, 0x09 /* Protected */,
       4,    1,   32,    2, 0x09 /* Protected */,
       6,    0,   35,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void, QMetaType::QPointF,    3,
    QMetaType::Void, QMetaType::QString,    5,
    QMetaType::Void,

       0        // eod
};

void mapviz_plugins::PointClickPublisherPlugin::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        PointClickPublisherPlugin *_t = static_cast<PointClickPublisherPlugin *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->pointClicked((*reinterpret_cast< const QPointF(*)>(_a[1]))); break;
        case 1: _t->topicChanged((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 2: _t->updateFrames(); break;
        default: ;
        }
    }
}

const QMetaObject mapviz_plugins::PointClickPublisherPlugin::staticMetaObject = {
    { &mapviz::MapvizPlugin::staticMetaObject, qt_meta_stringdata_mapviz_plugins__PointClickPublisherPlugin.data,
      qt_meta_data_mapviz_plugins__PointClickPublisherPlugin,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz_plugins::PointClickPublisherPlugin::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz_plugins::PointClickPublisherPlugin::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz_plugins__PointClickPublisherPlugin.stringdata0))
        return static_cast<void*>(this);
    return mapviz::MapvizPlugin::qt_metacast(_clname);
}

int mapviz_plugins::PointClickPublisherPlugin::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = mapviz::MapvizPlugin::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
