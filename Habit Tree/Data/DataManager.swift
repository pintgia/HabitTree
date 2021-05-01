//
//  HTUserDefaultsManager.swift
//  Habit Tree
//
//  Created by Gian Pinto on 4/23/21.
//

import Foundation




struct Tree {
    // CS: There are referred to as "tables" or "models" in database vernacular
    // Make sure each models have ids
    var id: Int
    var name: String
   // var actions: [Action: Bool]
    var currentStage: Int
    var totalStages: Int
    var habitStreak: Bool
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
    func createData(new key: String, of value: [ String: Bool ]) {
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
