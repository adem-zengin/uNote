/*
 * Keyboard.h
 *
 *  Created on: 20 Mar 2013
 *      Author: Stephen
 */

#ifndef KEYBOARD_H_
#define KEYBOARD_H_

#include <QObject>

class Keyboard: public QObject {

    Q_OBJECT

public:
    Keyboard();
    virtual ~Keyboard();

    Q_INVOKABLE void show();
    Q_INVOKABLE void hide();

};

#endif /* KEYBOARD_H_ */
