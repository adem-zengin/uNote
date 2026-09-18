/****************************************************************************
** Meta object code from reading C++ file 'appsettings.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/appsettings.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'appsettings.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_AppSettings[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      20,   14, // methods
      10,  114, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      10,       // signalCount

 // signals: signature, parameters, type, tag, flags
      22,   13,   12,   12, 0x05,
      43,   13,   12,   12, 0x05,
      64,   13,   12,   12, 0x05,
      81,   13,   12,   12, 0x05,
      98,   13,   12,   12, 0x05,
     117,  115,   12,   12, 0x05,
     138,  115,   12,   12, 0x05,
     163,  115,   12,   12, 0x05,
     188,  115,   12,   12, 0x05,
     216,  212,   12,   12, 0x05,

 // slots: signature, parameters, type, tag, flags
     234,   13,   12,   12, 0x0a,
     251,   13,   12,   12, 0x0a,
     268,   13,   12,   12, 0x0a,
     281,   13,   12,   12, 0x0a,
     294,   13,   12,   12, 0x0a,
     307,  115,   12,   12, 0x0a,
     324,  115,   12,   12, 0x0a,
     345,  115,   12,   12, 0x0a,
     366,  115,   12,   12, 0x0a,
     386,  212,   12,   12, 0x0a,

 // properties: name, type, flags
     404,  400, 0x02495903,
     413,  400, 0x02495903,
     418,  400, 0x02495903,
     427,  400, 0x02495903,
     440,  432, 0x0a495903,
     449,  432, 0x0a495903,
     458,  432, 0x0a495903,
     466,  432, 0x0a495903,
     471,  400, 0x02495903,
     481,  476, 0x01495903,

 // properties: notify_signal_id
       0,
       2,
       1,
       3,
       6,
       7,
       8,
       5,
       4,
       9,

       0        // eod
};

static const char qt_meta_stringdata_AppSettings[] = {
    "AppSettings\0\0newValue\0longBackChanged(int)\0"
    "longNextChanged(int)\0backChanged(int)\0"
    "nextChanged(int)\0lsecChanged(int)\0s\0"
    "usecChanged(QString)\0areaTextChanged(QString)\0"
    "filePathChanged(QString)\0"
    "urlPathChanged(QString)\0asd\0"
    "voraChanged(bool)\0setLongBack(int)\0"
    "setLongNext(int)\0setBack(int)\0"
    "setNext(int)\0setLsec(int)\0setUsec(QString)\0"
    "setAreaText(QString)\0setFilePath(QString)\0"
    "setUrlPath(QString)\0setVora(bool)\0int\0"
    "longBack\0back\0longNext\0next\0QString\0"
    "areaText\0filePath\0urlPath\0usec\0lsec\0"
    "bool\0vora\0"
};

void AppSettings::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        AppSettings *_t = static_cast<AppSettings *>(_o);
        switch (_id) {
        case 0: _t->longBackChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->longNextChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->backChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->nextChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 4: _t->lsecChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 5: _t->usecChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 6: _t->areaTextChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 7: _t->filePathChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 8: _t->urlPathChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 9: _t->voraChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 10: _t->setLongBack((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 11: _t->setLongNext((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 12: _t->setBack((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 13: _t->setNext((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 14: _t->setLsec((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 15: _t->setUsec((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 16: _t->setAreaText((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 17: _t->setFilePath((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 18: _t->setUrlPath((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 19: _t->setVora((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData AppSettings::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject AppSettings::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_AppSettings,
      qt_meta_data_AppSettings, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &AppSettings::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *AppSettings::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *AppSettings::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_AppSettings))
        return static_cast<void*>(const_cast< AppSettings*>(this));
    return QObject::qt_metacast(_clname);
}

int AppSettings::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 20)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 20;
    }
#ifndef QT_NO_PROPERTIES
      else if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< int*>(_v) = longBack(); break;
        case 1: *reinterpret_cast< int*>(_v) = back(); break;
        case 2: *reinterpret_cast< int*>(_v) = longNext(); break;
        case 3: *reinterpret_cast< int*>(_v) = next(); break;
        case 4: *reinterpret_cast< QString*>(_v) = readAreaText(); break;
        case 5: *reinterpret_cast< QString*>(_v) = readFilePath(); break;
        case 6: *reinterpret_cast< QString*>(_v) = readUrlPath(); break;
        case 7: *reinterpret_cast< QString*>(_v) = usec(); break;
        case 8: *reinterpret_cast< int*>(_v) = lsec(); break;
        case 9: *reinterpret_cast< bool*>(_v) = vora(); break;
        }
        _id -= 10;
    } else if (_c == QMetaObject::WriteProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: setLongBack(*reinterpret_cast< int*>(_v)); break;
        case 1: setBack(*reinterpret_cast< int*>(_v)); break;
        case 2: setLongNext(*reinterpret_cast< int*>(_v)); break;
        case 3: setNext(*reinterpret_cast< int*>(_v)); break;
        case 4: setAreaText(*reinterpret_cast< QString*>(_v)); break;
        case 5: setFilePath(*reinterpret_cast< QString*>(_v)); break;
        case 6: setUrlPath(*reinterpret_cast< QString*>(_v)); break;
        case 7: setUsec(*reinterpret_cast< QString*>(_v)); break;
        case 8: setLsec(*reinterpret_cast< int*>(_v)); break;
        case 9: setVora(*reinterpret_cast< bool*>(_v)); break;
        }
        _id -= 10;
    } else if (_c == QMetaObject::ResetProperty) {
        _id -= 10;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 10;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 10;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 10;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 10;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 10;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void AppSettings::longBackChanged(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void AppSettings::longNextChanged(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void AppSettings::backChanged(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void AppSettings::nextChanged(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void AppSettings::lsecChanged(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void AppSettings::usecChanged(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void AppSettings::areaTextChanged(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void AppSettings::filePathChanged(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}

// SIGNAL 8
void AppSettings::urlPathChanged(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 8, _a);
}

// SIGNAL 9
void AppSettings::voraChanged(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 9, _a);
}
QT_END_MOC_NAMESPACE
