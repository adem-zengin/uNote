
#include "encode.hpp"

#include <bb/system/InvokeRequest>
#include <bb/cascades/Application>
#include <bb/system/Clipboard>
#include <bb/system/SystemToast>

using namespace bb::cascades;
using namespace bb::system;

//! [0]
encode::encode(QObject *parent) :
		QObject(parent), m_invokeManager(new InvokeManager(this)) {

}
//! [0]
QByteArray encode::encodeQString(QString toEncode) {
    return toEncode.toUtf8();
}

void encode::copyText(QString text)
{
     bb::system::Clipboard clipboard;
     clipboard.clear();
     clipboard.insert("text/plain", encodeQString(text));
     bb::system::SystemToast *toast = new SystemToast(this);
         // feel free to change the message below to whatever you need.
     toast->setBody("Copied to clipboard");
     toast->show();
}

QString encode::copyYou()
{
     bb::system::Clipboard clipboard;
     return clipboard.value("text/plain");
}

