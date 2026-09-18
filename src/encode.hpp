
#ifndef ENCODE_HPP
#define ENCODE_HPP

#include <QObject>
#include <bb/system/InvokeManager>

namespace bb {
namespace system {
class InvokeManager;
}
}

//! [0]
class encode : public QObject
{
    Q_OBJECT

public:
    // Creates a new SocialInvocation object with the given @p parent object
    encode(QObject *parent = 0);

    // Converts the passed QString to an UTF-8 encoded QByteArray
    Q_INVOKABLE QByteArray encodeQString(QString toEncode);

    Q_INVOKABLE void copyText(QString text);

    Q_INVOKABLE QString copyYou();



private:
    // The central object to manage invocations
    bb::system::InvokeManager* m_invokeManager;
};
//! [0]

#endif
