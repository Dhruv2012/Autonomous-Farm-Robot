/****************************************************************************
** Meta object code from reading C++ file 'tile_cache.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/multires_image/include/multires_image/tile_cache.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'tile_cache.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_multires_image__TileCache_t {
    QByteArrayData data[9];
    char stringdata0[130];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_multires_image__TileCache_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_multires_image__TileCache_t qt_meta_stringdata_multires_image__TileCache = {
    {
QT_MOC_LITERAL(0, 0, 25), // "multires_image::TileCache"
QT_MOC_LITERAL(1, 26, 17), // "SignalLoadTexture"
QT_MOC_LITERAL(2, 44, 0), // ""
QT_MOC_LITERAL(3, 45, 5), // "Tile*"
QT_MOC_LITERAL(4, 51, 19), // "SignalDeleteTexture"
QT_MOC_LITERAL(5, 71, 16), // "SignalMemorySize"
QT_MOC_LITERAL(6, 88, 7), // "int64_t"
QT_MOC_LITERAL(7, 96, 15), // "LoadTextureSlot"
QT_MOC_LITERAL(8, 112, 17) // "DeleteTextureSlot"

    },
    "multires_image::TileCache\0SignalLoadTexture\0"
    "\0Tile*\0SignalDeleteTexture\0SignalMemorySize\0"
    "int64_t\0LoadTextureSlot\0DeleteTextureSlot"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_multires_image__TileCache[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   39,    2, 0x06 /* Public */,
       4,    1,   42,    2, 0x06 /* Public */,
       5,    1,   45,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       7,    1,   48,    2, 0x0a /* Public */,
       8,    1,   51,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    2,
    QMetaType::Void, 0x80000000 | 3,    2,
    QMetaType::Void, 0x80000000 | 6,    2,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    2,
    QMetaType::Void, 0x80000000 | 3,    2,

       0        // eod
};

void multires_image::TileCache::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        TileCache *_t = static_cast<TileCache *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->SignalLoadTexture((*reinterpret_cast< Tile*(*)>(_a[1]))); break;
        case 1: _t->SignalDeleteTexture((*reinterpret_cast< Tile*(*)>(_a[1]))); break;
        case 2: _t->SignalMemorySize((*reinterpret_cast< int64_t(*)>(_a[1]))); break;
        case 3: _t->LoadTextureSlot((*reinterpret_cast< Tile*(*)>(_a[1]))); break;
        case 4: _t->DeleteTextureSlot((*reinterpret_cast< Tile*(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (TileCache::*_t)(Tile * );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&TileCache::SignalLoadTexture)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (TileCache::*_t)(Tile * );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&TileCache::SignalDeleteTexture)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (TileCache::*_t)(int64_t );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&TileCache::SignalMemorySize)) {
                *result = 2;
                return;
            }
        }
    }
}

const QMetaObject multires_image::TileCache::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_multires_image__TileCache.data,
      qt_meta_data_multires_image__TileCache,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *multires_image::TileCache::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *multires_image::TileCache::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_multires_image__TileCache.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int multires_image::TileCache::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}

// SIGNAL 0
void multires_image::TileCache::SignalLoadTexture(Tile * _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void multires_image::TileCache::SignalDeleteTexture(Tile * _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void multires_image::TileCache::SignalMemorySize(int64_t _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
