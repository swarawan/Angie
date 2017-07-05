//
//  PreviewInteractor.swift
//  Angie
//
//  Created by Suhendra Ahmad on 7/5/17.
//  Copyright (c) 2017 Suhendra Ahmad. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol PreviewBusinessLogic
{
    func doSomething(request: Preview.Something.Request)
}

protocol PreviewDataStore
{
    //var name: String { get set }
}

class PreviewInteractor: PreviewBusinessLogic, PreviewDataStore
{
    var presenter: PreviewPresentationLogic?
    var worker: PreviewWorker?
    //var name: String = ""
    
    // MARK: Do something
    
    func doSomething(request: Preview.Something.Request)
    {
        worker = PreviewWorker()
        worker?.doSomeWork()
        
        let response = Preview.Something.Response()
        presenter?.presentSomething(response: response)
    }
}