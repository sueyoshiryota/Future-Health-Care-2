//
//  KirokuViewController.swift
//  Future Health Care
//
//  Created by 末吉亮太 on 2018/09/24.
//  Copyright © 2018年 末吉亮太. All rights reserved.
//

import UIKit

class KirokuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var futureArray = [String]()
    
    @IBOutlet var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        if saveData().ud.array(forKey: "title") as? [String] == nil{
            saveData().ud.set(["",""], forKey: "title")
print("yap")
            futureArray = saveData().ud.array(forKey: "title") as! [String]}
        else{
            print("none")
            futureArray = saveData().ud.array(forKey: "title")as! [String]
            print(saveData().ud.array(forKey: "title") as! [String])
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return futureArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for : indexPath)
        let future = futureArray[indexPath.row]
        cell.textLabel?.text = future
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            futureArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
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
