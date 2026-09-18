/****************************************************************************
** Meta object code from reading C++ file 'encode.hpp'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/encode.hpp"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'encode.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_encode[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: signature, parameters, type, tag, flags
      28,   19,    8,    7, 0x02,
      56,   51,    7,    7, 0x02,
      82,    7,   74,    7, 0x02,

       0        // eod
};

static const char qt_meta_stringdata_encode[] = {
    "encode\0\0QByteArray\0toEncode\0"
    "encodeQString(QString)\0text\0"
    "copyText(QString)\0QString\0copyYou()\0"
};

void encode::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        encode *_t = static_cast<encode *>(_o);
        switch (_id) {
        case 0: { QByteArray _r = _t->encodeQString((*reinterpret_cast< QString(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< QByteArray*>(_a[0]) = _r; }  break;
        case 1: _t->copyText((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 2: { QString _r = _t->copyYou();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = _r; }  break;
        default: ;
        }
    }
}

const QMetaObjectExtraData encode::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject encode::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_encode,
      qt_meta_data_encode, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &encode::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *encode::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *encode::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_encode))
        return static_cast<void*>(const_cast< encode*>(this));
    return QObject::qt_metacast(_clname);
}

int encode::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
