//
//  FavoriteDogsViewControllerSpec.swift
//  DogsAppTests
//
//  Created by gustavo.s.barros on 01/06/20.
//  Copyright © 2020 Thiago Lioy. All rights reserved.
//

@testable import DogsApp
import Quick
import Nimble

class FavoriteDogsViewControllerSpec: QuickSpec {
    
    override func spec() {
    
        var sut: FavoriteDogsViewControllerStub!
        var tableView: UITableView!
        
        describe("Favorite Dogs List") {
            
            beforeSuite {
                tableView = UITableView(frame: .zero)
                sut = FavoriteDogsViewControllerStub(tableView: tableView)
            }
            
            context("when view will appear", closure: {
                
                beforeEach {
                    sut.viewWillAppear(true)
                }
                
                it("should call view will appear method") {
                    expect(sut.viewWillAppearWasCalled).to(equal(true))
                }
                
                it("should setup data source") {
                    expect(sut.setupDatasourceWasCalled).to(equal(true))
                }
                
            })
        }
    }
}
