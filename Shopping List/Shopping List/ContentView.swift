//
//  ContentView.swift
//  Shopping List
//
//  Created by Ahmad Sawan on 2020-11-20.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var taskStore = TaskStore()
    @State var NewToDo : String = ""
    
    var searchBar : some View {
        HStack {
            TextField("Enter in a new item", text: self.$NewToDo)
            Button(action: self.addNewToDo, label: {
                Text("Add New")
            })
        }
    }
    func addNewToDo () {
        taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1), toDoItem: NewToDo))
        self.NewToDo = ""
        
    }
    
    var body: some View {
        NavigationView {
            VStack {
                searchBar
                List{
                    ForEach(self.taskStore.tasks) { task in
                        Text(task.toDoItem)
                    }
                    }
                }.navigationBarTitle("Shopping List")
            }
        }
    }

func move(from source : IndexSet, to destination : Int) {
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding()}
}
}
