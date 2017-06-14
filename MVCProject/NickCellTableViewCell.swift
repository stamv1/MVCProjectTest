//
//  NickCellTableViewCell.swift
//  MVCProject
//
//  Created by Stam otb on 5/1/17.
//  Copyright © 2017 Stam otb. All rights reserved.
//

import UIKit

class NickCellTableViewCell: UITableViewCell {

    @IBOutlet weak var videoLbl: UILabel!
    @IBOutlet weak var videoImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(V: Video)
    {
        videoLbl.text = V.videoTitle
        
        let U = URL(string: V.imageURL)!
        
        DispatchQueue.global().async {
            do
            {
            
                let d = try Data(contentsOf: U)
                
                 DispatchQueue.global().sync
                {
                    self.videoImage.image = UIImage(data: d)
                
                }
            }
                catch
                {
                
                }
            
            }
        
        
    
    }

}
