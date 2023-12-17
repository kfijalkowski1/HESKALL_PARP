module Location where

import Item

data Location = Location{
    loc_name :: String,
    loc_description :: [String],
    loc_search :: [String],
    -- loc_potential_fight ??? i wtedy module Fight, albo jakiś 'bool', idk
    loc_health_change :: Integer,
    loc_items :: [Item],
    loc_paths :: [Location]
}


pustkowie2 = Location {
    loc_name = "pustkowie2",
    loc_description = [
        "Wędrujesz przez pustkowie, gdzie krajobraz jest surowy, a ziemia spękana od przesuszenia.",
        "Nie ma tu żadnych oznak życia, a jedynym towarzyszem jest oszałamiające słońce na bezchmurnym niebie.",
        "W oddali dostrzegasz samotne formacje skalne, które zdają się być ostatnimi świadkami dawnej obfitości tego terenu.",
        "Pustkowie emanuje atmosferą opuszczenia, a cisza jest jedynym dźwiękiem, jaki się tu rozchodzi.",
        ""
    ],
    loc_search = [
        "Rozglądasz się uważnie i dostrzegasz kamień, który może posłużyć za broń.",
        "Jest to solidny kamień o ostrym kształcie, nadający się do rzucania lub używania jako improwizowana broń.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [kamien],
    loc_paths = [oceanStatek, obozRozbojnikow]
}

oceanStatek = Location {
    loc_name = "oceanStatek",
    loc_description = [
        "Unosisz nad dnem oceanu, gdzie rozciąga się zatopiony wrak statku, pozostawiający po sobie tylko fragmenty dawnej świetności.",
        "Roślinność morska oplata kadłub statku, a promienie słońca przebijające się przez wodę tworzą migotliwe światło na dnie oceanu.",
        "Wokół unoszą się ryby, a w szczelinach wraku odkrywasz tajemnice, które przetrwały upadek tego statku.",
        "Czujesz nutę tajemnicy, gdy zbliżasz się do zatopionego wraku, a woda rozchodzi się wokół ciebie jak cicha opowieść o przeszłości.",
        ""
    ],
    loc_search = [
        "Rozglądasz się wokół wraku i odkrywasz część portalu, która zdaje się być fragmentem starożytnego artefaktu.",
        "Część portalu jest wykonana z nieznanego metalu i emanuje słabym światłem, sugerując swoją magiczną naturę.",
        "Podczas przeszukiwania wnętrza wraku znajdujesz piękną złotą bransoletkę zdobioną misternymi wzorami.",
        "To wyjątkowy przedmiot, który zdaje się być starożytnym skarbem utraconym w czasie zatopienia statku.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [zlotaBransoleta, portalOne],
    loc_paths = [oceanPusty, rzeka, pustkowie2]
}

oceanPusty = Location {
    loc_name = "oceanPusty",
    loc_description = [
        "Nurkujesz w głąb oceanu, a wokół ciebie rozciąga się pusty, bezkresny obszar wód głębinowych.",
        "Brak jakiejkolwiek roślinności czy form życia, jedynie monotonny krajobraz niekończących się wód oceanicznych.",
        "Ciemność otacza cię ze wszystkich stron, a jedynym dźwiękiem jest łagodne szumienie wody przemieszczanej przez ruchy fal.",
        "To miejsce emanuje spokojem, ale jednocześnie wzbudza uczucie nieskończoności i tajemnicy oceanicznej głębi.",
        ""
    ],
    loc_search = [
        "Mimo starannej obserwacji, nie odkrywasz żadnych interesujących elementów tego obszaru oceanicznego.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [],
    loc_paths = [rafaKoralowa, kanion, oceanStatek]
}

rafaKoralowa = Location {
    loc_name = "rafaKoralowa",
    loc_description = [
        "Zanurzasz się w barwnym świecie rafy koralowej, gdzie tysiące koralowców tworzy niezwykłe formacje podwodne.",
        "Rafa pulsuje życiem, a kolorowe ryby przeplatają się między koralami, tworząc hipnotyzujący taniec pod wodą.",
        "Na dnie rafy dostrzegasz ukryte jaskinie i groty, które stanowią schronienie dla różnorodnych morskich istot.",
        "Dźwięki wody i śpiewu morskich istot wypełniają przestrzeń, nadając temu miejscu magii i niepowtarzalnego piękna.",
        ""
    ],
    loc_search = [
        "Podczas nurkowania w rafie koralowej dostrzegasz starą skrzynkę, która leży między koralami.",
        "Skrzynka zdaje się być starożytna i pokryta kolorowymi morskimi roślinami, co czyni ją trudno dostrzegalną.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [naramiennik],
    loc_paths = [jaskiniaPodwodna, lasBrzozowy, oceanPusty]
}

jaskiniaPodwodna = Location {
    loc_name = "jaskiniaPodwodna",
    loc_description = [
        "Nurkujesz głęboko w czeluście podwodnej jaskini, gdzie światło słoneczne ledwo przenika przez kryształową wodę.",
        "Ściany jaskini są pokryte koralowymi formacjami, a kolorowe ryby migoczą wśród zakamarków, tworząc podwodne arcydzieło natury.",
        "Woda jest przejrzysta, a na dnie jaskini dostrzegasz ukryte jaskinie i szczeliny, które prowadzą do nieznanych zakątków podwodnego świata.",
        "W ciemnościach jaskini dostrzegasz podejrzany ruch, sugerujący obecność tajemniczych postaci ukrytych w cieniach.",
        "Dźwięki wody i subtelne szmery morskich istot wypełniają przestrzeń, nadając temu miejscu magiczny i tajemniczy charakter.",
        ""
    ],
    loc_search = [
        "W jaskini podwodnej dostrzegasz jedynie pozostałości po dawnych ucztach utopców.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [],
    loc_paths = [jaskinia2, rafaKoralowa]
}

obozRozbojnikow = Location {
    loc_name = "obozRozbojnikow",
    loc_description = [
        "Znajdujesz się przed obozem rozbójników, ukrytym obok pustkowia w gęstym lesie, z dala od cywilizacji.",
        "Na obrzeżach obozu widzisz prymitywne szałasy zrobione z gałęzi i skór, a dym z ognisk unosi się w powietrze.",
        "Wokół obozu czujesz podejrzane spojrzenia, a z oddali dobiegają odgłosy dzikich zwierząt, które współistnieją z rozbójnikami.",
        "Gdy wkroczysz na teren obozu, nagle zostajesz zaatakowany przez grupę rozbójników! Musisz bronić się przed ich atakiem.",
        ""
    ],
    loc_search = [
        "Po pokonaniu rozbójników, przeszukujesz obozowe zaułki i znajdujesz skórzane buty, które mogą się okazać użyteczne w dalszych przygodach.",
        "Dodatkowo, natrafiasz na kilka pozostałości po wcześniejszych ofiarach rozbójników, ale większość wartościowych przedmiotów została rozgrabiona.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [skorzaneButy],
    loc_paths = [pustkowie2, rzeka, gory]
}

rzeka = Location {
    loc_name = "rzeka",
    loc_description = [
        "Stoisz na brzegu urokliwego jeziora, gdzie spokojna rzeka płynąca z gór wpada w jego nurt, tworząc malownicze połączenie wód.",
        "Miejsce to emanuje harmonią natury, gdzie szum rzeki miesza się z delikatnym falowaniem jeziora.",
        "Ptaki wodne unoszą się na powierzchni jeziora, a nad brzegiem rosną kolorowe kwiaty, zdobiąc otoczenie tego magicznego zakątka.",
        "Woda jeziora mieni się odcieniami niebieskiego, a promienie słońca odbijają się na powierzchni, jakby malowały błyszczący obraz natury.",
        ""
    ],
    loc_search = [
        "Przeszukujesz brzegi rzeki, starannie zwracając uwagę na otoczenie.",
        "Niestety, nie dostrzegasz niczego szczególnie interesującego.",
        "Jedynym ruchem na horyzoncie są kilka ptaków wodnych, unoszących się na leniwym nurcie rzeki.",
        "Pomimo starannych poszukiwań, wydaje się, że rzeka nie kryje żadnych tajemniczych przedmiotów czy innych odkryć.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [],
    loc_paths = [oceanStatek, kanion, jezioro, obozRozbojnikow]
}

kanion = Location {
    loc_name = "kanion",
    loc_description = [
        "Nagle zapada się pod tobą ziemia, cudem przeżywasz upadek jednak teraz znajdujesz sięna dnie wielkiego kanionu.",
        "Ściany skalne wznoszą się ku niebu, tworząc imponujący labirynt głębokich wąwozów.",
        "W dnie kanionu płynie mały strumyk, którego błyszczące wody stanowią błękitną nitkę wśród skalistego krajobrazu.",
        ""
    ],
    loc_search = [
        "Podczas przeszukiwania kanionu znajdujesz tylko kilka porozrzucanych kości,",
        "które wydają się być pozostałością po podróżnych, którzy nie mieli tyle szczęścia co ty.",
        ""
    ],
    loc_health_change = -3,
    loc_items = [],
    loc_paths = [oceanPusty, lasBrzozowy, laka, rzeka]
}

lasBrzozowy = Location {
    loc_name = "lasBrzozowy",
    loc_description = [
        "Przechadzasz się przez uroczy las brzozowy, gdzie delikatne liście brzóz szumią w letnim wietrze.",
        "Pod stopami czujesz miękki dywan z opadłych liści, a promienie słońca przebijające się przez korony drzew malują złote plamy na ziemi.",
        "Ptaki śpiewają miłe melodie, tworząc harmonijną symfonię natury, a ścieżki wiodą cię między korzeniami i pniami brzóz.",
        "W oddali słychać szmer strumienia, który dodaje uroku temu malowniczemu zakątkowi lasu.",
        ""
    ],
    loc_search = [
        "Przeszukując las brzozowy, twoje uszy wychwytują delikatny dźwięk brzęczenia.",
        "Podążasz za dźwiękiem i nagle trafiasz na ukryty ul pszczół, zbudowany w gęstym konarach drzew brzozowych.",
        "Pszczoły pracują gorliwie, zbierając nektar i wytwarzając pyszny miód, który przepełnia powietrze słodkim aromatem.",
        "To magiczne znalezisko w lesie brzozowym ukazuje nie tylko pracowitość pszczół, ale także możliwość zebrania smacznego miodu.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [miod],
    loc_paths = [rafaKoralowa, jaskinia2, lasDebowy, kanion]
}

jaskinia2 = Location {
    loc_name = "jaskinia2",
    loc_description = [
        "Wkraczasz do jaskini, a wnętrze mieni się blaskiem tysięcy kryształów o różnych kształtach i kolorach.",
        "Ściany jaskini są dosłownie pokryte błyszczącymi klejnotami, które odbijają światło w fantastyczny sposób.",
        "W powietrzu unoszą się iskry, tworząc magiczną aurę wokół ciebie, gdy kroczysz po posypanym kryształami podłożu.",
        "Delikatne dźwięki echo odbijają się od kryształów, tworząc hipnotyzującą symfonię, której nigdy wcześniej nie słyszałeś.",
        "Nagle, z cienia jaskini wyłaniają się wrogie szkielety! Atakują cię zobacząc, ich oczy świecą złowrogo w mroku.",
        "Musisz bronić się przed tymi nieumarłymi przeciwnikami, by kontynuować swoją podróż przez tę magiczną, lecz niebezpieczną jaskinię.",
        ""
    ],
    loc_search = [
        "Po zakończonym starciu ze szkieletami przystępujesz do przeszukania jaskini w poszukiwaniu cennych przedmiotów.",
        "Okazuje się, że szkielety nie były tu bez powodu albowiem pilnowały one części portalu.",
        "Część portalu jest wykonana z nieznanego metalu i emanuje słabym światłem, sugerując swoją magiczną naturę.",
        "Twoje badania zostają nagrodzone, gdy natrafiasz na żelazną zbroję ukrytą w jednym z zakamarków.",
        "Zbroja jest solidna i wydaje się być w dobrym stanie, gotowa do założenia i ochrony przed kolejnymi niebezpieczeństwami.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [zbroja, portalTwo],
    loc_paths = [jaskiniaPodwodna, wysokieGory, lasBrzozowy]
}

gory = Location {
    loc_name = "gory",
    loc_description = [
        "Wspinasz się po majestatycznych szczytach gór, gdzie powietrze staje się rzadkie, a panorama roztacza się na wszystkie strony.",
        "Skały odbijają odcienie wschodzącego słońca, malując krajobraz w ciepłych kolorach pomarańczy i różu.",
        "Na szczytach gór błyszczą śnieżnobiałe czapki, a stoki porośnięte są kolorowymi kwiatami i mchami.",
        "W trakcie wspinaczki niestety potykasz się o nierówność terenu, uszkadzając sobie nogę.",
        "Choć kontuzja nie jest poważna, sprawia, że dalsza wspinaczka staje się trudniejsza i bolesna.",
        "Pomimo tego incydentu, nadal masz okazję podziwiać piękno górskiego krajobrazu, choć teraz również musisz dbać o swoje zdrowie.",
        ""
    ],
    loc_search = [
        "Podczas eksploracji gór odkrywasz ukryte zakamarki, gdzie światło słońca ledwo przedostaje się.",
        "Twoje spojrzenie przyciąga tajemniczy miecz, leżący na kamiennej półce. Wydaje się być magiczny i niezwykle potężny.",
        "W dotyku miecz emanuje energią, a jego ostrze migocze delikatnym światłem.",
        ""
    ],
    loc_health_change = -2,
    loc_items = [miecz],
    loc_paths = [obozRozbojnikow, jezioro, jaskinia1]
}

jezioro = Location {
    loc_name = "jezioro",
    loc_description = [
        "Stoisz na brzegu spokojnego jeziora, którego powierzchnia migocze w blasku promieni słonecznych.",
        "Woda jest krystalicznie czysta, a na jej powierzchni unoszą się kolorowe liście i płyną delikatne fale.",
        ""
    ],
    loc_search = [
        "Przeszukując obszar wokół jeziora, nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.",
        "Otacza cię jedynie cisza i spokój, a jedynym dźwiękiem jest szum delikatnych fal i śpiew ptaków w oddali.",
        "Mimo braku znalezisk, atmosfera jeziora wydaje się być relaksująca i pełna uroku.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [],
    loc_paths = [rzeka, laka, tajga, gory]
}

laka = Location {
    loc_name = "laka",
    loc_description = [
        "Jesteś na malowniczej łące, gdzie zielenią traw rozbłyskują kolorowe kwiaty.",
        "Ptaki śpiewają w gałęziach drzew, a w oddali słychać szmer strumyka.",
        ""
    ],
    loc_search = [
        "Podczas przeszukiwania łąki, nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.",
        "Jedynym znaleziskiem są kolorowe kwiaty, które rozsiane są w każdą stronę, dodając uroku temu pięknemu miejscu.",
        "Wokół panuje spokój, a delikatny zapach kwiatów unosi się w powietrzu, tworząc idylliczną atmosferę.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [],
    loc_paths = [kanion, lasDebowy, wioska, jezioro]
}

lasDebowy = Location {
    loc_name = "lasDebowy",
    loc_description = [
        "Wchodzisz do gęstego lasu dębowego, gdzie potężne drzewa sięgają w niebo, tworząc gęstą i cienistą szatę.",
        "Światło słoneczne ledwo przedostaje się przez gęstwiny liści, rzucając plamy światła na korzenie i mchy pokrywające ziemię.",
        "Jednak w miarę jak zagłębiasz się głębiej, nagły odgłos skowytu wstrzymuje ci oddech. Wilki, drapieżniki lasu, zaczynają cię śledzić.",
        "Nagle, z ciemności wyskakują wilki, atakując cię z zaskoczenia! Musisz bronić się przed tymi dzikimi stworzeniami, by przeżyć w tym niebezpiecznym lesie.",
        ""
    ],
    loc_search = [
        "Po pokonaniu wilków, decydujesz się przeszukać otoczenie w poszukiwaniu użytecznych przedmiotów.",
        "Twoje starania zostają nagrodzone, gdy natrafiasz na skóry wilków, które mogą posłużyć do produkcji trwałego pancerza.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [skoraWilka],
    loc_paths = [lasBrzozowy, wysokieGory, dolina, laka]
}

wysokieGory = Location {
    loc_name = "wysokieGory",
    loc_description = [
        "Stoisz w cieniu potężnych szczytów wysokich gór, gdzie powietrze jest rzadkie, a krajobraz zapiera dech w piersiach.",
        "Na ich szczytach błyszczą wieczne lodowce, a w dolinach unosi się lekka mgła.",
        "Słyszysz szum wiatru między skałami, a widok sięga daleko poza horyzont.",
        "Jednakże, pomimo piękna tego miejsca, bardzo zimno przeszywa twoje kości, a długa wspinaczka sprawia, że twoje ręce i nogi krwawią z powodu ciężkich warunków terenowych.",
        ""
    ],
    loc_search = [
        "Przeszukując obszar wysokich gór, niestety nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.",
        "Mimo olśniewających widoków i majestatycznych szczytów, to miejsce zdaje się być pozbawione ukrytych skarbów czy przydatnych artefaktów.",
        "Możliwe, że to wyjątkowe środowisko górskie nie kryje żadnych tajemniczych znalezisk, ale sam krajobraz jest już nagrodą.",
        ""
    ],
    loc_health_change = -4,
    loc_items = [],
    loc_paths = [jaskinia2, zniszczonyPortal, lasDebowy]
}

jaskinia1 = Location {
    loc_name = "jaskinia1",
    loc_description = [
        "Wchodzisz do ciemnej jaskini, gdzie ciemność otacza cię ze wszystkich stron.",
        "Mroczne tunele wydają się prowadzić głęboko pod ziemię.",
        "W miarę jak przemieszczasz się po jaskini, słyszysz dziwne, nieokreślone dźwięki, a zacienione kształty migocą na granicy twojej percepcji.",
        "Czujesz, że jesteś obserwowany, ale nie możesz zlokalizować źródła tej obecności.",
        ""
    ],
    loc_search = [
        "Po zaciętej walce z endermanem, decydujesz się dokładniej zbadać okolicę, by sprawdzić, czy nie ma żadnych wartościowych przedmiotów.",
        "Twoje starania zostają nagrodzone, gdy znajdujesz fragment portalu ukryty wśród szczątków pokonanego wroga.",
        "Ten tajemniczy fragment emanuje magiczną energią, sugerując, że może być kluczowym elementem w dalszej części twojej przygody.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [portalThree],
    loc_paths = [gory, tajga, tundra]
}

tajga = Location {
    loc_name = "tajga",
    loc_description = [
        "Przechadzasz się przez tajgę, gdzie drzewa sosnowe gęsto porastają obszar wokół ciebie.",
        "Pod stopami chrupie suchy mech, a powietrze nasycone jest zapachem żywicy.",
        "W oddali słychać szmer strumienia, a w górze przelatują kolorowe ptaki.",
        "Jednak w miarę jak penetrujesz gęstwiny drzew, zaczynasz odczuwać mroźny chłód, który przeszywa powietrze.",
        ""
    ],
    loc_search = [
        "Przeszukując tajgę, natrafiasz na twardy kij, który może stanowić przydatną broń",
        "Mimo gęstego drzewostanu i zapachu żywicy, to miejsce zdaje się być pozbawione ukrytych skarbów czy przydatnych artefaktów.",
        "Możliwe, że tajga jest pięknym, ale surowym środowiskiem, które nie oferuje żadnych znaczących znalezisk.",
        ""
    ],
    loc_health_change = -1,
    loc_items = [patyk],
    loc_paths = [jezioro, wioska, stepy, jaskinia1]
}

wioska = Location {
    loc_name = "wioska",
    loc_description = [
        "Przechadzasz się przez malowniczą wioskę, gdzie drewniane domy układają się wzdłuż brukowanych uliczek.",
        "Ludzie rozmawiają ze sobą na ulicach, a dzieci biegają wesoło wokół zabawek.",
        "Na rynku widzisz kolorowe stragany, na których sprzedawane są świeże owoce i rękodzieła.",
        ""
    ],
    loc_search = [
        "Przeszukując obszar wokół ciebie, natrafiasz na uprzejmego i hojnego sprzedawcę.",
        "Z uśmiechem na twarzy, dobry sprzedawca decyduje się podarować ci świeży bochenek chleba.",
        "To niespodziewany prezent z pewnością umili ci podróż i dostarczy niezbędnej energii w trudnych chwilach.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [chleb],
    loc_paths = [laka, dolina, pustynia, tajga]
}

dolina = Location {
    loc_name = "dolina",
    loc_description = [
        "Przechadzasz się po spokojnej dolinie, gdzie z obu stron wznoszą się zielone wzgórza.",
        "W dolinie kwitną kolorowe kwiaty, a delikatny wiatr niesie ze sobą świeży zapach traw i roślin.",
        "W oddali widzisz cichą rzekę, która biegnie przez środek doliny, dodając jej uroku.",
        ""
    ],
    loc_search = [
        "Przeszukując dolinę, niestety nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.",
        "Jedynym znaleziskiem są spokojnie pasące się stado krów, które dodaje uroku temu malowniczemu miejscu.",
        "Widok sielskiej doliny i spokojnych zwierząt stanowi jednak sam w sobie przyjemny obraz.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [],
    loc_paths = [lasDebowy, zniszczonyPortal, mesa, wioska]
}

zniszczonyPortal = Location {
    loc_name = "zniszczonyPortal",
    loc_description = [
        "Stoisz przed zniszczonym portalem, którego kształt przypomina pozostałości po dawnych potęgach magicznych.",
        "Jego kamienne bloki są popękane, a magiczne symbole na powierzchni zatraciły swój dawny blask.",
        "Wokół portalu panuje dziwna atmosfera, jakby pozostałości magii wciąż unosiły się w powietrzu.",
        "Głębokie rysy zdobią struktury portalu, świadcząc o jego wielowiekowej historii i potężnych wydarzeniach.",
        "Z dala słyszysz szepty przeszłości, które niosą opowieści o dawnych podróżach między światami.",
        ""
    ],
    loc_search = [
        "Przeszukując zniszczony portal, przyglądasz się dokładnie jego szczątkom.",
        "Zauważasz, że brakuje trzech ważnych części, które zapewne były kluczowe dla jego funkcjonowania.",
        "Możliwe, że odnalezienie tych zagubionych elementów może być kluczowym zadaniem w twojej podróży.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [],
    loc_paths = [wysokieGory, pustkowie1, dolina]
}

tundra = Location {
    loc_name = "tundra",
    loc_description = [
        "Przechadzasz się po rozległej tundrze, gdzie ziemia jest pokryta warstwą mchu i niskich krzewów, a drzewa są rzadkością.",
        "Pod stopami czujesz chłód wilgotnej gleby, a w powietrzu unosi się delikatny zapach mchu i roślinności tundry.",
        "Na horyzoncie widzisz majestatyczne góry pokryte śniegiem, które kontrastują z płaskim krajobrazem tundry.",
        "W oddali słychać odgłosy ptaków, które przemierzają niebo, a podczas wiatru trawy tundry poruszają się jak ocean fal.",
        "Jednakże, pomimo malowniczego krajobrazu, dotkliwy mróz przeszywa powietrze, sprawiając, że temperatura stundy jest wyjątkowo niska.",
        ""
    ],
    loc_search = [
        "Przeszukując tundrę, niestety nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.",
        "Jedynymi elementami wokół są wieczna zamrźlina i niskie krzewy, które zdają się być jedynymi formami życia przystosowanymi do surowych warunków tego obszaru.",
        "Tundra prezentuje surowy krajobraz, pozbawiony jakichkolwiek znaczących znalezisk czy ukrytych skarbów.",
        ""
    ],
    loc_health_change = -3,
    loc_items = [],
    loc_paths = [jaskinia1, stepy]
}

stepy = Location {
    loc_name = "stepy",
    loc_description = [
        "Przechadzasz się po rozległych stepach, gdzie trawa faluje na wietrze, tworząc ocean zielonej roślinności.",
        "Pod stopami czujesz miękki dywan trawy, a w oddali widzisz grupy dzikich koni swobodnie biegających po stepach.",
        "Niebo jest bezchmurne, a słońce rzuca złote promienie na obszar stepów, dodając im blasku.",
        "Stepy są ciche, ale wiatr niesie ze sobą dźwięki natury, takie jak świergot ptaków i szelest trawy.",
        ""
    ],
    loc_search = [
        "Przeszukując stepy, niestety nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.",
        "Równiny stepowe są otwarte i puste, a jedynym towarzyszem twojej podróży jest szum traw poruszanych wiatrem.",
        "Mimo prostoty krajobrazu, piękno otwartej przestrzeni może być samym w sobie nagrodą.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [],
    loc_paths = [tajga, pustynia, tundra]
}

pustynia = Location {
    loc_name = "pustynia",
    loc_description = [
        "Wkraczasz na bezkresną pustynię, gdzie ziemia pokryta jest złotym piaskiem, a horyzont zdaje się nigdy nie kończyć.",
        "Słońce praży niebłaganie, tworząc fale gorącego powietrza, a cienie są niemal niemożliwe do znalezienia.",
        "W oddali widzisz majestatyczne wydmy, które zdają się tańczyć w migotliwym świetle pustynnego pejzażu.",
        "Pustynia jest jak krajobraz z innej planety, gdzie cisza jest tylko przerywana szumem wiatru i odgłosami kroków po piasku.",
        ""
    ],
    loc_search = [
        "Przeszukując pustynię, niestety nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.",
        "Horyzont rozciąga się bez końca, a jedynym elementem krajobrazu są rozległe pustynne piaski, gdzie oko nie dostrzega końca.",
        "Pustynia prezentuje surowy i bezkresny krajobraz, pozbawiony jakichkolwiek znaczących znalezisk czy ukrytych skarbów.",
        ""
    ],
    loc_health_change = -1,
    loc_items = [],
    loc_paths = [wioska, mesa, stepy]
}

mesa = Location {
    loc_name = "mesa",
    loc_description = [
        "Stoisz na szczycie majestatycznej mesy, gdzie kamienne formacje tworzą surrealistyczny krajobraz.",
        "Słońce rzuca długie cienie na czerwoną ziemię, podkreślając kontury unikalnych kształtów skał.",
        "Mesa przypomina naturalne świątynie, a ich wysokie klify oferują zapierające dech w piersiach widoki na otaczający krajobraz.",
        "W powietrzu unosi się ciepły wiatr, przenoszący zapach suchej ziemi i roślinności adaptującej się do trudnych warunków.",
        ""
    ],
    loc_search = [
        "Przeszukując mesę, niestety nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.",
        "Mesa prezentuje swoisty krajobraz, charakteryzujący się płaskim blatem skalnym i unikalnymi formacjami geologicznymi.",
        "Jednakże, mimo interesującej struktury, nie znajdujesz tutaj żadnych istotnych znalezisk czy ukrytych skarbów.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [],
    loc_paths = [dolina, pustkowie1, pustynia]
}

pustkowie1 = Location {
    loc_name = "pustkowie1",
    loc_description = [
        "Wchodzisz na obszar pustkowia, gdzie ziemia jest spękana i sucha, a niebo zdaje się nie mieć końca.",
        "Nie ma tu żadnej roślinności, a jedynym towarzyszem jest skwarny wiatr unoszący kłęby kurzu w powietrzu.",
        "Na horyzoncie widzisz jedynie opustoszałe ruiny, pozostałość po dawnych cywilizacjach, które przepadły w zapomnieniu.",
        "Pustkowie emanuje atmosferą opuszczenia, a cisza jest jedynym dźwiękiem, jaki się tu rozchodzi.",
        ""
    ],
    loc_search = [
        "Przeszukując pustkowie, niestety nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.",
        "To opuszczone i surowe pustkowie prezentuje krajobraz pozbawiony życia i istotnych elementów.",
        "Pustkowia zdają się być opuszczone, nie pozostawiając śladu po obecności czy ukrytych skarbach.",
        ""
    ],
    loc_health_change = 0,
    loc_items = [],
    loc_paths = [zniszczonyPortal, mesa]
}

moon = Location {
    loc_name = "moon",
    loc_description = [
        "Księżyc."
    ],
    loc_search = [],
    loc_health_change = 0,
    loc_items = [],
    loc_paths = []
}
