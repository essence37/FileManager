//
//  File.swift
//  FileManager
//
//  Created by Пазин Даниил on 21.06.2020.
//  Copyright © 2020 Пазин Даниил. All rights reserved.
//

import UIKit

protocol File {
    var name: String { get }
    var tasksAmount: Int { get }
    func addSubtask(task: File)
}

class Task: File {
    public let name: String
    public var subTasks: [File] = []
    
    public var tasksAmount: Int {
        return subTasks.count
    }
    
    init(name: String) {
        self.name = name
    }
    
    public func addSubtask(task: File) {
        subTasks.append(task)
    }
}

