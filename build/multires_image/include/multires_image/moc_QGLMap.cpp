/****************************************************************************
** Meta object code from reading C++ file 'QGLMap.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/multires_image/include/multires_image/QGLMap.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QGLMap.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_multires_image__QGLMap_t {
    QByteArrayData data[20];
    char stringdata0[174];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_multires_image__QGLMap_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_multires_image__QGLMap_t qt_meta_stringdata_multires_image__QGLMap = {
    {
QT_MOC_LITERAL(0, 0, 22), // "multires_image::QGLMap"
QT_MOC_LITERAL(1, 23, 16), // "SignalZoomChange"
QT_MOC_LITERAL(2, 40, 0), // ""
QT_MOC_LITERAL(3, 41, 1), // "z"
QT_MOC_LITERAL(4, 43, 16), // "SignalViewChange"
QT_MOC_LITERAL(5, 60, 2), // "x1"
QT_MOC_LITERAL(6, 63, 2), // "y1"
QT_MOC_LITERAL(7, 66, 2), // "x2"
QT_MOC_LITERAL(8, 69, 2), // "y2"
QT_MOC_LITERAL(9, 72, 16), // "SignalMemorySize"
QT_MOC_LITERAL(10, 89, 7), // "int64_t"
QT_MOC_LITERAL(11, 97, 5), // "bytes"
QT_MOC_LITERAL(12, 103, 11), // "LoadTexture"
QT_MOC_LITERAL(13, 115, 5), // "Tile*"
QT_MOC_LITERAL(14, 121, 4), // "tile"
QT_MOC_LITERAL(15, 126, 13), // "DeleteTexture"
QT_MOC_LITERAL(16, 140, 12), // "ChangeCenter"
QT_MOC_LITERAL(17, 153, 1), // "x"
QT_MOC_LITERAL(18, 155, 1), // "y"
QT_MOC_LITERAL(19, 157, 16) // "SetTextureMemory"

    },
    "multires_image::QGLMap\0SignalZoomChange\0"
    "\0z\0SignalViewChange\0x1\0y1\0x2\0y2\0"
    "SignalMemorySize\0int64_t\0bytes\0"
    "LoadTexture\0Tile*\0tile\0DeleteTexture\0"
    "ChangeCenter\0x\0y\0SetTextureMemory"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_multires_image__QGLMap[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   49,    2, 0x06 /* Public */,
       4,    4,   52,    2, 0x06 /* Public */,
       9,    1,   61,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      12,    1,   64,    2, 0x0a /* Public */,
      15,    1,   67,    2, 0x0a /* Public */,
      16,    2,   70,    2, 0x0a /* Public */,
      19,    1,   75,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::Double,    3,
    QMetaType::Void, QMetaType::Double, QMetaType::Double, QMetaType::Double, QMetaType::Double,    5,    6,    7,    8,
    QMetaType::Void, 0x80000000 | 10,   11,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 13,   14,
    QMetaType::Void, 0x80000000 | 13,   14,
    QMetaType::Void, QMetaType::Double, QMetaType::Double,   17,   18,
    QMetaType::Void, 0x80000000 | 10,   11,

       0        // eod
};

void multires_image::QGLMap::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QGLMap *_t = static_cast<QGLMap *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->SignalZoomChange((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 1: _t->SignalViewChange((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3])),(*reinterpret_cast< double(*)>(_a[4]))); break;
        case 2: _t->SignalMemorySize((*reinterpret_cast< int64_t(*)>(_a[1]))); break;
        case 3: _t->LoadTexture((*reinterpret_cast< Tile*(*)>(_a[1]))); break;
        case 4: _t->DeleteTexture((*reinterpret_cast< Tile*(*)>(_a[1]))); break;
        case 5: _t->ChangeCenter((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 6: _t->SetTextureMemory((*reinterpret_cast< int64_t(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (QGLMap::*_t)(double );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QGLMap::SignalZoomChange)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (QGLMap::*_t)(double , double , double , double );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QGLMap::SignalViewChange)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (QGLMap::*_t)(int64_t );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&QGLMap::SignalMemorySize)) {
                *result = 2;
                return;
            }
        }
    }
}

const QMetaObject multires_image::QGLMap::staticMetaObject = {
    { &QGLWidget::staticMetaObject, qt_meta_stringdata_multires_image__QGLMap.data,
      qt_meta_data_multires_image__QGLMap,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *multires_image::QGLMap::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *multires_image::QGLMap::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_multires_image__QGLMap.stringdata0))
        return static_cast<void*>(this);
    return QGLWidget::qt_metacast(_clname);
}

int multires_image::QGLMap::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGLWidget::qt_metacall(_c, _id, _a);
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
void multires_image::QGLMap::SignalZoomChange(double _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void multires_image::QGLMap::SignalViewChange(double _t1, double _t2, double _t3, double _t4)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void multires_image::QGLMap::SignalMemorySize(int64_t _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
