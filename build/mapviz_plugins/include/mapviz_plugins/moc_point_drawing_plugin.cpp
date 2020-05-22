/****************************************************************************
** Meta object code from reading C++ file 'point_drawing_plugin.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/mapviz_plugins/include/mapviz_plugins/point_drawing_plugin.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'point_drawing_plugin.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_mapviz_plugins__PointDrawingPlugin_t {
    QByteArrayData data[21];
    char stringdata0[290];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapviz_plugins__PointDrawingPlugin_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapviz_plugins__PointDrawingPlugin_t qt_meta_stringdata_mapviz_plugins__PointDrawingPlugin = {
    {
QT_MOC_LITERAL(0, 0, 34), // "mapviz_plugins::PointDrawingP..."
QT_MOC_LITERAL(1, 35, 17), // "BufferSizeChanged"
QT_MOC_LITERAL(2, 53, 0), // ""
QT_MOC_LITERAL(3, 54, 5), // "value"
QT_MOC_LITERAL(4, 60, 8), // "DrawIcon"
QT_MOC_LITERAL(5, 69, 8), // "SetColor"
QT_MOC_LITERAL(6, 78, 5), // "color"
QT_MOC_LITERAL(7, 84, 12), // "SetDrawStyle"
QT_MOC_LITERAL(8, 97, 5), // "style"
QT_MOC_LITERAL(9, 103, 9), // "DrawStyle"
QT_MOC_LITERAL(10, 113, 19), // "SetStaticArrowSizes"
QT_MOC_LITERAL(11, 133, 9), // "isChecked"
QT_MOC_LITERAL(12, 143, 12), // "SetArrowSize"
QT_MOC_LITERAL(13, 156, 9), // "arrowSize"
QT_MOC_LITERAL(14, 166, 24), // "PositionToleranceChanged"
QT_MOC_LITERAL(15, 191, 10), // "LapToggled"
QT_MOC_LITERAL(16, 202, 7), // "checked"
QT_MOC_LITERAL(17, 210, 18), // "CovariancedToggled"
QT_MOC_LITERAL(18, 229, 25), // "ShowAllCovariancesToggled"
QT_MOC_LITERAL(19, 255, 22), // "ResetTransformedPoints"
QT_MOC_LITERAL(20, 278, 11) // "ClearPoints"

    },
    "mapviz_plugins::PointDrawingPlugin\0"
    "BufferSizeChanged\0\0value\0DrawIcon\0"
    "SetColor\0color\0SetDrawStyle\0style\0"
    "DrawStyle\0SetStaticArrowSizes\0isChecked\0"
    "SetArrowSize\0arrowSize\0PositionToleranceChanged\0"
    "LapToggled\0checked\0CovariancedToggled\0"
    "ShowAllCovariancesToggled\0"
    "ResetTransformedPoints\0ClearPoints"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapviz_plugins__PointDrawingPlugin[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      13,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   79,    2, 0x09 /* Protected */,
       4,    0,   82,    2, 0x09 /* Protected */,
       5,    1,   83,    2, 0x09 /* Protected */,
       7,    1,   86,    2, 0x09 /* Protected */,
       7,    1,   89,    2, 0x09 /* Protected */,
      10,    1,   92,    2, 0x09 /* Protected */,
      12,    1,   95,    2, 0x09 /* Protected */,
      14,    1,   98,    2, 0x09 /* Protected */,
      15,    1,  101,    2, 0x09 /* Protected */,
      17,    1,  104,    2, 0x09 /* Protected */,
      18,    1,  107,    2, 0x09 /* Protected */,
      19,    0,  110,    2, 0x09 /* Protected */,
      20,    0,  111,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QColor,    6,
    QMetaType::Void, QMetaType::QString,    8,
    QMetaType::Void, 0x80000000 | 9,    8,
    QMetaType::Void, QMetaType::Bool,   11,
    QMetaType::Void, QMetaType::Int,   13,
    QMetaType::Void, QMetaType::Double,    3,
    QMetaType::Void, QMetaType::Bool,   16,
    QMetaType::Void, QMetaType::Bool,   16,
    QMetaType::Void, QMetaType::Bool,   16,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void mapviz_plugins::PointDrawingPlugin::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        PointDrawingPlugin *_t = static_cast<PointDrawingPlugin *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->BufferSizeChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->DrawIcon(); break;
        case 2: _t->SetColor((*reinterpret_cast< const QColor(*)>(_a[1]))); break;
        case 3: _t->SetDrawStyle((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 4: _t->SetDrawStyle((*reinterpret_cast< DrawStyle(*)>(_a[1]))); break;
        case 5: _t->SetStaticArrowSizes((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 6: _t->SetArrowSize((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 7: _t->PositionToleranceChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 8: _t->LapToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 9: _t->CovariancedToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 10: _t->ShowAllCovariancesToggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 11: _t->ResetTransformedPoints(); break;
        case 12: _t->ClearPoints(); break;
        default: ;
        }
    }
}

const QMetaObject mapviz_plugins::PointDrawingPlugin::staticMetaObject = {
    { &mapviz::MapvizPlugin::staticMetaObject, qt_meta_stringdata_mapviz_plugins__PointDrawingPlugin.data,
      qt_meta_data_mapviz_plugins__PointDrawingPlugin,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *mapviz_plugins::PointDrawingPlugin::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapviz_plugins::PointDrawingPlugin::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_mapviz_plugins__PointDrawingPlugin.stringdata0))
        return static_cast<void*>(this);
    return mapviz::MapvizPlugin::qt_metacast(_clname);
}

int mapviz_plugins::PointDrawingPlugin::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = mapviz::MapvizPlugin::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 13)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 13;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 13)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 13;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
