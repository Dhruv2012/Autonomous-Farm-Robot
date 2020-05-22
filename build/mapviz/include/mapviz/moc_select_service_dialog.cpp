/****************************************************************************
** Meta object code from reading C++ file 'select_service_dialog.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz/include/mapviz/select_service_dialog.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'select_service_dialog.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz__ServiceUpdaterThread_t {
    QByteArrayData data[7];
    char stringdata0[100];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz__ServiceUpdaterThread_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz__ServiceUpdaterThread_t qt_meta_stringdata_mapviz__ServiceUpdaterThread = {
    {
QT_MOC_LITERAL(0, 0, 28), // "mapviz::ServiceUpdaterThread"
QT_MOC_LITERAL(1, 29, 15), // "servicesFetched"
QT_MOC_LITERAL(2, 45, 0), // ""
QT_MOC_LITERAL(3, 46, 19), // "ServiceStringVector"
QT_MOC_LITERAL(4, 66, 8), // "services"
QT_MOC_LITERAL(5, 75, 14), // "fetchingFailed"
QT_MOC_LITERAL(6, 90, 9) // "error_msg"

    },
    "mapviz::ServiceUpdaterThread\0"
    "servicesFetched\0\0ServiceStringVector\0"
    "services\0fetchingFailed\0error_msg"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz__ServiceUpdaterThread[] = {

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
    QMetaType::Void, QMetaType::QString,    6,

       0        // eod
};

void mapviz::ServiceUpdaterThread::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        ServiceUpdaterThread *_t = static_cast<ServiceUpdaterThread *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->servicesFetched((*reinterpret_cast< ServiceStringVector(*)>(_a[1]))); break;
        case 1: _t->fetchingFailed((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 0:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< ServiceStringVector >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (ServiceUpdaterThread::*_t)(ServiceStringVector );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ServiceUpdaterThread::servicesFetched)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (ServiceUpdaterThread::*_t)(const QString );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&ServiceUpdaterThread::fetchingFailed)) {
                *result = 1;
                return;
            }
        }
    }
}

const QMetaObject mapviz::ServiceUpdaterThread::staticMetaObject = {
    { &QThread::staticMetaObject, qt_meta_stringdata_mapviz__ServiceUpdaterThread.data,
      qt_meta_data_mapviz__ServiceUpdaterThread,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz::ServiceUpdaterThread::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz::ServiceUpdaterThread::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz__ServiceUpdaterThread.stringdata0))
        return static_cast<void*>(this);
    return QThread::qt_metacast(_clname);
}

int mapviz::ServiceUpdaterThread::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QThread::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    }
    return _id;
}

// SIGNAL 0
void mapviz::ServiceUpdaterThread::servicesFetched(ServiceStringVector _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void mapviz::ServiceUpdaterThread::fetchingFailed(const QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
struct qt_meta_stringdata_mapviz__SelectServiceDialog_t {
    QByteArrayData data[8];
    char stringdata0[135];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz__SelectServiceDialog_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz__SelectServiceDialog_t qt_meta_stringdata_mapviz__SelectServiceDialog = {
    {
QT_MOC_LITERAL(0, 0, 27), // "mapviz::SelectServiceDialog"
QT_MOC_LITERAL(1, 28, 13), // "fetchServices"
QT_MOC_LITERAL(2, 42, 0), // ""
QT_MOC_LITERAL(3, 43, 23), // "updateDisplayedServices"
QT_MOC_LITERAL(4, 67, 19), // "updateKnownServices"
QT_MOC_LITERAL(5, 87, 19), // "ServiceStringVector"
QT_MOC_LITERAL(6, 107, 8), // "services"
QT_MOC_LITERAL(7, 116, 18) // "displayUpdateError"

    },
    "mapviz::SelectServiceDialog\0fetchServices\0"
    "\0updateDisplayedServices\0updateKnownServices\0"
    "ServiceStringVector\0services\0"
    "displayUpdateError"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz__SelectServiceDialog[] = {

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
       1,    0,   34,    2, 0x08 /* Private */,
       3,    0,   35,    2, 0x08 /* Private */,
       4,    1,   36,    2, 0x08 /* Private */,
       7,    1,   39,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 5,    6,
    QMetaType::Void, QMetaType::QString,    2,

       0        // eod
};

void mapviz::SelectServiceDialog::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        SelectServiceDialog *_t = static_cast<SelectServiceDialog *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->fetchServices(); break;
        case 1: _t->updateDisplayedServices(); break;
        case 2: _t->updateKnownServices((*reinterpret_cast< ServiceStringVector(*)>(_a[1]))); break;
        case 3: _t->displayUpdateError((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 2:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< ServiceStringVector >(); break;
            }
            break;
        }
    }
}

const QMetaObject mapviz::SelectServiceDialog::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_mapviz__SelectServiceDialog.data,
      qt_meta_data_mapviz__SelectServiceDialog,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz::SelectServiceDialog::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz::SelectServiceDialog::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz__SelectServiceDialog.stringdata0))
        return static_cast<void*>(this);
    return QDialog::qt_metacast(_clname);
}

int mapviz::SelectServiceDialog::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
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
QT_WARNING_POP
QT_END_MOC_NAMESPACE
