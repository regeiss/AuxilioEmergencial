//
//  ContentView.swift
//  AuxilioEmergencial
//
//  Created by Roberto Edgar Geiss on 29/10/24.
//

import SwiftUI
import SwiftfulRouting

enum Tabs: String, CaseIterable
{
    case home
    case matches
    case profile
    case responsavel
    case settings
    case tags
}

struct ContentView: View {
    
    @AppStorage("needsAppOnboarding") private var needsAppOnboarding: Bool = true
    @State private var selectedTab: Tabs = .home
    
    var body: some View
    {
        TabView(selection: $selectedTab)
        {
            HomeScreen()
                .tag(Tabs.home)
                .tabItem {
                    Image(systemName: "house")
                }
            
            ResponsavelListaScreen()
                .tag(Tabs.responsavel)
                .tabItem {
                    Image(systemName: "person.badge.plus")
                }
            
            AbrigoListaScreen()
                .tag(Tabs.settings)
                .tabItem {
                    Image(systemName: "map")
                }
            
            UserProfileView()
                .tag(Tabs.profile)
                .tabItem {
                    Image(systemName: "person")
                }
            
            AjustesScreen()
                .tag(Tabs.settings)
                .tabItem {
                    Image(systemName: "gear")
                }
        }
        .toolbarBackground(.indigo, for: .tabBar)
        .toolbarBackground(.visible, for: .tabBar)
        .toolbarColorScheme(.dark, for: .tabBar)
        .onChange(of: needsAppOnboarding) {
            if needsAppOnboarding {
                // Scenario #2: User has completed app onboarding during current app launch
                // appSetupState = "App setup"
            }
        }
        .sheet(isPresented:$needsAppOnboarding) {
            // Scenario #1: User has NOT completed app onboarding
            OnBoardingView()
        }
    }
}
