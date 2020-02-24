//
//  HoroscopoViewController.swift
//  AppChinaZ
//
//  Created by user164243 on 20/02/2020.
//  Copyright © 2020 user164243. All rights reserved.
//

import UIKit

class HoroscopoViewController: UIViewController {
    var fecha : Date? = nil
    
    let horoscopo = HoroscopoChino()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var horoscopoImage: UIImageView!
    
    @IBOutlet weak var descripcionLabel: UILabel!
    func updateUI(horoscopo: Horoscopo) {
        
        titleLabel.text =
            horoscopo.signo.description
        horoscopoImage.image = UIImage(named: horoscopo.signo.description)
        descripcionLabel.text = horoscopo.descripcion
        
    }
        
    
    
    
    
    
    
    
    
    
    
    
        override func viewDidLoad() {
        super.viewDidLoad()

          guard let fecha = fecha,
              let horoscopo = horoscopo.fechaHoroscopo(fecha: fecha) else {
                return }
          
          updateUI(horoscopo: horoscopo)

            
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

