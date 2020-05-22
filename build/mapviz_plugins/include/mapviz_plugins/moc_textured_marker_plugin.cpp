/****************************************************************************
** Meta object code from reading C++ file 'textured_marker_plugin.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz_plugins/include/mapviz_plugins/textured_marker_plugin.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'textured_marker_plugin.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz_plugins__TexturedMarkerPlugin_t {
    QByteArrayData data[15];
    char stringdata0[273];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz_plugins__TexturedMarkerPlugin_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz_plugins__TexturedMarkerPlugin_t qt_meta_stringdata_mapviz_plugins__TexturedMarkerPlugin = {
    {
QT_MOC_LITERAL(0, 0, 36), // "mapviz_plugins::TexturedMarke..."
QT_MOC_LITERAL(1, 37, 14), // "MarkerReceived"
QT_MOC_LITERAL(2, 52, 0), // ""
QT_MOC_LITERAL(3, 53, 48), // "marti_visualization_msgs::Tex..."
QT_MOC_LITERAL(4, 102, 6), // "marker"
QT_MOC_LITERAL(5, 109, 15), // "MarkersReceived"
QT_MOC_LITERAL(6, 125, 53), // "marti_visualization_msgs::Tex..."
QT_MOC_LITERAL(7, 179, 7), // "markers"
QT_MOC_LITERAL(8, 187, 13), // "SetAlphaLevel"
QT_MOC_LITERAL(9, 201, 5), // "alpha"
QT_MOC_LITERAL(10, 207, 11), // "SelectTopic"
QT_MOC_LITERAL(11, 219, 11), // "TopicEdited"
QT_MOC_LITERAL(12, 231, 12), // "ClearHistory"
QT_MOC_LITERAL(13, 244, 13), // "ProcessMarker"
QT_MOC_LITERAL(14, 258, 14) // "ProcessMarkers"

    },
    "mapviz_plugins::TexturedMarkerPlugin\0"
    "MarkerReceived\0\0"
    "marti_visualization_msgs::TexturedMarkerConstPtr\0"
    "marker\0MarkersReceived\0"
    "marti_visualization_msgs::TexturedMarkerArrayConstPtr\0"
    "markers\0SetAlphaLevel\0alpha\0SelectTopic\0"
    "TopicEdited\0ClearHistory\0ProcessMarker\0"
    "ProcessMarkers"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz_plugins__TexturedMarkerPlugin[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   54,    2, 0x06 /* Public */,
       5,    1,   57,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       8,    1,   60,    2, 0x09 /* Protected */,
      10,    0,   63,    2, 0x09 /* Protected */,
      11,    0,   64,    2, 0x09 /* Protected */,
      12,    0,   65,    2, 0x09 /* Protected */,
      13,    1,   66,    2, 0x09 /* Protected */,
      14,    1,   69,    2, 0x09 /* Protected */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, 0x80000000 | 6,    7,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,    9,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, 0x80000000 | 6,    7,

       0        // eod
};

void mapviz_plugins::TexturedMarkerPlugin::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        TexturedMarkerPlugin *_t = static_cast<TexturedMarkerPlugin *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->MarkerReceived((*reinterpret_cast< const marti_visualization_msgs::TexturedMarkerConstPtr(*)>(_a[1]))); break;
        case 1: _t->MarkersReceived((*reinterpret_cast< const marti_visualization_msgs::TexturedMarkerArrayConstPtr(*)>(_a[1]))); break;
        case 2: _t->SetAlphaLevel((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->SelectTopic(); break;
        case 4: _t->TopicEdited(); break;
        case 5: _t->ClearHistory(); break;
        case 6: _t->ProcessMarker((*reinterpret_cast< const marti_visualization_msgs::TexturedMarkerConstPtr(*)>(_a[1]))); break;
        case 7: _t->ProcessMarkers((*reinterpret_cast< const marti_visualization_msgs::TexturedMarkerArrayConstPtr(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 0:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< marti_visualization_msgs::TexturedMarkerConstPtr >(); break;
            }
            break;
        case 1:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< marti_visualization_msgs::TexturedMarkerArrayConstPtr >(); break;
            }
            break;
        case 6:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< marti_visualization_msgs::TexturedMarkerConstPtr >(); break;
            }
            break;
        case 7:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< marti_visualization_msgs::TexturedMarkerArrayConstPtr >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (TexturedMarkerPlugin::*_t)(const marti_visualization_msgs::TexturedMarkerConstPtr );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&TexturedMarkerPlugin::MarkerReceived)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (TexturedMarkerPlugin::*_t)(const marti_visualization_msgs::TexturedMarkerArrayConstPtr );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&TexturedMarkerPlugin::MarkersReceived)) {
                *result = 1;
                return;
            }
        }
    }
}

const QMetaObject mapviz_plugins::TexturedMarkerPlugin::staticMetaObject = {
    { &mapviz::MapvizPlugin::staticMetaObject, qt_meta_stringdata_mapviz_plugins__TexturedMarkerPlugin.data,
      qt_meta_data_mapviz_plugins__TexturedMarkerPlugin,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz_plugins::TexturedMarkerPlugin::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz_plugins::TexturedMarkerPlugin::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz_plugins__TexturedMarkerPlugin.stringdata0))
        return static_cast<void*>(this);
    return mapviz::MapvizPlugin::qt_metacast(_clname);
}

int mapviz_plugins::TexturedMarkerPlugin::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    }
    return _id;
}

// SIGNAL 0
void mapviz_plugins::TexturedMarkerPlugin::MarkerReceived(const marti_visualization_msgs::TexturedMarkerConstPtr _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void mapviz_plugins::TexturedMarkerPlugin::MarkersReceived(const marti_visualization_msgs::TexturedMarkerArrayConstPtr _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
