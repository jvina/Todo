//
//  ViewController.swift
//  Todo
//
//  Created by Jill Vina on 2020-10-12.
//

import UIKit

class ViewController: UIViewController {
    
    let todos = [
        Todo(title: "Buy pancake mix."),
        Todo(title: "Sign up for a gym membership."),
        Todo(title: "Buy thanksgiving groceries.")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "checked cell", for: indexPath) as! CheckTableViewCell
        
        let todo = todos[indexPath.row]
        
        cell.set(title: todo.title, checked: todo.isComplete)
        
        return cell
    }
}
