//
//  PreviewInteractorTests.swift
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

class PreviewInteractorTests: XCTestCase
{
    // MARK: Subject under test
    
    var sut: PreviewInteractor!
    
    // MARK: Test lifecycle
    
    override func setUp()
    {
        super.setUp()
        setupPreviewInteractor()
    }
    
    override func tearDown()
    {
        super.tearDown()
    }
    
    // MARK: Test setup
    
    func setupPreviewInteractor()
    {
        sut = PreviewInteractor()
    }
    
    // MARK: Test doubles
    
    class PreviewPresentationLogicSpy: PreviewPresentationLogic {
        var presentPhotoCalled = false
        
        func presentPhoto(response: Preview.Photo.Response) {
            presentPhotoCalled = true
        }
    }
    
    // MARK: Tests
    
    func testLoadPhotoShouldAskPresenterToFormatResult()
    {
        // Given
        let previewPresentationLogicSpy = PreviewPresentationLogicSpy()
        sut.presenter = previewPresentationLogicSpy
        
        let photo = FlickrPhoto()
        sut.photo = photo
        
        // When
        let request = Preview.Photo.Request()
        sut.loadPhoto(request: request)
        
        // Then
        XCTAssert(previewPresentationLogicSpy.presentPhotoCalled, "loadPhoto() should ask Preview Presenter to format photos")
    }
    
}