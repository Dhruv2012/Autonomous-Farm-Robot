/****************************************************************************
** Meta object code from reading C++ file 'config_item.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz/include/mapviz/config_item.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'config_item.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz__ConfigItem_t {
    QByteArrayData data[13];
    char stringdata0[133];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz__ConfigItem_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz__ConfigItem_t qt_meta_stringdata_mapviz__ConfigItem = {
    {
QT_MOC_LITERAL(0, 0, 18), // "mapviz::ConfigItem"
QT_MOC_LITERAL(1, 19, 14), // "UpdateSizeHint"
QT_MOC_LITERAL(2, 34, 0), // ""
QT_MOC_LITERAL(3, 35, 11), // "ToggledDraw"
QT_MOC_LITERAL(4, 47, 16), // "QListWidgetItem*"
QT_MOC_LITERAL(5, 64, 6), // "plugin"
QT_MOC_LITERAL(6, 71, 7), // "visible"
QT_MOC_LITERAL(7, 79, 13), // "RemoveRequest"
QT_MOC_LITERAL(8, 93, 4), // "Hide"
QT_MOC_LITERAL(9, 98, 8), // "EditName"
QT_MOC_LITERAL(10, 107, 6), // "Remove"
QT_MOC_LITERAL(11, 114, 10), // "ToggleDraw"
QT_MOC_LITERAL(12, 125, 7) // "toggled"

    },
    "mapviz::ConfigItem\0UpdateSizeHint\0\0"
    "ToggledDraw\0QListWidgetItem*\0plugin\0"
    "visible\0RemoveRequest\0Hide\0EditName\0"
    "Remove\0ToggleDraw\0toggled"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz__ConfigItem[] = {

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
       1,    0,   49,    2, 0x06 /* Public */,
       3,    2,   50,    2, 0x06 /* Public */,
       7,    1,   55,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       8,    0,   58,    2, 0x0a /* Public */,
       9,    0,   59,    2, 0x0a /* Public */,
      10,    0,   60,    2, 0x0a /* Public */,
      11,    1,   61,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 4, QMetaType::Bool,    5,    6,
    QMetaType::Void, 0x80000000 | 4,    5,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,   12,

       0        // eod
};

void mapviz::ConfigItem::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        ConfigItem *_t = static_cast<ConfigItem *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->UpdateSizeHint(); break;
        case 1: _t->ToggledDraw((*reinterpret_cast< QListWidgetItem*(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        case 2: _t->RemoveRequest((*reinterpret_cast< QListWidgetItem*(*)>(_a[1]))); break;
        case 3: _t->Hide(); break;
        case 4: _t->EditName(); break;
        case 5: _t->Remove(); break;
        case 6: _t->ToggleDraw((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (ConfigItem::*_t)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ConfigItem::UpdateSizeHint)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (ConfigItem::*_t)(QListWidgetItem * , bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ConfigItem::ToggledDraw)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (ConfigItem::*_t)(QListWidgetItem * );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ConfigItem::RemoveRequest)) {
                *result = 2;
                return;
            }
        }
    }
}

const QMetaObject mapviz::ConfigItem::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_mapviz__ConfigItem.data,
      qt_meta_data_mapviz__ConfigItem,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz::ConfigItem::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz::ConfigItem::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz__ConfigItem.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int mapviz::ConfigItem::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
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
void mapviz::ConfigItem::UpdateSizeHint()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void mapviz::ConfigItem::ToggledDraw(QListWidgetItem * _t1, bool _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void mapviz::ConfigItem::RemoveRequest(QListWidgetItem * _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
