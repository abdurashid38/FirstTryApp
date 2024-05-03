import UIKit

class TableView: UITableViewController {
    
    
    var array = ["applelogo", "iphone", "ipad", "applewatch"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Array"
    }

    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.imageView?.image = UIImage(systemName: array[indexPath.row])
        cell.textLabel?.text = array[indexPath.row]
        
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        array.remove(at: indexPath.row)
        
        tableView.reloadSections(IndexSet(integer: 0), with: .automatic)
    }
    
    
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView,
                            leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(
            style: .normal,
            title: "archive"
        ) { [weak self] (action, view, completionHandler) in
                                            completionHandler(true)
        }
        action.backgroundColor = .systemBlue
        
        return UISwipeActionsConfiguration(actions: [action])
             }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(
            style: .normal,
            title: "delete"
        ) { [weak self] (action, view, completionHandler) in
            self?.array.removeLast()
            self?.tableView.reloadData()
                                            completionHandler(true)
        }
        action.backgroundColor = .systemRed
        
        let action2 = UIContextualAction(
            style: .normal,
            title: "read"
        ) { [weak self] (action, view, completionHandler) in
            self?.array.removeLast()
            self?.tableView.reloadData()
                                            completionHandler(true)
        }
        action2.backgroundColor = .green
        
        return UISwipeActionsConfiguration(actions: [action, action2])
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let alertController = UIAlertController(title: "Add New Name", message: "", preferredStyle: .alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
               textField.placeholder = "Enter Second Name"
           }
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: { alert -> Void in
               let secondTextField = alertController.textFields![0] as UITextField
            
            self.array.append(secondTextField.text!)
            self.tableView.reloadData()
           })
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: {
               (action : UIAlertAction!) -> Void in })
           
           alertController.addAction(saveAction)
           alertController.addAction(cancelAction)
           
        self.present(alertController, animated: true, completion: nil)
        
        self.tableView.reloadData()
    }
    
    
    
}


