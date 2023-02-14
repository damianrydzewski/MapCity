//
//  LocationDataService.swift
//  MapApp
//
//  Created by Damian on 13/02/2023.
//

import Foundation
import MapKit

final class LocationDataService {
    static let locations: [Location] = [
        Location(name: "Pałac Kultury i Nauki",
                 cityName: "Warszawa",
                 coordinates: CLLocationCoordinate2D(latitude: 52.225665764, longitude: 21.003833318),
                 description: "Pałac jest siedzibą wielu przedsiębiorstw i instytucji użyteczności publicznej. Wybudowany został w latach 1952–1955. Architektonicznie jest mieszanką realizmu socjalistycznego i historyzmu. Razem ze wspornikiem antenowym, będącym integralną częścią iglicy, ma wysokość 237 metrów.",
                 imageNames: ["warsaw1"],
                 link: "https://pl.wikipedia.org/wiki/Pa%C5%82ac_Kultury_i_Nauki"),
        
        Location(name: "Varso Tower",
                 cityName: "Warszawa",
                 coordinates: CLLocationCoordinate2D(latitude: 52.22885, longitude: 21.00010),
                 description: "Varso – kompleks budynków biurowych w warszawskiej dzielnicy Wola, na rogu ulicy Chmielnej i alei Jana Pawła II. Wchodzący w skład kompleksu wieżowiec Varso Tower jest najwyższym budynkiem w Polsce i w Unii Europejskiej.",
                 imageNames: ["warsaw3"],
                 link: "https://pl.wikipedia.org/wiki/Varso"),
        
        Location(name: "Rynek Starego Miasta",
                 cityName: "Warszawa",
                 coordinates: CLLocationCoordinate2D(latitude: 52.24980, longitude: 21.01217),
                 description: "prostokątny plac o wymiarach 90 na 73 metrów na warszawskim Starym Mieście. Plac powstał na przełomie XIII i XIV w. w czasie lokacji miasta. Stanowił centrum administracyjno-handlowe Starej Warszawy[2]. Był również miejscem ważnych wydarzeń historycznych, wystąpień politycznych, manifestów i publicznych egzekucji. Od XV wieku na środku placu znajdował się murowany ratusz otoczony kramami. Przy ratuszu do XVIII wieku znajdowała się kuna.",
                 imageNames: ["warsaw2"],
                 link: "https://pl.wikipedia.org/wiki/Rynek_Starego_Miasta_w_Warszawie"),
        
        Location(name: "Brama Żuraw w Gdańsku",
                 cityName: "Gdańsk",
                 coordinates: CLLocationCoordinate2D(latitude: 54.35057, longitude: 18.65751),
                 description: "Brama Żuraw, Żuraw (niem. Krantor) – zabytkowy dźwig portowy i jedna z bram wodnych Gdańska, która mieści się nad Motławą, na końcu ulicy Szerokiej. Jest to jedna z filii Narodowego Muzeum Morskiego w Gdańsku oraz największy i najstarszy z zachowanych dźwigów portowych średniowiecznej Europy.",
                 imageNames: ["gdansk1", "gdansk3"],
                 link: "https://pl.wikipedia.org/wiki/Brama_%C5%BBuraw_w_Gda%C5%84sku"),
        
        Location(name: "Kamienice przy Długim Targu",
                 cityName: "Gdańsk",
                 coordinates: CLLocationCoordinate2D(latitude: 54.34833, longitude: 18.65384),
                 description: "Długi Targ – reprezentacyjny plac w Gdańsku, w dzielnicy Śródmieście, na Głównym Mieście. Pełni funkcję rynku, jest przedłużeniem ul. Długiej, z którą tworzy tzw. Drogę Królewską. ",
                 imageNames: ["gdansk2"],
                 link: "https://pl.wikipedia.org/wiki/D%C5%82ugi_Targ"),
    ]
}
