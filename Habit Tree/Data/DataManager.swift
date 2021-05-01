//
//  HTUserDefaultsManager.swift
//  Habit Tree
//
//  Created by Gian Pinto on 4/23/21.
//

import Foundation




class Tree: NSObject, NSCoding {

    
    // CS: There are referred to as "tables" or "models" in database vernacular
    // Make sure each models have ids
    var id: Int
    var name: String
   // var actions: [Action: Bool]
    var currentStage: Int
    var totalStages: Int
    var habitStreak: Bool
    
    init(id: Int, name: String, currentStage: Int,
         totalStages: Int, habitStreak: Bool) {
        self.id = id
        self.name = name
        self.currentStage = currentStage
        self.totalStages = totalStages
        self.habitStreak = habitStreak
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(id, forKey: "id")
        coder.encode(name, forKey: "name")
        coder.encode(currentStage, forKey: "currenStage")
        coder.encode(totalStages, forKey: "totalStages")
        coder.encode(habitStreak, forKey: "habitStreak")
    }
    
    required convenience init?(coder: NSCoder) {
        let id = coder.decodeInteger(forKey: "id")
        let name = coder.decodeObject(forKey: "name") as! String
        let currentStage = coder.decodeInteger(forKey: "currentStage")
        let totalStages = coder.decodeInteger(forKey: "totalStages")
        let habitStreak = coder.decodeBool(forKey: "habitStreak")
        self.init(id: id, name: name, currentStage: currentStage,
                  totalStages: totalStages, habitStreak: habitStreak)
        

    }
}




struct habitStreak {
    var streakCount: Int
}

struct Action: Hashable {
    var id: Int
    var note: String
}


class DataManager {
    
    // CS: This is referred to as a "singleton", a class that is instatiated ONE time only in the lifecycle of the application
    static let shared = DataManager()
    let store = UserDefaults.standard
    
    // Peep the function arguments, in Swift there are "internal" and "external" function argument names
    func createData(new key: String, of value: Data) {
        store.setValue(value, forKey: key)
        print("Created new key \(key) of value \(value)!")
    }
    
    func readData(of key: String) -> Any? {
        let data = store.object(forKey: key)
        return data
    }
    
    func updateData() {
        
    }
    
    func deleteData(of key: String) {
        store.removeObject(forKey: key)
        print("Deleted key \(key)!")
    }
    
    /*
    struct treeCollection{
        static var treeList: [Tree] = []
    }
    */
    
    
}
