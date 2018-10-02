//
//  AlertViewController.swift
//  Future Health Care
//
//  Created by 末吉亮太 on 2018/09/24.
//  Copyright © 2018年 末吉亮太. All rights reserved.
//

import UIKit

class saveData {
    var ud: UserDefaults = UserDefaults.standard
}

class AlertViewController: UIViewController {
    
    
    
    @IBOutlet var label1: UILabel!
    var text1: String?
    
    @IBOutlet var label2: UILabel!
    var text2: String?
    
    

   
    @IBOutlet var label3: UILabel!
    var text3: String?
    
    var futureArray = [String]()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label1.text = text1
        label2.text = text2
        label3.text = text3
        
       
        
        futureArray = (saveData().ud.array(forKey: "title") as? [String])!
        
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func save(){
        
        futureArray.append(label1.text!)
        futureArray.append(label2.text!)
        saveData().ud.set(futureArray, forKey: "title")
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
