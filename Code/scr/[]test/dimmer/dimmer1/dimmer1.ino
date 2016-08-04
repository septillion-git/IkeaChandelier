/**
 * Arduino Fade example using an AC lamp.
 *
 * Copyright (c) 2016 Circuitar
 * This software is released under the MIT license. See the attached LICENSE file for details.
 */

#include "Dimmer.h"

//Dimmer dimmer(4, DIMMER_RAMP, 10, 50);
Dimmer dimmer(4, DIMMER_NORMAL);

void setup() {
  dimmer.begin();
  
  pinMode(13, OUTPUT);
  
  Serial.begin(115200);
}

void loop() {
  /*
  dimmer.set(100);
  digitalWrite(13, HIGH);
  delay(15000);
  dimmer.set(0);
    digitalWrite(13, LOW);
  delay(15000);
  */
  
  byte value = map(analogRead(A7), 0, 1023, 0, 100);
  dimmer.set(value);
  Serial.println(value);
  delay(100);
}
