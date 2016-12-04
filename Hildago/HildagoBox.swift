//
//  HildagoBox.swift
//  Hildago
//
//  Created by iosakademija on 12/4/16.
//  Copyright © 2016 iosakademija. All rights reserved.
//

import UIKit

protocol HildagoBoxDelegate :  {
    
    func hildagoBocIntiatedChagne(_ hildagoBox : HildagoBox )
    
}

class HildagoBox: UIView {
    
    @IBOutlet weak var chatButton : UIButton!
    @IBOutlet weak var contactButton : UIButton!
    
    
}
