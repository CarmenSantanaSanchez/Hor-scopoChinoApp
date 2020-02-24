//
//  CalendarioViewController.swift
//  AppChinaZ
//
//  Created by user164243 on 20/02/2020.
//  Copyright © 2020 user164243. All rights reserved.
//

import UIKit

class CalendarioViewController: UIViewController {

    
    
    
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    
    @IBAction func consultarButton(_ sender: UIButton) {
        print(DatePicker.date)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
   guard let horoscopoViewController = segue.destination as? HoroscopoViewController else { return }
   
   horoscopoViewController.fecha = DatePicker.date
    
    }

    

}
