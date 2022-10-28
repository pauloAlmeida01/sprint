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

float temperaturaProjeto = 1.8*temperatura-25.6;
float t2 = temperaturaProjeto*1.10;
float t3 = temperaturaProjeto*0.95;
float t4 = temperaturaProjeto+1.25;
float t5 = temperaturaProjeto*1.15;


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
Serial.print(";");

Serial.print(temperaturaProjeto);
Serial.print(";");
Serial.print(t2);
Serial.print(";");
Serial.print(t3);
Serial.print(";");
Serial.print(t4);
Serial.print(";");
Serial.print(t5);
Serial.println(";");



delay(2000);

}
/**

/**
* Bloco do LM35
*/

/**
* Bloco do LDR5
*/

/**
* Bloco do TCRT5000
*/

}