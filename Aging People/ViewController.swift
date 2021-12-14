

import UIKit

class ViewController: UIViewController {
    
    
    

    @IBOutlet weak var tableViwe1: UITableView!
    
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var Name: UILabel!
    
    
    
    let ArrName=["JOli","Reem","Adim","Mark","Norah","Amal","Maha","Sleem","Seed","Abduallah","Jaki","Hamad"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViwe1.delegate=self
        tableViwe1.dataSource=self
        // Do any additional setup after loading the view.
    }

}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrName.count
        
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
       let cell=tableViwe1.dequeueReusableCell(withIdentifier: "cell")!
        let names=ArrName[indexPath.row]
       cell.textLabel?.text="\(names)"
       let RandomAge=Int.random(in: 5...95)
      // cell.?.text="\(names)"
       cell.detailTextLabel?.text="\(RandomAge) years old"
        
       
       // AgeLabel.text="\(RandomAge) years old"
        
          //NameLabel.text="\(ArrName)"

        return cell
    }
}

