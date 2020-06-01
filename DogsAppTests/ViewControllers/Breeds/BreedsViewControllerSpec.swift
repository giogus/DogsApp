//
//  BreedsViewControllerSpec.swift
//  DogsAppTests
//
//  Created by gustavo.s.barros on 01/06/20.
//  Copyright © 2020 Thiago Lioy. All rights reserved.
//

@testable import DogsApp
import Quick
import Nimble

class BreedsViewControllerSpec: QuickSpec {
    
    override func spec() {
    
        var sut: BreedsViewControllerStub!
        var searchBar: UISearchBar!
        var activityIndicator: UIActivityIndicatorView!
        var tableView: UITableView!
        
        describe("Breeds List") {
            
            beforeSuite {
                searchBar = UISearchBar(frame: .zero)
                activityIndicator = UIActivityIndicatorView(frame: .zero)
                tableView = UITableView(frame: .zero)
                sut = BreedsViewControllerStub(searchBar: searchBar,
                                               activityIndicator: activityIndicator,
                                               tableView: tableView)
            }
            
            context("when view did load", closure: {
                
                beforeEach {
                    sut.viewDidLoad()
                }
                
                it("should call view did load method") {
                    expect(sut.viewDidLoadWasCalled).to(equal(true))
                }
                
                it("should setup search bar") {
                    expect(sut.setupSearchBarWasCalled).to(equal(true))
                }
                
                it("should fetch the breeds") {
                    expect(sut.fetchBreedsWasCalled).to(equal(true))
                }
                
            })
            
            context("when view will appear", closure: {
                
                beforeEach {
                    sut.viewWillAppear(true)
                }
                
                it("should call view will appear method") {
                    expect(sut.viewWillAppearWasCalled).to(equal(true))
                }
            })
            
            context("when the breed list changes", closure: {
                
                beforeEach {
                    sut.breeds = []
                }
                
                it("should setup datasource") {
                    expect(sut.setupDatasourceWasCalled).to(equal(true))
                }
            })
            
            context("when the search filter changes", closure: {
                
                beforeEach {
                    sut.filterBy = "new filter"
                }
                
                it("should setup datasource") {
                    expect(sut.setupDatasourceWasCalled).to(equal(true))
                }
            })
        }
    }
}
