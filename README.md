# UITableView Tutorial For Swift 3
### How to create a UITableView in Swift 3 using the minimum amount of Swift 3 code in a readable fashion. This repo was created for the intent of understanding all requirements for a single UITableView which lives in a ViewController.

![alt text](https://raw.githubusercontent.com/MattAndrzejczuk/How-To-Create-A-UITableView-Programmatically-/master/demo.png)

Create a UITableView programatically in Swift.

Use the `ViewController.swift` file as a scaffold if you need a quick reference on creating a very simple UITableView and then populating it with an array of strings.


### 1.
```swift
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

```






### 2.
```swift

func initializeTableView() {
    let rect = CGRect(x: 100, y: 100, width: 300, height: 400)
    self.tableViewMain = UITableView(frame: rect)
    self.tableViewMain.register(UITableViewCell.self, forCellReuseIdentifier: "cellThing");
    self.tableViewMain.delegate = self
    self.tableViewMain.dataSource = self
    self.view.addSubview(tableViewMain)
    self.tableViewMain.reloadData()
}
```


### 3.
```swift


override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = .systemBlue
    self.initializeTableView()
}
 
```


### 4.
```swift
 

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    var cell : UITableViewCell = self.tableViewMain.dequeueReusableCell(withIdentifier: "cellThing") as! UITableViewCell
    cell.textLabel!.text = tvitems[indexPath.row];
    return cell
}


func numberOfSections(in tableView: UITableView) -> Int {
    return 1;
}

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return tvitems.count;
}
```
