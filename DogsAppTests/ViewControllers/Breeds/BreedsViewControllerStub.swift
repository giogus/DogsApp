//
//  BreedsViewControllerStub.swift
//  DogsAppTests
//
//  Created by gustavo.s.barros on 01/06/20.
//  Copyright © 2020 Thiago Lioy. All rights reserved.
//

@testable import DogsApp
import UIKit

class BreedsViewControllerStub: BreedsViewController {
    
    var viewDidLoadWasCalled = false
    var viewWillAppearWasCalled = false
    var setupDatasourceWasCalled = false
    var setupSearchBarWasCalled = false
    var fetchBreedsWasCalled = false
    
    init(searchBar: UISearchBar, activityIndicator: UIActivityIndicatorView, tableView: UITableView) {
        super.init(nibName: nil, bundle: nil)
        self.searchBar = searchBar
        self.activityIndicator = activityIndicator
        self.tableView = tableView
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewDidLoadWasCalled = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewWillAppearWasCalled = true
    }
    
    override func setupDatasource() {
        super.setupDatasource()
        setupDatasourceWasCalled = true
    }
    
    override func setupSearchBar() {
        super.setupSearchBar()
        setupSearchBarWasCalled = true
    }
    
    override func fetchBreeds(){
        super.fetchBreeds()
        fetchBreedsWasCalled = true
    }
}
