# to run:

1 - uruchom docker desktop app
2 - `docker build -t overment/demo .` <-- stowrzy obraz dockera, po utworzeniu będzie on widoczny w apliakcji Docker Desktop w
Images, (flaga -t pozwala otagować aplikację)

3 - `docker run -p 8000:8080 overment/demo` <-- okreslamy jaki port na moim komputerze (8000) na odpowiadać portowi zdefiniownemu w pliku Dockerfile (8080) a następnie wskazuję o jaki obraz mi chodzi (overment/demo)

---

# POLECENIA:

`docker ps` - pokazuje obrazy, info, id itd
`docker stop f8c58a2ff82b` - zatrzyma uruchomowiony obraz o podanym ID f8c58a2ff82b

---

## info:

jeśli np zmieniłbyś coś tutaj w tym kodzie, w tej apcke to te zmiany są jakby na tylko na komputerze a nie w kontenerze więc aby wprowadzić je do kontenera to trzeba:
1 - zdobyć ID kontenera (aby go potem zatrzymać) - `docker ps`
2 - zatrzymać kontener - `docker stop f8c58a2ff82b`
3 - ponowne zbudowanie - `docker build -t overment/demo .`
4 - musimy uruchmoić kontener ale jednoczesnie połączyć go z nowymi plikami - `docker run -p 8000:8080 -v /d/Docker/overmetgithub:/home/node/app overment/demo`, gdzie:
`/d/Docker/overmetgithub` - adres do projektu na komputerze lokalnym na podstawie którego stworzyć obraz (jak masz dokładnie ten projekt otwarty np w VSC to chodzi o ten adres któy pokazuje git na pomarańczowo np [ User@DESKTOP-A123ADC MINGW64 `/d/Docker/overmetgithub` ]
`:` - znak obowiązkowy, oddziela adresy komputera od kontenera
`home/node/app` - adres do projektu w kontenerze, jest on okreslony w pliku Dockerfile w linii 8
`overment/demo` - nazwa obrazu
