//
//  SecondViewController.swift
//  SevenWonders
//
//  Created by Luyao Wang on 3/18/23.
//

import UIKit

class SecondViewController: UIViewController {
    var detailsIndex = 0
    var details = ["The Great Wall of China pinyin: Wànlǐ Chángchéng, literally  is a series of fortifications that were built across the historical northern borders of ancient Chinese states and Imperial China as protection against various nomadic groups from the Eurasian Steppe. Several walls were built from as early as the 7th century BC,[4] with selective stretches later joined by Qin Shi Huang (220–206 BC), the first emperor of China.", "The Great Pyramid of Giza[a] is the largest Egyptian pyramid and the tomb of Fourth Dynasty pharaoh Khufu. Built in the early 26th century BC during a period of around 27 years,[3] the pyramid is the oldest of the Seven Wonders of the Ancient World, and the only one to remain largely intact. It is the most famous monument of the Giza pyramid complex, in the Pyramid Fields of the Memphis and its Necropolis UNESCO World Heritage Site,[4] in Giza, Egypt. It is at the most Northern end of the line of the 3 Pyramids of Giza.", "The Colosseum (/ˌkɒləˈsiːəm/ KOL-ə-SEE-əm; Italian: Colosseo [kolosˈsɛːo]) is an elliptical amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world, despite its age. Construction began under the emperor Vespasian (r. 69–79 AD) in 72[1] and was completed in 80 AD under his successor and heir, Titus (r. 79–81).[2] Further modifications were made during the reign of Domitian (r. 81–96).", "Hagia Sophia (lit. 'Holy Wisdom'; Ancient Greek: Ἁγία Σοφία, romanized: Hagía Sophía; Latin: Sancta Sapientia; Turkish: Ayasofya), officially the Hagia Sophia Grand Mosque (Turkish: Ayasofya Camii),[3] is a mosque and major cultural and historical site in Istanbul, Turkey. The mosque was originally built as an Eastern Orthodox church and was used as such from the year 360 until the conquest of Constantinople by the Ottoman Empire in 1453. It served as a mosque until 1935, when it became a museum. In 2020, the site once again became a mosque.","Leaning Tower of Pisa", "The Taj Mahal (/ˌtɑːdʒ məˈhɑːl, ˌtɑːʒ-/; lit. 'Crown of the Palace')[4][5][6] is an Islamic ivory-white marble mausoleum on the right bank of the river Yamuna in Agra, Uttar Pradesh, India. It was commissioned in 1631 by the fifth Mughal emperor, Shah Jahan (r. 1628–1658) to house the tomb of his favourite wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself. The tomb is the centrepiece of a 17-hectare (42-acre) complex, which includes a mosque and a guest house, and is set in formal gardens bounded on three sides by a crenellated wall.","Stonehenge is a prehistoric monument on Salisbury Plain in Wiltshire, England, two miles (3 km) west of Amesbury. It consists of an outer ring of vertical sarsen standing stones, each around 13 feet (4.0 m) high, seven feet (2.1 m) wide, and weighing around 25 tons, topped by connecting horizontal lintel stones. Inside is a ring of smaller bluestones. Inside these are free-standing trilithons, two bulkier vertical sarsens joined by one lintel. The whole monument, now ruinous, is aligned towards the sunrise on the summer solstice. The stones are set within earthworks in the middle of the densest complex of Neolithic and Bronze Age monuments in England, including several hundred tumuli (burial mounds)."]
   
    @IBOutlet weak var txtWonderDetails: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtWonderDetails.text = details[detailsIndex]
        


    }
    

 

}
