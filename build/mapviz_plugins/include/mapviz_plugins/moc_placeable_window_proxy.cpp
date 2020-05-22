/****************************************************************************
** Meta object code from reading C++ file 'placeable_window_proxy.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz_plugins/include/mapviz_plugins/placeable_window_proxy.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'placeable_window_proxy.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz_plugins__PlaceableWindowProxy_t {
    QByteArrayData data[6];
    char stringdata0[77];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz_plugins__PlaceableWindowProxy_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz_plugins__PlaceableWindowProxy_t qt_meta_stringdata_mapviz_plugins__PlaceableWindowProxy = {
    {
QT_MOC_LITERAL(0, 0, 36), // "mapviz_plugins::PlaceableWind..."
QT_MOC_LITERAL(1, 37, 11), // "rectChanged"
QT_MOC_LITERAL(2, 49, 0), // ""
QT_MOC_LITERAL(3, 50, 7), // "setRect"
QT_MOC_LITERAL(4, 58, 10), // "setVisible"
QT_MOC_LITERAL(5, 69, 7) // "visible"

    },
    "mapviz_plugins::PlaceableWindowProxy\0"
    "rectChanged\0\0setRect\0setVisible\0visible"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz_plugins__PlaceableWindowProxy[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   29,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       3,    1,   32,    2, 0x0a /* Public */,
       4,    1,   35,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QRect,    2,

 // slots: parameters
    QMetaType::Void, QMetaType::QRect,    2,
    QMetaType::Void, QMetaType::Bool,    5,

       0        // eod
};

void mapviz_plugins::PlaceableWindowProxy::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        PlaceableWindowProxy *_t = static_cast<PlaceableWindowProxy *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->rectChanged((*reinterpret_cast< const QRect(*)>(_a[1]))); break;
        case 1: _t->setRect((*reinterpret_cast< const QRect(*)>(_a[1]))); break;
        case 2: _t->setVisible((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (PlaceableWindowProxy::*_t)(const QRect & );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PlaceableWindowProxy::rectChanged)) {
                *result = 0;
                return;
            }
        }
    }
}

const QMetaObject mapviz_plugins::PlaceableWindowProxy::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_mapviz_plugins__PlaceableWindowProxy.data,
      qt_meta_data_mapviz_plugins__PlaceableWindowProxy,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz_plugins::PlaceableWindowProxy::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz_plugins::PlaceableWindowProxy::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz_plugins__PlaceableWindowProxy.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int mapviz_plugins::PlaceableWindowProxy::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
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

// SIGNAL 0
void mapviz_plugins::PlaceableWindowProxy::rectChanged(const QRect & _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
