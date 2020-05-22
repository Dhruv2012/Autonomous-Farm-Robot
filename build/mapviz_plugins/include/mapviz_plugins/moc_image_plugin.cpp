/****************************************************************************
** Meta object code from reading C++ file 'image_plugin.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz_plugins/include/mapviz_plugins/image_plugin.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'image_plugin.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz_plugins__ImagePlugin_t {
    QByteArrayData data[22];
    char stringdata0[230];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz_plugins__ImagePlugin_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz_plugins__ImagePlugin_t qt_meta_stringdata_mapviz_plugins__ImagePlugin = {
    {
QT_MOC_LITERAL(0, 0, 27), // "mapviz_plugins::ImagePlugin"
QT_MOC_LITERAL(1, 28, 11), // "Resubscribe"
QT_MOC_LITERAL(2, 40, 0), // ""
QT_MOC_LITERAL(3, 41, 11), // "SelectTopic"
QT_MOC_LITERAL(4, 53, 11), // "TopicEdited"
QT_MOC_LITERAL(5, 65, 9), // "SetAnchor"
QT_MOC_LITERAL(6, 75, 6), // "anchor"
QT_MOC_LITERAL(7, 82, 8), // "SetUnits"
QT_MOC_LITERAL(8, 91, 5), // "units"
QT_MOC_LITERAL(9, 97, 10), // "SetOffsetX"
QT_MOC_LITERAL(10, 108, 6), // "offset"
QT_MOC_LITERAL(11, 115, 10), // "SetOffsetY"
QT_MOC_LITERAL(12, 126, 8), // "SetWidth"
QT_MOC_LITERAL(13, 135, 5), // "width"
QT_MOC_LITERAL(14, 141, 9), // "SetHeight"
QT_MOC_LITERAL(15, 151, 6), // "height"
QT_MOC_LITERAL(16, 158, 15), // "SetSubscription"
QT_MOC_LITERAL(17, 174, 7), // "visible"
QT_MOC_LITERAL(18, 182, 12), // "SetTransport"
QT_MOC_LITERAL(19, 195, 9), // "transport"
QT_MOC_LITERAL(20, 205, 16), // "KeepRatioChanged"
QT_MOC_LITERAL(21, 222, 7) // "checked"

    },
    "mapviz_plugins::ImagePlugin\0Resubscribe\0"
    "\0SelectTopic\0TopicEdited\0SetAnchor\0"
    "anchor\0SetUnits\0units\0SetOffsetX\0"
    "offset\0SetOffsetY\0SetWidth\0width\0"
    "SetHeight\0height\0SetSubscription\0"
    "visible\0SetTransport\0transport\0"
    "KeepRatioChanged\0checked"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz_plugins__ImagePlugin[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   74,    2, 0x0a /* Public */,
       3,    0,   75,    2, 0x09 /* Protected */,
       4,    0,   76,    2, 0x09 /* Protected */,
       5,    1,   77,    2, 0x09 /* Protected */,
       7,    1,   80,    2, 0x09 /* Protected */,
       9,    1,   83,    2, 0x09 /* Protected */,
      11,    1,   86,    2, 0x09 /* Protected */,
      12,    1,   89,    2, 0x09 /* Protected */,
      14,    1,   92,    2, 0x09 /* Protected */,
      16,    1,   95,    2, 0x09 /* Protected */,
      18,    1,   98,    2, 0x09 /* Protected */,
      20,    1,  101,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    6,
    QMetaType::Void, QMetaType::QString,    8,
    QMetaType::Void, QMetaType::Int,   10,
    QMetaType::Void, QMetaType::Int,   10,
    QMetaType::Void, QMetaType::Double,   13,
    QMetaType::Void, QMetaType::Double,   15,
    QMetaType::Void, QMetaType::Bool,   17,
    QMetaType::Void, QMetaType::QString,   19,
    QMetaType::Void, QMetaType::Bool,   21,

       0        // eod
};

void mapviz_plugins::ImagePlugin::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        ImagePlugin *_t = static_cast<ImagePlugin *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->Resubscribe(); break;
        case 1: _t->SelectTopic(); break;
        case 2: _t->TopicEdited(); break;
        case 3: _t->SetAnchor((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 4: _t->SetUnits((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 5: _t->SetOffsetX((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->SetOffsetY((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 7: _t->SetWidth((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 8: _t->SetHeight((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 9: _t->SetSubscription((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 10: _t->SetTransport((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 11: _t->KeepRatioChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject mapviz_plugins::ImagePlugin::staticMetaObject = {
    { &mapviz::MapvizPlugin::staticMetaObject, qt_meta_stringdata_mapviz_plugins__ImagePlugin.data,
      qt_meta_data_mapviz_plugins__ImagePlugin,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz_plugins::ImagePlugin::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz_plugins::ImagePlugin::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz_plugins__ImagePlugin.stringdata0))
        return static_cast<void*>(this);
    return mapviz::MapvizPlugin::qt_metacast(_clname);
}

int mapviz_plugins::ImagePlugin::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = mapviz::MapvizPlugin::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 12)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 12;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
