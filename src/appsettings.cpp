/* Copyright (c) 2013 BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include "appsettings.h"
#include <QCoreApplication>
#include <QDebug>
#include <QSettings>

// Setting default values.
const int AppSettings::defaultLongBack(30);
const int AppSettings::defaultLongNext(30);
const int AppSettings::defaultBack(5);
const int AppSettings::defaultNext(5);
const int AppSettings::defaultLsec(3000);
const QString AppSettings::defaultText("");
const QString AppSettings::defaultPath("");
const QString AppSettings::defaultUrl("urlx0");
const QString AppSettings::defaultusec("ssss0");
const bool AppSettings::defaultVora(true);

// Settings keys.

const QString AppSettings::LONG_BACK_KEY("longBack");
const QString AppSettings::BACK_KEY("back");
const QString AppSettings::LONG_NEXT_KEY("longNext");
const QString AppSettings::NEXT_KEY("next");
const QString AppSettings::TEXT_KEY("text");
const QString AppSettings::PATH_KEY("path");
const QString AppSettings::URL_KEY("url");
const QString AppSettings::USEC_KEY("usec");
const QString AppSettings::LSEC_KEY("lsec");
const QString AppSettings::VORA_KEY("vora");



AppSettings::AppSettings(QObject* parent) : QObject(parent)

{
    // Set up the QSettings object for the application with organization and application name.
    QCoreApplication::setOrganizationName("zead");
    QCoreApplication::setApplicationName("Transcriber Settings");

    // Load the values from QSettings or set as the default values if not yet set.

    //mPowerDivert =QSettings().value(STARSHIP_POWERDIVERT_KEY, mDefaultPowerDivert).toInt();
    //mUranuscanner = QSettings().value(STARSHIP_URANUSSCANNER_KEY, mDefaultUranusscanner).toBool();
    //mWarpDriveSpeedScanner = QSettings().value(STARSHIP_WARPDRIVESPEEDSCANNER_KEY, mDefaultWarpDriveSpeedScanner).toFloat();

    mLongBack=QSettings().value(LONG_BACK_KEY, defaultLongBack).toInt();
    mBack=QSettings().value(BACK_KEY, defaultBack).toInt();
    mNext=QSettings().value(NEXT_KEY, defaultNext).toInt();
    mLongNext=QSettings().value(LONG_NEXT_KEY, defaultLongNext).toInt();
    mylsec=QSettings().value(LSEC_KEY, defaultLsec).toInt();

    myText=QSettings().value(TEXT_KEY, defaultText).toString();
    myPath=QSettings().value(PATH_KEY, defaultPath).toString();
    myUrl=QSettings().value(URL_KEY, defaultUrl).toString();
    myusec=QSettings().value(USEC_KEY, defaultusec).toString();
    myVora = QSettings().value(VORA_KEY, defaultVora).toBool();
}

int AppSettings::longBack() const
{
    return mLongBack;
}

bool AppSettings::vora() const
{
    return myVora;
}

int AppSettings::back() const
{
    return mBack;
}

int AppSettings::next() const
{
    return mNext;
}

int AppSettings::longNext() const
{
    return mLongNext;
}

int AppSettings::lsec() const
{
    return mylsec;
}

QString AppSettings::readAreaText() const
{
    return myText;
}

QString AppSettings::readFilePath() const
{
    return myPath;
}

QString AppSettings::readUrlPath() const
{
    return myUrl;
}

QString AppSettings::usec() const
{
    return myusec;
}

void AppSettings::setLongBack(int newValue)
{
    if (mLongBack != newValue) {
        QSettings().setValue(LONG_BACK_KEY, newValue);
        mLongBack = newValue;
        emit longBackChanged(newValue);
    }
}

void AppSettings::setVora(bool asd)
{
    if (myVora != asd) {
        QSettings().setValue(VORA_KEY, asd);
        myVora = asd;
        emit voraChanged(asd);
    }
}

void AppSettings::setBack(int newValue)
{
    if (mBack != newValue) {
        QSettings().setValue(BACK_KEY, newValue);
        mBack = newValue;
        emit backChanged(newValue);
    }
}

void AppSettings::setLongNext(int newValue)
{
    if (mLongNext != newValue){
        QSettings().setValue(LONG_NEXT_KEY, newValue);
        mLongNext = newValue;
        emit longNextChanged(newValue);
    }
}

void AppSettings::setNext(int newValue)
{
    if (mNext != newValue) {
        QSettings().setValue(NEXT_KEY, newValue);
        mNext = newValue;
        emit nextChanged(newValue);
    }
}

void AppSettings::setLsec(int newValue)
{
    if (mylsec != newValue) {
        QSettings().setValue(LSEC_KEY, newValue);
        mylsec = newValue;
        emit lsecChanged(newValue);
    }
}

void AppSettings::setAreaText(QString s)
{
    QSettings().setValue(TEXT_KEY, s);
        myText = s;
        emit areaTextChanged(s);
}

void AppSettings::setFilePath(QString s)
{
    QSettings().setValue(PATH_KEY, s);
        myPath = s;
        emit filePathChanged(s);
}

void AppSettings::setUrlPath(QString s)
{
    QSettings().setValue(URL_KEY, s);
        myUrl = s;
        emit urlPathChanged(s);
}

void AppSettings::setUsec(QString s)
{
    QSettings().setValue(USEC_KEY, s);
        myusec = s;
        emit usecChanged(s);
}


/*
 *
 *
 * void AppSettings::setPowerDivert(int powerDivert)
{
    if(mPowerDivert != powerDivert) {
        QSettings().setValue(STARSHIP_POWERDIVERT_KEY, powerDivert);
        mPowerDivert = powerDivert;
        emit gravityChanged(powerDivert);
    }
}

void AppSettings::setUranuscanner(bool uranuscanner)
{
    if (mUranuscanner != uranuscanner) {
        QSettings().setValue(STARSHIP_URANUSSCANNER_KEY, uranuscanner);
        mUranuscanner = uranuscanner;
        emit uranuscannerChanged(uranuscanner);
    }
}

void AppSettings::setWarpDriveSpeedScanner(float warpDriveSpeedScanner)
{
    if (mWarpDriveSpeedScanner != warpDriveSpeedScanner) {
        QSettings().setValue(STARSHIP_WARPDRIVESPEEDSCANNER_KEY, QVariant(warpDriveSpeedScanner));
        mWarpDriveSpeedScanner = warpDriveSpeedScanner;
        emit warpDriveSpeedScannerChanged(warpDriveSpeedScanner);
    }
}
 *
 */

