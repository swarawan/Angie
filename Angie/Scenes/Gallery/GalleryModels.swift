//
//  GalleryModels.swift
//  Angie
//
//  Created by Suhendra Ahmad on 7/4/17.
//  Copyright (c) 2017 Suhendra Ahmad. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum Gallery
{
    // MARK: Use cases
    
    enum Photo
    {
        struct Request
        {
            var tags: String
        }
        
        struct Response
        {
            var success: Bool
            var photos: [FlickrPhoto]
        }
        
        struct ViewModel
        {
            var success: Bool
            var photos: [FlickrPhoto]
        }
        
    }
}
