//
//  HomeScreen.swift
//  ProjetoCusco
//
//  Created by Roberto Edgar Geiss on 01/08/24.
//

import SwiftUI
import SwiftfulRouting

struct HomeScreen: View
{
    var body: some View
    {
        RouterView { _ in
            ScrollView
            {
                Text("Em desenvolvimento")
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}
