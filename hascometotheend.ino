/**
 * @file hascometotheend.ino
 * @brief Inteligentna Szkatulka
 * @author by Woziwoda&Walentrzak
 * @date 2020
 */
 
/**
 * @library for TFT LCD screen
 */
#include <TFT_22_ILI9225.h>  
#include "SPI.h"
#include "TFT_22_ILI9225.h"
/**
 * @brief used fonts
 */
#include <../fonts/FreeSans12pt7b.h> 
#include <../fonts/FreeSans24pt7b.h>
#include <../fonts/FreeMono9pt7b.h>
/** 
 *  @brief library for WiFi module
 */
#include <ESP8266WiFi.h> 
#include <ESP8266HTTPClient.h>
#include <MySQL_Connection.h>
#include <MySQL_Cursor.h>

/**
 * @define debug
  */
boolean hasRun = false;
int ida;
row_values *row = NULL;
 /** 
  *  @brief IP of the MySQL server here
  *  
   */
IPAddress server_addr(192,168,8,101);
/**
*@brief  MySQL user login username
*/
char user[] = "roott";

char password[] = "roott"; 
String baza; // database
int licznik=0; // count of own messages waiting to read
// Sample query
char query[128]; //empty query
char query1[] = "SELECT cytat FROM inteligentnaszkatulka.%s where id=%d";
char query3[] = "SELECT kto FROM inteligentnaszkatulka.%s where id=%d";
char query2[] = "SELECT id FROM inteligentnaszkatulka.cytaty_wlasne where odczytane is null order by id desc limit 1";
String cytat; //cytat
String Kto; //Author 
int numerbazy; // number database
WiFiClient client; //client WiFi
MySQL_Connection conn((Client *)&client); //Connection to database
MySQL_Cursor *cur_mem = new MySQL_Cursor(&conn);//cursor mysql
#define USE_SERIAL Serial 
#define SERVER_IP "192.168.8.101" 
#ifndef STASSID
#define STASSID //name of wifi
#define STAPSK  //password
#endif
int light; //numerical value of light
#define TFT_LED D8 //Y 0 if wired to +5V directly
#define TFT_RST D0
#define TFT_RS D2 //Y
#define TFT_CS D3 //Y
#define TFT_SDI D7 //Y MOSI
#define TFT_CLK D5 //Y SCK
#define TFT_BRIGHTNESS 200 // Initial brightness of TFT backlig
#define USE_SERIAL Serial 
int widchar, htchar;    //global variables, width of screen
TFT_22_ILI9225 tft = TFT_22_ILI9225(TFT_RST, TFT_RS, TFT_CS, TFT_LED, TFT_BRIGHTNESS); // pointer do TFT screen
int16_t x=0, y=0, w, h;
volatile boolean a; // check if lid is open
/**
 * 
 * @brief wrap text to next caption, it depents of width of screen and number of letters
 * 
 */
void printwrap(const char *msg, int x, int y) 
    int maxchars = (tft. maxX() - x) / widchar;
    int len = strlen(msg), pos, i;
    char buf[maxchars + 1];
    while (len > 0) {
        pos = 0;
        for (i = 0; i < len && i < maxchars; i++) {
            char c  = msg[i];
            if (c == '\n' || c == ' ') pos = i;
            if (c == '\n') break;
        }
        if (pos == 0) pos = i;   //did not find terminator
        if (i == len) pos = len; //whole string fits
        strncpy(buf, msg, pos);  //copy the portion to print
        buf[pos] = '\0';         //terminate with NUL
        tft.drawGFXText(x,y,buf,COLOR_WHITE); //go use UTFT method
        msg += pos + 1;          //skip the space or linefeed
        len -= pos + 1;          //ditto
        y += htchar;             //perform linefeed
    }
}
/**
 * @brief preparation to work setup
 */
void setup() {
  USE_SERIAL.begin(115200);
  USE_SERIAL.println();
  USE_SERIAL.println();
  USE_SERIAL.println();
  WiFi.begin(STASSID, STAPSK);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    USE_SERIAL.print(".");
  }
  USE_SERIAL.println("");
  USE_SERIAL.print("Connected! IP address: ");
  USE_SERIAL.println(WiFi.localIP());
  Serial.println("DB - Connecting...");
while (conn.connect(server_addr, 3306, user, password) != true) {
delay(500);
Serial.print ( "." );
}
  tft.begin();
  tft.clear();
  pinMode (12, OUTPUT);


    pinMode(LED_BUILTIN, OUTPUT);     // Initialize the LED_BUILTIN pin as an output 
     tft.setOrientation(1);//rotate orientation of screen
  tft.setBackgroundColor(COLOR_BLACK);  
    
    tft.setGFXFont(&FreeMono9pt7b);  // Change font
    widchar = 12;
    htchar = 19;

ida=random(1,11);
numerbazy=random(1,6);
if(numerbazy==1)
baza = "cytaty_milosc";
if(numerbazy==2)
baza = "cytaty_szczescie";
if(numerbazy==3)
baza = "cytaty_smutne";
if(numerbazy==4)
baza = "cytaty_sentencje";
if(numerbazy==5)
baza = "cytaty_przyjazn";
 sprintf(query, query1, baza.c_str(),ida);
cur_mem->execute(query);
  // Fetch the columns (required) but we don't use them.
  column_names *columns = cur_mem->get_columns();
  // Read the row (we are only expecting the one)
  do {
    row = cur_mem->get_next_row();
    if (row != NULL) {
      cytat = row->values[0];
    }
  } while (row != NULL);

}

//czytanie z bazy 
void czytaj(){
  boolean hasRun = true;
  //  row_values *row = NULL;
     cur_mem->execute(query2);
  // Fetch the columns (required) but we don't use them.
  column_names *columns = cur_mem->get_columns();
  // Read the row (we are only expecting the one)
    do {
    row = cur_mem->get_next_row();
    if (row != NULL) {
           licznik=1;
    cytat = row->values[0];
      ida=cytat.toInt();
         } 
    } while (row != NULL);
 if(licznik>0){
    baza="cytaty_wlasne";
    //sprintf(query, up, ida);
 }
else {
  // Deleting the cursor also frees up memory used
 // delete cur_mem;
ida=random(1,10);
numerbazy=random(1,5);
if(numerbazy==1)
baza = "cytaty_milosc";
if(numerbazy==2)
baza = "cytaty_szczescie";
 if(numerbazy==3)
baza = "cytaty_smutne";
if(numerbazy==4)
baza = "cytaty_sentencje";
 if(numerbazy==5)
baza = "cytaty_przyjazn";
}
 sprintf(query, query1, baza.c_str(), ida);
cur_mem->execute(query);
  // Fetch the columns (required) but we don't use them.
columns = cur_mem->get_columns();
  // Read the row (we are only expecting the one)
  do {
    row = cur_mem->get_next_row();
    if (row != NULL) {
      cytat = row->values[0];
    }
  } while (row != NULL);
sprintf(query, query3, baza.c_str(), ida);
cur_mem->execute(query);
  // Fetch the columns (required) but we don't use them.
columns = cur_mem->get_columns();
  // Read the row (we are only expecting the one)
  do {
    row = cur_mem->get_next_row();
    if (row != NULL) {
      Kto = row->values[0];
    }
  } while (row != NULL);
}
/**
 * @brief main loop
 */
void loop() {
if(a)
{
light = analogRead(0);
char charBuf[150];
char charBuf2[150];
cytat.toCharArray(charBuf,150);
printwrap(charBuf, 0, 20);
Kto.toCharArray(charBuf2,150);
 printwrap(charBuf2, 40, 150);
 if(licznik>0){
    char up[]="UPDATE  inteligentnaszkatulka.cytaty_wlasne SET odczytane=(now()) where id=%d";
    sprintf(query, up, ida);
    cur_mem->execute(query);
    licznik=0;
 }
  if(light <200)
  {
    a = false;
  }
}
while(a==false)
{
tft.clear();
light = analogRead(0);

  czytaj();
if(licznik>0){
digitalWrite(12,HIGH);
delay(800);
digitalWrite(12,LOW);
}
  if(light > 300)
  {
    a = true;
    hasRun=false;
  }
}
}
