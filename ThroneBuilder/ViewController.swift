//
//  ViewController.swift
//  ThroneBuilder
//
//  Created by Grayston Ulery on 4/30/17.
//  Copyright © 2017 Grayston Ulery. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request("https://thronesdb.com/api/public/card/01001.json").responseJSON
            { response in
                print(response.request)
                print(response.response)
                print(response.data)
                print(response.result)
                if let json = response.result.value{
                    print("JSON: \(json)")
                }
            }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

