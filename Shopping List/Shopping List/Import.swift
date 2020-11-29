//
//  Import.swift
//  Shopping List
//
//  Created by Ahmad Sawan on 2020-11-28.
//


import Foundation

import Foundation
import SwiftUI
import Combine

struct Task : Identifiable {
    var id = String()
    var toDoItem = String()

}

class TaskStore : ObservableObject {
    @Published var tasks = [Task]()
    

}
