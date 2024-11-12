//
//  AuxilioEmergencialApp.swift
//  AuxilioEmergencial
//
//  Created by Roberto Edgar Geiss on 29/10/24.
//

import SwiftUI
import SwiftData

@main
struct AuxilioEmergencialApp: App
{
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene
    {
        WindowGroup
        {
            ContentView()
        }
        .onChange(of: scenePhase)
        {
            switch scenePhase
            {
                case .active:
                    print("active")
                    prepareAppContext()
                    setAppVars()
                case .inactive:
                    print("inactive")
                case .background:
                    print("background")
                    saveContext()
                @unknown default:
                    fatalError()
            }
        }
    }
    
    func saveContext()
    {
        
    }
    
    func setAppVars()
    {
        
    }
    
    func prepareAppContext()
    {
        
    }
    
}
