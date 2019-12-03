void setup() {
    // put your setup code here, to run once:
    Serial1.begin(9600);
    Serial.begin(9600);
}
int i=3;
void loop() {
    // put your main code here, to run repeatedly:
    Serial1.write(i);
    delay(10);
    if(Serial.available())
    {
        double x=Serial.read();
        Serial.println(sin(x/20));
    }
    if(i>=31415926)
    {
        i=3;
    }
    i=i+1;
}
