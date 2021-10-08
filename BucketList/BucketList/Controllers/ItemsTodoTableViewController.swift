//
//  ItemsTodoTableViewController.swift
//  BucketList
//
//  Created by Vitor Lentos on 07/10/21.
//

import UIKit

class ItemsTodoTableViewController: UITableViewController {
    
    let persistence = UserDefaultsPersistence()
    //let todoItems: [String] = ["Limpar a casa", "Alimentar o gato"]
    //let todoItems = [String]()
    //let todoItems =  Array<String>()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupRegisterNibCell()
        persistence.fetchItems()
        tableView.reloadData()
        print(NSHomeDirectory())
        
    }
    
    private func setupRegisterNibCell() {
        let cellNib = UINib(nibName: String(describing: TodoItemTableViewCell.self), bundle: Bundle.main)
        tableView.register(cellNib, forCellReuseIdentifier: String(describing: TodoItemTableViewCell.self))
    }
    
    @IBAction func didTapAddItem(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Adicionar novo item", message: nil, preferredStyle: .alert)
        let addItemAction = UIAlertAction(title: "Criar", style: .default) { [weak self] (action) in
            guard let self = self else { return }
            guard let title = textField.text?.trimmingCharacters(in: .whitespacesAndNewlines) else { return }
            let item = Item(title: title)
            self.persistence.save(newItem: item)
            self.reloadLastItem()
        }
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alert.addAction(addItemAction)
        alert.addAction(cancelAction)
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Criar nova tarefa"
            textField = alertTextField
        }
        
        present(alert, animated: true, completion: nil)
        
    }
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return persistence.items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TodoItemTableViewCell.self), for: indexPath) as? TodoItemTableViewCell else { return UITableViewCell() }
        let item = persistence.items[indexPath.row]
        cell.update(with: item)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Para dar o efeito e ela não ficar selecionada com fundo escuro
        tableView.deselectRow(at: indexPath, animated: true)
        persistence.toggleItem(at: indexPath.row)
        tableView.reloadData()
    }
    
    func reloadLastItem() {
        tableView.performBatchUpdates({
            let row = max(tableView.numberOfRows(inSection: 0), 0)
            tableView.insertRows(at: [IndexPath(row: row, section: 0)], with: .automatic)
        }, completion: nil)
    }

}
