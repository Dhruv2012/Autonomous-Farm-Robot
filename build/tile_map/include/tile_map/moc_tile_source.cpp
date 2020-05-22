/****************************************************************************
** Meta object code from reading C++ file 'tile_source.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/tile_map/include/tile_map/tile_source.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'tile_source.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_tile_map__TileSource_t {
    QByteArrayData data[7];
    char stringdata0[78];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_tile_map__TileSource_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_tile_map__TileSource_t qt_meta_stringdata_tile_map__TileSource = {
    {
QT_MOC_LITERAL(0, 0, 20), // "tile_map::TileSource"
QT_MOC_LITERAL(1, 21, 12), // "ErrorMessage"
QT_MOC_LITERAL(2, 34, 0), // ""
QT_MOC_LITERAL(3, 35, 11), // "std::string"
QT_MOC_LITERAL(4, 47, 9), // "error_msg"
QT_MOC_LITERAL(5, 57, 11), // "InfoMessage"
QT_MOC_LITERAL(6, 69, 8) // "info_msg"

    },
    "tile_map::TileSource\0ErrorMessage\0\0"
    "std::string\0error_msg\0InfoMessage\0"
    "info_msg"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_tile_map__TileSource[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   24,    2, 0x06 /* Public */,
       5,    1,   27,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, 0x80000000 | 3,    6,

       0        // eod
};

void tile_map::TileSource::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        TileSource *_t = static_cast<TileSource *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->ErrorMessage((*reinterpret_cast< const std::string(*)>(_a[1]))); break;
        case 1: _t->InfoMessage((*reinterpret_cast< const std::string(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (TileSource::*_t)(const std::string & ) const;
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&TileSource::ErrorMessage)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (TileSource::*_t)(const std::string & ) const;
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&TileSource::InfoMessage)) {
                *result = 1;
                return;
            }
        }
    }
}

const QMetaObject tile_map::TileSource::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_tile_map__TileSource.data,
      qt_meta_data_tile_map__TileSource,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *tile_map::TileSource::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *tile_map::TileSource::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_tile_map__TileSource.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int tile_map::TileSource::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 2;
    }
    return _id;
}

// SIGNAL 0
void tile_map::TileSource::ErrorMessage(const std::string & _t1)const
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(const_cast< tile_map::TileSource *>(this), &staticMetaObject, 0, _a);
}

// SIGNAL 1
void tile_map::TileSource::InfoMessage(const std::string & _t1)const
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(const_cast< tile_map::TileSource *>(this), &staticMetaObject, 1, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
