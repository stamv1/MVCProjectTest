//
//  Video.swift
//  MVCProject
//
//  Created by Stam otb on 5/1/17.
//  Copyright © 2017 Stam otb. All rights reserved.
//

import Foundation

class Video
{
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL : String
    {
        
    get
    {
        return _imageURL
    }
        set
        {
        _imageURL = newValue
        }
        
    }
    
    var videoURL : String
        {
        
        get
        {
            return _videoURL
        }
        set
        {
            _videoURL = newValue
        }
        
    }
    
    var videoTitle : String
        {
        
        get
        {
            return _videoTitle
        }
        set
        {
            _videoTitle = newValue
        }
        
    }
    
    init(imageURL: String, videoURL: String, videoTitle:String)
    {
     _imageURL = imageURL
     _videoURL = videoURL
     _videoTitle = videoTitle
    }
    

}
