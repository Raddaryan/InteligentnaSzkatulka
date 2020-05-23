# InteligentnaSzkatulka
![szkatulka1](https://user-images.githubusercontent.com/59450291/82734275-47f26580-9d1a-11ea-91dd-193f73a7fbe8.jpg)
# Dokumentacja 
[dokumentacja](https://marcelinawoziwoda.github.io/InteligentnaSzkatulka/) </br>

# Repozytorium 
[Repozytorium z plikami](https://github.com/marcelinawoziwoda/InteligentnaSzkatulka/tree/main-app)
# Cel projektu:

Celem projektu było stworzenie Inteligentnej Szkatułki, czyli urządzenia, które wygląda jak szkatułka na biżuterię i taka też rolę odgyrwa, jednakże w jej wnętrzu zamontowany został ekran, na którym przy każdym otwarciu wieczka ukazuje się cytat lub sentencja, a nawet własna wiadomość, którą możemy w prosty sposób napisać poprzez aplikację przeglądarkową dedykowaną szkatułce. 
<br/>
# Problematyka projektu:
Problemem do rozwiązania było przede wszystkim połączenia wszystkich elementów i zaprogramowanie ich w taki sposób, by łączyły się przez bazę danych PhpMyAdmin z aplikacją przeglądarkową, a zarazem by połączony ze sobą na płytce stykowej zestaw arduino działał stabilnie przez sieć WiFi, a nie poprzez połączenie z laptopem. Natomiast kolejnym problemem, było stworzenie aplikacji, która również łączy się z bazą danych, tak samo jak zestaw arduino. Te wszystkie komponenty wspólnie dają nam projekt, który wymagał od nas wiele zaangażowania zarówno w tworzeniu go, jak i przede wszystkim w doszkoleniu swojej wiedzy w dziedzinach, takich jak: programowanie w środowisku Arduino IDE, poznanie i używanie bibliotek środowiska Arduino, implementacja kodu aplikacji przeglądarkowej i co za tym idzie wszelkich związanych z tym przedsiewzięciem elementów technologicznych. </br>


# Komponenty sprzętowe
</br>
Do stworzenia projektu Inteligentnej Szkatułki, niezbędne okazały się komponenty sprzętowe, dzięki którym nasza wizja realizowanego planu mogła przerodzić się w materialny, rzeczywisty i namacalny efekt końcowy, czyli prawdziwą drewnianą szkatułkę z wbudowanym ekranem. Po długich naradach i planach, dotyczących ostatecznej formy działania i funkcjonalności projektu, wybór padł na technologię Arduino, a co za tym idzie, wszelkie elementy wykonawcze musiały być z kategorii Arduino. 
</br> Są nimi:
</br>
- płytka prototypowa </br>
- moduł WiFi </br>
- ekran tft </br>
- 3 diody zielone </br>
- fotorezystor </br>
- przewody żeńsko-męskie  </br>
- przewody męsko-męskie </br>
</br>
Wyżej wymienione elementy odpowiadają za funkcje technologiczne szkatułki, jednakże nasz projekt nie miałby sensu, gdyby składał się jedynie z wspomnianych urządzeń, którego przeznaczenia laik niezrozumie. Głównym założeniem projektu było, to że ma być to szkatułka, tak też powstała drewniana skrzyneczka, stworzona drewnianych desek i zawiasów, w której mieści się cały zestaw Arduino. Przy każdorazowym otwarciu wieczka szkatułki, na ekranie pojawia się inny cytat lub wiadomość własna. Takie zmiany cytatów możliwe są dzięki zastosowaniu fotorezystora, który wyczuwa zmiane oświetlenia, co prowadzi do wygaszenia ekranu, a następnie załadowania kolejnego cytatu z bazy.</br>

# Założenia projektowe
Głównym założeniem działania Inteligentnej szkatułki jest wyświetlanie na jej ekranie cytatów,
sentencji oraz przesłanych wiadomości. Aby to było możliwe, jednym z podstawowych kroków było
stworzenie bazy danych , w której będą przechowywane wszystkie cytaty wraz z przypisanymi autorami.
Aktualnie w bazie danych znajduje się 50 cytatów oraz sentencji, lecz ta liczba zmieniła się zaraz po tym gdy do aplikacji internetowej
została dodana możliwość tworzenia własnych wiadomości. Baza danych została stworzona za
pomoca programu Microsoft SQL Management Studio 18, który jest zintegrowanym srodowiskiem
do zarzadzania dowolna infrastruktura SQL, a następnie została wyeksportowana do PhpMyAdmin, by była dostępna z poziomu localhost'a.
Po stworzeniu projektu szkatułki w programie 3DsMax, nadeszła chwila,
by projekt zamienić na rzeczywisty przedmiot. Tak też powstała szkatułka, stworzona z drewnianych
deseczek, z zawiasami. Dodatkowo posiada ona drewnianą
klapkę, pod która mieści się zestaw Arduino. Tak właśnie narodził się pomysł zrobienia drugiego dna, poprzez montaż odpowiednio przyciętej deski
oraz zawiasów. Nastepnie, jako ze nasza szkatułka musi być zasilana poprzez
kabel micro USB, nalezało wyciąć otwór na wspomniany zasilacz. Docelowo, nasza szkatułka ma reagować na każde jej otwarcie i wyświetlac każdorazowo inny cytat. </br>



# Załączniki
[Załączniki](
