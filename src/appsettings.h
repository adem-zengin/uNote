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
#ifndef APPSETTINGS_H_
#define APPSETTINGS_H_

#include <QObject>
#include <QVariantMap>
#include <QUrl>

/**
 * AppSettings Description
 *
 * This class handles application wide settings that persist between runs.
 */
class AppSettings: public QObject
{
    Q_OBJECT

    /**
     * The gravity property stores the setting for if the starship gravity should be on or off.
     */
    //Q_PROPERTY(bool gravity READ gravity WRITE setGravity NOTIFY gravityChanged FINAL)

    /**
     * The powerDivert property tells where to divert power to (hyperdrive = 0 and sauna = 1).
     */
    Q_PROPERTY(int longBack READ longBack WRITE setLongBack NOTIFY longBackChanged FINAL)
    Q_PROPERTY(int back READ back WRITE setBack NOTIFY backChanged FINAL)
    Q_PROPERTY(int longNext READ longNext WRITE setLongNext NOTIFY longNextChanged FINAL)
    Q_PROPERTY(int next READ next WRITE setNext NOTIFY nextChanged FINAL)
    Q_PROPERTY(QString areaText READ readAreaText WRITE setAreaText NOTIFY areaTextChanged FINAL)
    Q_PROPERTY(QString filePath READ readFilePath WRITE setFilePath NOTIFY filePathChanged FINAL)
    Q_PROPERTY(QString urlPath READ readUrlPath WRITE setUrlPath NOTIFY urlPathChanged FINAL)

    Q_PROPERTY(QString usec READ usec WRITE setUsec NOTIFY usecChanged FINAL)

    Q_PROPERTY(int lsec READ lsec WRITE setLsec NOTIFY lsecChanged FINAL)

    /**
     * The uranuscanner property used to store if scanning for Uranus or not.
     */
    Q_PROPERTY(bool vora READ vora WRITE setVora NOTIFY voraChanged FINAL)

    /**
     * This property contain the current setting of the warp drive.
     */
    //Q_PROPERTY(float warpDriveSpeedScanner READ warpDriveSpeedScanner WRITE setWarpDriveSpeedScanner NOTIFY warpDriveSpeedScannerChanged)

public:
    AppSettings(QObject *parent = 0);

    /**
     * The gravity setting in the starship.
     *
     * @return True if gravity is on otherwise False
     */
    bool vora() const;

    /**
     * The warp drive scanner setting.
     * @return A float representing the current setting of the warp engine.
     */
    int longBack() const;
    int back() const;
    int longNext() const;
    int next() const;
    int lsec() const;
    QString usec() const;
    QString readAreaText() const;
    QString readFilePath() const;
    QString readUrlPath() const;



    /**
     * The Uranus scanner.
     * @return True if the scanner is on otherwise False
     */
    //bool uranuscanner() const;

    /**
     * The warp drive scanner setting.
     * @return A float representing the current setting of the warp engine.
     */
    //float warpDriveSpeedScanner() const;

public slots:

    /**
     * Sets the gravity setting to on or off.
     * @param gravity The new value of the gravity setting.
     */
    void setLongBack(int newValue);
    void setLongNext(int newValue);
    void setBack(int newValue);
    void setNext(int newValue);
    void setLsec(int newValue);
    void setUsec(QString s);

    void setAreaText (QString s);
    void setFilePath (QString s);
    void setUrlPath (QString s);
    /**
     * Sets where to divert power, and index that is interpreted by the application.
     * @param powerDivert The new value of the powerDivert.
     */
    //void setPowerDivert(int powerDivert);

    /**
     * Sets the scanner to be on or off.
     * @param uranuscanner The new value of the scanner.
     */
    void setVora(bool asd);

    /**
     * Sets the current warp speed.
     * @param warpDriveSpeedScanner The current speed ranging from 0-1
     */
    //void setWarpDriveSpeedScanner(float warpDriveSpeedScanner);

signals:

    /**
     * @brief Signal emitted when the value where to divert power to changes.
     * @param powerDivert The new value of the powerDivert.
     */
    void longBackChanged(int newValue);
    void longNextChanged(int newValue);
    void backChanged(int newValue);
    void nextChanged(int newValue);
    void lsecChanged(int newValue);
    void usecChanged(QString s);
    void areaTextChanged(QString s);
    void filePathChanged(QString s);
    void urlPathChanged(QString s);

    /**
     * @brief Signal emitted when the gravity setting changes.
     * @param gravity The new value of the gravity setting.
     */
    void voraChanged(bool asd);

    /**
     * @brief Signal emitted when the scanner is turned on and off.
     * @param uranuscanner The new value of the scanner setting.
     */
    //void uranuscannerChanged(bool uranuscanner);

    /**
     * @brief Signal emitted when the speed is altered.
     * @param warpDriveSpeedScanner The new speed.
     */
    //void warpDriveSpeedScannerChanged(float warpDriveSpeedScanner);

private:
    /**
     * Default values for properties
     */
    static const int defaultLongBack;
    static const int defaultLongNext;
    static const int defaultBack;
    static const int defaultNext;
    static const int defaultLsec;
    static const QString defaultText;
    static const QString defaultPath;
    static const QString defaultUrl;
    static const QString defaultusec;
    //static const int mDefaultPowerDivert;
    static const bool defaultVora;
    //static const float mDefaultWarpDriveSpeedScanner;

    /**
     * The keys where the properties are stored in the QSettings object.
     */
    static const QString LONG_BACK_KEY;
    static const QString BACK_KEY;
    static const QString LONG_NEXT_KEY;
    static const QString NEXT_KEY;
    static const QString TEXT_KEY;
    static const QString PATH_KEY;
    static const QString URL_KEY;
    static const QString USEC_KEY;
    static const QString LSEC_KEY;
    static const QString VORA_KEY;



    /**
     * The property variables.
     */
    int mLongBack;
    int mBack;
    int mNext;
    int mLongNext;
    int mylsec;
    QString myText;
    QString myPath;
    QString myUrl;
    QString myusec;
    bool myVora;
};

#endif /* APPSETTINGS_H_ */
