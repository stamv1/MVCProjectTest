//
//  ViewController.swift
//  MVCProject
//
//  Created by Stam otb on 4/30/17.
//  Copyright © 2017 Stam otb. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var table: UITableView!
    var arrVideo = [Video]()
  
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        table.delegate = self
        table.dataSource = self
        
        let v1 = Video(imageURL: "https://img.youtube.com/vi/kmFWDUQMj-g/default.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kmFWDUQMj-g\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: " somehow")
        
        let v2 = Video(imageURL: "https://img.youtube.com/vi/NQh5cphzQUw/default.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/NQh5cphzQUw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Song On Fire")
        
        let v3 = Video(imageURL: "https://img.youtube.com/vi/Mh3Au31Mqmo/default.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/NMh3Au31Mqmo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Savin Me")
        
        arrVideo.append(v1)
        arrVideo.append(v2)
        arrVideo.append(v3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return arrVideo.count
      
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = table.dequeueReusableCell(withIdentifier: "Ncell", for: indexPath) as? NickCellTableViewCell
        {
        let s = arrVideo[indexPath.row]
            cell.updateUI(V: s)
            return UITableViewCell()
        }
        else
        {
        return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let s = arrVideo[indexPath.row]
       performSegue(withIdentifier: "showVideoVC", sender: s)
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if let vi2 = sender as? Video
        {
        print(vi2.videoURL)
        
        }
      if  let d = segue.destination as? ShowVideoVC
        {
         if let vi = sender as? Video
         {
           
            d.v =  vi
            print(d.v.videoURL)
        
            }
        }
    }
}

