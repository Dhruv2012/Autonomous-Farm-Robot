/****************************************************************************
** Meta object code from reading C++ file 'image_cache.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/tile_map/include/tile_map/image_cache.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'image_cache.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_tile_map__ImageCache_t {
    QByteArrayData data[11];
    char stringdata0[128];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_tile_map__ImageCache_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_tile_map__ImageCache_t qt_meta_stringdata_tile_map__ImageCache = {
    {
QT_MOC_LITERAL(0, 0, 20), // "tile_map::ImageCache"
QT_MOC_LITERAL(1, 21, 14), // "ProcessRequest"
QT_MOC_LITERAL(2, 36, 0), // ""
QT_MOC_LITERAL(3, 37, 3), // "uri"
QT_MOC_LITERAL(4, 41, 12), // "ProcessReply"
QT_MOC_LITERAL(5, 54, 14), // "QNetworkReply*"
QT_MOC_LITERAL(6, 69, 5), // "reply"
QT_MOC_LITERAL(7, 75, 12), // "NetworkError"
QT_MOC_LITERAL(8, 88, 27), // "QNetworkReply::NetworkError"
QT_MOC_LITERAL(9, 116, 5), // "error"
QT_MOC_LITERAL(10, 122, 5) // "Clear"

    },
    "tile_map::ImageCache\0ProcessRequest\0"
    "\0uri\0ProcessReply\0QNetworkReply*\0reply\0"
    "NetworkError\0QNetworkReply::NetworkError\0"
    "error\0Clear"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_tile_map__ImageCache[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   34,    2, 0x0a /* Public */,
       4,    1,   37,    2, 0x0a /* Public */,
       7,    1,   40,    2, 0x0a /* Public */,
      10,    0,   43,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, 0x80000000 | 5,    6,
    QMetaType::Void, 0x80000000 | 8,    9,
    QMetaType::Void,

       0        // eod
};

void tile_map::ImageCache::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        ImageCache *_t = static_cast<ImageCache *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->ProcessRequest((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: _t->ProcessReply((*reinterpret_cast< QNetworkReply*(*)>(_a[1]))); break;
        case 2: _t->NetworkError((*reinterpret_cast< QNetworkReply::NetworkError(*)>(_a[1]))); break;
        case 3: _t->Clear(); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 1:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QNetworkReply* >(); break;
            }
            break;
        case 2:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QNetworkReply::NetworkError >(); break;
            }
            break;
        }
    }
}

const QMetaObject tile_map::ImageCache::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_tile_map__ImageCache.data,
      qt_meta_data_tile_map__ImageCache,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *tile_map::ImageCache::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *tile_map::ImageCache::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_tile_map__ImageCache.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int tile_map::ImageCache::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    }
    return _id;
}
struct qt_meta_stringdata_tile_map__CacheThread_t {
    QByteArrayData data[3];
    char stringdata0[36];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_tile_map__CacheThread_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_tile_map__CacheThread_t qt_meta_stringdata_tile_map__CacheThread = {
    {
QT_MOC_LITERAL(0, 0, 21), // "tile_map::CacheThread"
QT_MOC_LITERAL(1, 22, 12), // "RequestImage"
QT_MOC_LITERAL(2, 35, 0) // ""

    },
    "tile_map::CacheThread\0RequestImage\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_tile_map__CacheThread[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   19,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    2,

       0        // eod
};

void tile_map::CacheThread::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        CacheThread *_t = static_cast<CacheThread *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->RequestImage((*reinterpret_cast< QString(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (CacheThread::*_t)(QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&CacheThread::RequestImage)) {
                *result = 0;
                return;
            }
        }
    }
}

const QMetaObject tile_map::CacheThread::staticMetaObject = {
    { &QThread::staticMetaObject, qt_meta_stringdata_tile_map__CacheThread.data,
      qt_meta_data_tile_map__CacheThread,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *tile_map::CacheThread::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *tile_map::CacheThread::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_tile_map__CacheThread.stringdata0))
        return static_cast<void*>(this);
    return QThread::qt_metacast(_clname);
}

int tile_map::CacheThread::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QThread::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 1)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 1;
    }
    return _id;
}

// SIGNAL 0
void tile_map::CacheThread::RequestImage(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
