/****************************************************************************
** Meta object code from reading C++ file 'widgets.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz/include/mapviz/widgets.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'widgets.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz__PluginConfigList_t {
    QByteArrayData data[3];
    char stringdata0[37];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz__PluginConfigList_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz__PluginConfigList_t qt_meta_stringdata_mapviz__PluginConfigList = {
    {
QT_MOC_LITERAL(0, 0, 24), // "mapviz::PluginConfigList"
QT_MOC_LITERAL(1, 25, 10), // "ItemsMoved"
QT_MOC_LITERAL(2, 36, 0) // ""

    },
    "mapviz::PluginConfigList\0ItemsMoved\0"
    ""
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz__PluginConfigList[] = {

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
       1,    0,   19,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void,

       0        // eod
};

void mapviz::PluginConfigList::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        PluginConfigList *_t = static_cast<PluginConfigList *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->ItemsMoved(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (PluginConfigList::*_t)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&PluginConfigList::ItemsMoved)) {
                *result = 0;
                return;
            }
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject mapviz::PluginConfigList::staticMetaObject = {
    { &QListWidget::staticMetaObject, qt_meta_stringdata_mapviz__PluginConfigList.data,
      qt_meta_data_mapviz__PluginConfigList,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz::PluginConfigList::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz::PluginConfigList::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz__PluginConfigList.stringdata0))
        return static_cast<void*>(this);
    return QListWidget::qt_metacast(_clname);
}

int mapviz::PluginConfigList::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QListWidget::qt_metacall(_c, _id, _a);
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
void mapviz::PluginConfigList::ItemsMoved()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}
struct qt_meta_stringdata_mapviz__SingleClickLabel_t {
    QByteArrayData data[3];
    char stringdata0[34];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz__SingleClickLabel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz__SingleClickLabel_t qt_meta_stringdata_mapviz__SingleClickLabel = {
    {
QT_MOC_LITERAL(0, 0, 24), // "mapviz::SingleClickLabel"
QT_MOC_LITERAL(1, 25, 7), // "Clicked"
QT_MOC_LITERAL(2, 33, 0) // ""

    },
    "mapviz::SingleClickLabel\0Clicked\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz__SingleClickLabel[] = {

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
       1,    0,   19,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void,

       0        // eod
};

void mapviz::SingleClickLabel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        SingleClickLabel *_t = static_cast<SingleClickLabel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->Clicked(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (SingleClickLabel::*_t)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&SingleClickLabel::Clicked)) {
                *result = 0;
                return;
            }
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject mapviz::SingleClickLabel::staticMetaObject = {
    { &QLabel::staticMetaObject, qt_meta_stringdata_mapviz__SingleClickLabel.data,
      qt_meta_data_mapviz__SingleClickLabel,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz::SingleClickLabel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz::SingleClickLabel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz__SingleClickLabel.stringdata0))
        return static_cast<void*>(this);
    return QLabel::qt_metacast(_clname);
}

int mapviz::SingleClickLabel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QLabel::qt_metacall(_c, _id, _a);
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
void mapviz::SingleClickLabel::Clicked()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}
struct qt_meta_stringdata_mapviz__DoubleClickWidget_t {
    QByteArrayData data[4];
    char stringdata0[54];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz__DoubleClickWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz__DoubleClickWidget_t qt_meta_stringdata_mapviz__DoubleClickWidget = {
    {
QT_MOC_LITERAL(0, 0, 25), // "mapviz::DoubleClickWidget"
QT_MOC_LITERAL(1, 26, 13), // "DoubleClicked"
QT_MOC_LITERAL(2, 40, 0), // ""
QT_MOC_LITERAL(3, 41, 12) // "RightClicked"

    },
    "mapviz::DoubleClickWidget\0DoubleClicked\0"
    "\0RightClicked"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz__DoubleClickWidget[] = {

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
       1,    0,   24,    2, 0x06 /* Public */,
       3,    0,   25,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void mapviz::DoubleClickWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        DoubleClickWidget *_t = static_cast<DoubleClickWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->DoubleClicked(); break;
        case 1: _t->RightClicked(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (DoubleClickWidget::*_t)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DoubleClickWidget::DoubleClicked)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (DoubleClickWidget::*_t)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DoubleClickWidget::RightClicked)) {
                *result = 1;
                return;
            }
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject mapviz::DoubleClickWidget::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_mapviz__DoubleClickWidget.data,
      qt_meta_data_mapviz__DoubleClickWidget,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz::DoubleClickWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz::DoubleClickWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz__DoubleClickWidget.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int mapviz::DoubleClickWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
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
void mapviz::DoubleClickWidget::DoubleClicked()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void mapviz::DoubleClickWidget::RightClicked()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}
struct qt_meta_stringdata_mapviz__IconWidget_t {
    QByteArrayData data[1];
    char stringdata0[19];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz__IconWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz__IconWidget_t qt_meta_stringdata_mapviz__IconWidget = {
    {
QT_MOC_LITERAL(0, 0, 18) // "mapviz::IconWidget"

    },
    "mapviz::IconWidget"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz__IconWidget[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       0,    0, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

       0        // eod
};

void mapviz::IconWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    Q_UNUSED(_o);
    Q_UNUSED(_id);
    Q_UNUSED(_c);
    Q_UNUSED(_a);
}

const QMetaObject mapviz::IconWidget::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_mapviz__IconWidget.data,
      qt_meta_data_mapviz__IconWidget,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz::IconWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz::IconWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz__IconWidget.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int mapviz::IconWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
