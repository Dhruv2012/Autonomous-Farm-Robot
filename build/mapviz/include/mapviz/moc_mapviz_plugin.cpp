/****************************************************************************
** Meta object code from reading C++ file 'mapviz_plugin.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz/include/mapviz/mapviz_plugin.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'mapviz_plugin.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz__MapvizPlugin_t {
    QByteArrayData data[14];
    char stringdata0[204];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz__MapvizPlugin_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz__MapvizPlugin_t qt_meta_stringdata_mapviz__MapvizPlugin = {
    {
QT_MOC_LITERAL(0, 0, 20), // "mapviz::MapvizPlugin"
QT_MOC_LITERAL(1, 21, 16), // "DrawOrderChanged"
QT_MOC_LITERAL(2, 38, 0), // ""
QT_MOC_LITERAL(3, 39, 10), // "draw_order"
QT_MOC_LITERAL(4, 50, 11), // "SizeChanged"
QT_MOC_LITERAL(5, 62, 18), // "TargetFrameChanged"
QT_MOC_LITERAL(6, 81, 11), // "std::string"
QT_MOC_LITERAL(7, 93, 12), // "target_frame"
QT_MOC_LITERAL(8, 106, 26), // "UseLatestTransformsChanged"
QT_MOC_LITERAL(9, 133, 21), // "use_latest_transforms"
QT_MOC_LITERAL(10, 155, 14), // "VisibleChanged"
QT_MOC_LITERAL(11, 170, 7), // "visible"
QT_MOC_LITERAL(12, 178, 8), // "DrawIcon"
QT_MOC_LITERAL(13, 187, 16) // "SupportsPainting"

    },
    "mapviz::MapvizPlugin\0DrawOrderChanged\0"
    "\0draw_order\0SizeChanged\0TargetFrameChanged\0"
    "std::string\0target_frame\0"
    "UseLatestTransformsChanged\0"
    "use_latest_transforms\0VisibleChanged\0"
    "visible\0DrawIcon\0SupportsPainting"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz__MapvizPlugin[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       5,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   49,    2, 0x06 /* Public */,
       4,    0,   52,    2, 0x06 /* Public */,
       5,    1,   53,    2, 0x06 /* Public */,
       8,    1,   56,    2, 0x06 /* Public */,
      10,    1,   59,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      12,    0,   62,    2, 0x0a /* Public */,
      13,    0,   63,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 6,    7,
    QMetaType::Void, QMetaType::Bool,    9,
    QMetaType::Void, QMetaType::Bool,   11,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Bool,

       0        // eod
};

void mapviz::MapvizPlugin::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MapvizPlugin *_t = static_cast<MapvizPlugin *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->DrawOrderChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->SizeChanged(); break;
        case 2: _t->TargetFrameChanged((*reinterpret_cast< const std::string(*)>(_a[1]))); break;
        case 3: _t->UseLatestTransformsChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->VisibleChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 5: _t->DrawIcon(); break;
        case 6: { bool _r = _t->SupportsPainting();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (MapvizPlugin::*_t)(int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&MapvizPlugin::DrawOrderChanged)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (MapvizPlugin::*_t)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&MapvizPlugin::SizeChanged)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (MapvizPlugin::*_t)(const std::string & );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&MapvizPlugin::TargetFrameChanged)) {
                *result = 2;
                return;
            }
        }
        {
            typedef void (MapvizPlugin::*_t)(bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&MapvizPlugin::UseLatestTransformsChanged)) {
                *result = 3;
                return;
            }
        }
        {
            typedef void (MapvizPlugin::*_t)(bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&MapvizPlugin::VisibleChanged)) {
                *result = 4;
                return;
            }
        }
    }
}

const QMetaObject mapviz::MapvizPlugin::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_mapviz__MapvizPlugin.data,
      qt_meta_data_mapviz__MapvizPlugin,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz::MapvizPlugin::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz::MapvizPlugin::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz__MapvizPlugin.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int mapviz::MapvizPlugin::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
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

// SIGNAL 0
void mapviz::MapvizPlugin::DrawOrderChanged(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void mapviz::MapvizPlugin::SizeChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void mapviz::MapvizPlugin::TargetFrameChanged(const std::string & _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void mapviz::MapvizPlugin::UseLatestTransformsChanged(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void mapviz::MapvizPlugin::VisibleChanged(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
