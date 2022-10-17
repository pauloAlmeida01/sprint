#include "DHT.h"
#define dht_type DHT11 //define qual o tipo de sensor DHTxx que se está
/**
* Configurações iniciais sobre os sensores
* DHT11, LM35, LDR5 e TCRT5000
*/
int dht_pin = A2;
DHT dht_1 = DHT(dht_pin, dht_type); //pode-se configurar diversos
int lm35_pin = A0, leitura_lm35 = 0;
float temperatura;
int ldr_pin = A5, leitura_ldr = 0;
int switch_pin = 7;

void setup()
{
Serial.begin(9600);
dht_1.begin();
pinMode(switch_pin, INPUT);
}
void loop()
{
/**
* Bloco do DHT11
*/
float umidade = dht_1.readHumidity();
float umidadeProjeto = 1.8*umidade-73.6;
float u2 = umidadeProjeto*1.10;
float u3 = umidadeProjeto*1.15;
float u4 = umidadeProjeto*1.05;
float u5 = umidadeProjeto*1.20;

float temperatura = dht_1.readTemperature();
float temperaturaProjeto = 1.9*temperatura-27.68;
float t2 = temperatura*1.10;
float t3 = temperatura*0.95;
float t4 = temperatura+1.25;
float t5 = temperatura*1.15;


if (isnan(temperatura) or isnan(umidade))
{
Serial.println("Erro ao ler o DHT");
}
else
{


Serial.print(umidadeProjeto);
Serial.print(";");
Serial.print(u2);
Serial.print(";");
Serial.print(u3);
Serial.print(";");
Serial.print(u4);
Serial.print(";");
Serial.print(u5);
Serial.println(";");

Serial.println(temperatura);
Serial.print(";");
Serial.println(t2);
Serial.print(";");
Serial.println(t3);
Serial.print(";");
Serial.println(t4);
Serial.print(";");
Serial.println(t5);
Serial.print(";");



delay(2000);

}
/**

/**
* Bloco do LM35
*/
leitura_lm35 = analogRead(lm35_pin);
temperatura = leitura_lm35 * (5.0/1023) * 100;
Serial.print(temperatura);
Serial.print(";");
/**
* Bloco do LDR5
*/
leitura_ldr = analogRead(ldr_pin);
Serial.print(leitura_ldr);
Serial.print(";");

/**
* Bloco do TCRT5000
*/
if(digitalRead(switch_pin) == LOW){
Serial.println(1);
}
else {
Serial.println(0);
}
delay(2000);


}