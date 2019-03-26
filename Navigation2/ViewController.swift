//
//  ViewController.swift
//  Navigation2
//
//  Created by 한수민 on 26/03/2019.
//  Copyright © 2019 한수민. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet var pizzaChicken: UISegmentedControl!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toOrderView" {
            let destVC = segue.destination as! OrderViewController
            let ordered: String! = pizzaChicken.titleForSegment(at:pizzaChicken.selectedSegmentIndex)
            destVC.title = ordered
            var outString: String = "감사합니다!!\n 주문내역: <"
            outString += ordered
            outString += ">, 맞나요?"
            destVC.info = outString
        } }


}

