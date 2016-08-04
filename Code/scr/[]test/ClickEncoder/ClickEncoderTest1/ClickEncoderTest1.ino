#include <ClickEncoder.h>
#include <TimerOne.h>

#define ENC_DECODER (1 << 2)
#define ENC_HALFSTEP

const byte LedPin = 13;


ClickEncoder *encoder;
int16_t last, value;

void timerIsr() {
  static uint8_t bit = digitalPinToBitMask(LedPin);
  static volatile uint8_t *reg = portModeRegister(digitalPinToPort(LedPin));
  static volatile uint8_t *out = portOutputRegister(digitalPinToPort(LedPin));
  static byte counter = 0;
  
  if(counter == 0){
    *out |= bit;
    //digitalWrite(LedPin, HIGH);
  }
  else if(counter == 1){
    *out &= ~bit;
  }
  
  counter++;
  if(counter == 9){
    counter = 0;
  }
  
  encoder->service();
}

void displayAccelerationStatus() {
  Serial.print("Acceleration ");
  Serial.print(encoder->getAccelerationEnabled() ? "on " : "off");
}

void setup() {
  Serial.begin(115200);
  encoder = new ClickEncoder(A0, A1, A2);

  displayAccelerationStatus();

  Timer1.initialize(1000);
  Timer1.attachInterrupt(timerIsr); 
  
  last = -1;
  
  pinMode(LedPin, OUTPUT);
}

void loop() {  
  value += encoder->getValue();
  
  if (value != last) {
    last = value;
    Serial.print("Encoder Value: ");
    Serial.println(value);
  }
  
  ClickEncoder::Button b = encoder->getButton();
  if (b != ClickEncoder::Open) {
    Serial.print("Button: ");
    #define VERBOSECASE(label) case label: Serial.println(#label); break;
    switch (b) {
      VERBOSECASE(ClickEncoder::Pressed);
      VERBOSECASE(ClickEncoder::Held)
      VERBOSECASE(ClickEncoder::Released)
      VERBOSECASE(ClickEncoder::Clicked)
      case ClickEncoder::DoubleClicked:
          Serial.println("ClickEncoder::DoubleClicked");
          encoder->setAccelerationEnabled(!encoder->getAccelerationEnabled());
          Serial.print("  Acceleration is ");
          Serial.println((encoder->getAccelerationEnabled()) ? "enabled" : "disabled");
        break;
    }
  }    
}

