module Item where


data Item = Item {
    item_name :: String,
    item_description :: String,
    item_health_change :: Integer,
    item_attack_change :: Integer
    }
    deriving (Eq, Show)


zlotaBransoleta = Item{
    item_name = "zlotaBransoleta",
    item_description = "Dostajesz +2 punkty życia i +2 do ataku po założeniu złotej bransolety.",
    item_health_change = 2,
    item_attack_change = 2
}

naramiennik = Item{
    item_name = "naramiennik",
    item_description = "Dostajesz +3 punkty życia po założeniu naramiennika znalezionego w skrzyni.",
    item_health_change = 3,
    item_attack_change = 0
}

skorzaneButy = Item{
    item_name = "skorzaneButy",
    item_description = "Dostajesz +2 punkty życia po założeniu skórzanych butów z obozu rozbójników.",
    item_health_change = 2,
    item_attack_change = 0
}

miod = Item{
    item_name = "miod",
    item_description = "Dostajesz +2 punkty życia po zjedzeniu miodu.",
    item_health_change = 2,
    item_attack_change = 0
}

zbroja = Item{
    item_name = "zbroja",
    item_description = "Dostajesz +4 punkty życia po założeniu zbroji.",
    item_health_change = 4,
    item_attack_change = 0
}

skoraWilka = Item{
    item_name = "skoraWilka",
    item_description = "Dostajesz +2 punkty życia i +3 do ataku, po założeniu skóry wilka.",
    item_health_change = 2,
    item_attack_change = 3
}

chleb = Item{
    item_name = "chleb",
    item_description ="Nie ma nic lepszego dla zdrowia niż dobre jedzenie, +2 punkty życia za zjedzenie świeżego chleba.",
    item_health_change = 2,
    item_attack_change = 0
}

miecz = Item{
    item_name = "miecz",
    item_description = "Dostajesz +4 do ataku za podniesienie miecza.",
    item_health_change = 0,
    item_attack_change = 4
}

patyk = Item{
    item_name = "patyk",
    item_description = "Dostajesz +2 do ataku za podniesienie drewnianego patyka.",
    item_health_change = 0,
    item_attack_change = 2
}

kamien = Item{
    item_name = "kamien",
    item_description = "Dostajesz +1 do ataku za podniesienie kamienia.",
    item_health_change = 0,
    item_attack_change = 1
}

portalOne = Item{
    item_name = "portalOne",
    item_description = "",
    item_health_change = 0,
    item_attack_change = 0
}

portalTwo = Item{
    item_name = "portalTwo",
    item_description = "",
    item_health_change = 0,
    item_attack_change = 0
}

portalThree = Item{
    item_name = "portalThree",
    item_description = "",
    item_health_change = 0,
    item_attack_change = 0
}
