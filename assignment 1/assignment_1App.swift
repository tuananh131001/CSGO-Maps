//
//  assignment_1App.swift
//  assignment 1
//
//  Created by William on 12/07/2022.
//

import SwiftUI

@main
struct assignment_1App: App {
    var body: some Scene {
        WindowGroup {
            WelcomeView().environmentObject(MapModel())
        }
    }
}
