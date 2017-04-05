import UIKit

class Dojo {
    var roomName: String
    var occupants: [String] = [String] ()
    var capacity: Int = 0
    
    
    init?(_ roomName: String){
        guard !roomName.isEmpty else{
            return nil
        }
        
        self.roomName = roomName

    }
    var spaceAvailable: Int{
        return capacity - occupants.count
    }
    func addPerson(_ firstName: String, _ lastName: String)-> Void{
        var fullName: String{
            get{
                let fname = firstName
                let lname = lastName
                
                let bothNames = "\(fname) \(lname)"
                return bothNames
            }
            set{
                
                fullName = newValue
            }
            
}
    
    self.occupants.append(fullName)
        print(self.occupants)
    
    }

}

class LivingSpace: Dojo{
    override init?(_ roomName: String){
        super.init(roomName)!
        self.capacity = 4
    
    }
   
    func isVacant()-> Bool{
        if self.occupants.count < self.capacity{
        
            return true
        }
        else{
            return false
        }
        
    }
    
    
}

class WorkSpace: Dojo{
    override init?(_ roomName: String){
        super.init(roomName)!
        self.capacity = 6
    }
}
var  amity = LivingSpace("Awesome")!
print(amity.addPerson("Paul", "Kahohi"), amity.capacity)



