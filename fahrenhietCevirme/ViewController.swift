//
//  ViewController.swift
//  fahrenhietCevirme
//
//  Created by David Thompson on 19.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = varsayilaArkaPlan
    }
    let maviArkaPlan = UIColor(red: 0/255, green: 204/255, blue: 232/255, alpha: 1.0)
    let kirmiziArkaPlan = UIColor(red: 234/255, green: 86/255, blue: 0/255, alpha: 1.0)
    let varsayilaArkaPlan = UIColor(red: 157/255, green: 201/255, blue: 0/255, alpha: 1.0)
    
    
    @IBOutlet var field: UITextField!
    @IBOutlet var label: UILabel!
    
    @IBAction func buttonTapped(_ sender: UIButton){
        //kullanisinin yazisini yazi degiskenine atadik(yazi yazmadiysa calismasin)
        if let yazi = field.text {
            let fahrenfiet:Double
            let girilenDeger = Double(yazi)
            //(yazi yerine Int yazmadiysa calismasin)
            if let derece = girilenDeger {
                fahrenfiet = derece * 1.8 + 32
                //sonuc
                label.text = String(fahrenfiet)
                //sicakliga gore renk ayarla
                if fahrenfiet > 0{
                    view.backgroundColor = kirmiziArkaPlan
                }else{
                    view.backgroundColor = maviArkaPlan
                }
            }
        }
        }
    }
