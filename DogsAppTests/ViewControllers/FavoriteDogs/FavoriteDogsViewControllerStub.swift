//
//  FavoriteDogsViewControllerStub.swift
//  DogsAppTests
//
//  Created by gustavo.s.barros on 01/06/20.
//  Copyright © 2020 Thiago Lioy. All rights reserved.
//

@testable import DogsApp
import UIKit

class FavoriteDogsViewControllerStub: FavoriteDogsViewController {
    
    var viewWillAppearWasCalled = false
    var setupDatasourceWasCalled = false
    
    init(tableView: UITableView){
        super.init(nibName: nil, bundle: nil)
        self.tableView = tableView
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewWillAppearWasCalled = true
    }
    
    override func setupDatasource() {
        super.setupDatasource()
        setupDatasourceWasCalled = true
    }
}
