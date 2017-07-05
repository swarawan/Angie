//
//  GalleryInteractorTests.swift
//  Angie
//
//  Created by Suhendra Ahmad on 7/5/17.
//  Copyright (c) 2017 Suhendra Ahmad. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import Angie
import XCTest

class GalleryInteractorTests: XCTestCase
{
    // MARK: Subject under test
    
    var sut: GalleryInteractor!
    
    // MARK: Test lifecycle
    
    override func setUp()
    {
        super.setUp()
        setupGalleryInteractor()
    }
    
    override func tearDown()
    {
        super.tearDown()
    }
    
    // MARK: Test setup
    
    func setupGalleryInteractor()
    {
        sut = GalleryInteractor()
    }
    
    // MARK: Test doubles
    
    // MARK: Tests
    
    func testFetchPhotos()
    {
        // Given
        
        // When
        
        // Then
    }
}