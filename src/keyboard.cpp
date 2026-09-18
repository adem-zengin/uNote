/*
 * keyboard.cpp
 *
 *  Created on: 20 Apr 2015
 *      Author: acerY
 */


#include "Keyboard.h"

#include <bps/virtualkeyboard.h>

Keyboard::Keyboard() {
    // TODO Auto-generated constructor stub

}

Keyboard::~Keyboard() {
    // TODO Auto-generated destructor stub
}

void Keyboard::show() {
    virtualkeyboard_show();
}

void Keyboard::hide() {
    virtualkeyboard_hide();
}


