//
//  UserDefaultsPersistence.swift
//  BucketList
//
//  Created by Vitor Lentos on 07/10/21.
//

import Foundation

class UserDefaultsPersistence {
    
    let defaults = UserDefaults.standard
    var items = [Item]()
    //De objeto para Data
    let encoder = JSONEncoder()
    //De Data para objeto
    let decoder = JSONDecoder()
    
    
    func fetchItems() {
        
        guard let data = defaults.value(forKey: UserDefaults.Keys.TodoItemKey) as? Data else { return }
        
        //Podemos colocar o Try como opcional e um ?? para setar se ele der errado
        //items = try? decoder.decode([Item].self, from: data) ?? []
        //Forçando o try, porém, pode crashar
        //items = try! decoder.decode([Item].self, from: data)
        do {
            items = try decoder.decode([Item].self, from: data)
        } catch {
            print(error)
        }
        
    }
    
    func save(newItem item: Item) {
        items.append(item)
        save()
    }
    
    func save() {
        guard let encodedData = try? encoder.encode(items) else { return }
        defaults.set(encodedData, forKey: UserDefaults.Keys.TodoItemKey)
    }
    
    func toggleItem(at index: Int) {
        items[index].done.toggle()
        save()
    }
    
}
