//
//  ViewControllerOne.swift
//  LifeСycleApp
//
//  Created by Александр Макаров on 04.09.18.
//  Copyright © 2018 Александр Макаров. All rights reserved.
//

import UIKit

class ViewControllerOne: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userDefaults.set("ViewControllerOne: \(#function)\n", forKey: "funcLabel")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        update(funcName: "\(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        update(funcName: "\(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        update(funcName: "\(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        update(funcName: "\(#function)")
    }
    
    func update(funcName: String) {
        if let existingText = userDefaults.string(forKey: "funcLabel") {
            userDefaults.set("\(existingText) ViewControllerOne: \(funcName)\n", forKey: "funcLabel")
        }
    }
    
}
