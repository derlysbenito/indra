//
//  DBMoviesTableViewController.swift
//  Indra
//
//  Created by Derlys H. on 1/25/21.
//  Copyright © 2021 derlys. All rights reserved.
//

import UIKit

class DBMoviesTableViewController: DBBaseViewController, UITableViewDataSource, UITableViewDelegate{
    
    var movieViewModelController : DBMoviesViewModelController!
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.movieViewModelController = DBMoviesViewModelController()
        
        loadData()
    }
    
    // MARK: - Data
    
    private func loadData(){
        self.movieViewModelController.getMovies(completion: {
            self.tableView.reloadData()
        }) {
            //error
        }
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showDetailSID"{
            let index = self.tableView.indexPath(for: sender as! UITableViewCell)
            let movieSelected = self.movieViewModelController.moviesViewModel[index!.row]
            
            let dvc = segue.destination as! DBMovieDetailCollectionViewController
            dvc.title = movieSelected.title
            dvc.movieSelected = movieSelected
        }
    }
    
    // MARK: - TableViewDataSource
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.movieViewModelController.moviesViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let movie = self.movieViewModelController.moviesViewModel[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTVC", for: indexPath) as! DBMovieTableViewCell
        cell.bindCellWithModel(model: movie)
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == self.movieViewModelController.moviesViewModel.count - 1 {
            loadData()
        }
    }
    
}
