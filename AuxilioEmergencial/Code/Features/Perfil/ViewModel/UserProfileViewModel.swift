//
//  UserProfileViewModel.swift
//  ProjetoCusco
//
//  Created by Roberto Edgar Geiss on 15/07/24.
//


import SwiftUI
import Combine

class UserProfileViewModel: ObservableObject
{
//    @Injected(\.authenticationService)
//    private var authenticationService
//
//    @Published var authenticationState: AuthenticationState = .unauthenticated
//    @Published var errorMessage = ""
//    @Published var user: User?
//    @Published var provider = ""
//    @Published var displayName = ""
//    @Published var email = ""
//    @Published var photoURL: URL?
//    @Published var isGuestUser = false
//    @Published var isVerified = false
//
//    init() {
//        authenticationService.$user
//            .assign(to: &$user)
//
//        $user
//            .compactMap { user in
//                user?.isAnonymous
//            }
//            .assign(to: &$isGuestUser)
//
//        $user
//            .compactMap { user in
//                user?.isEmailVerified
//            }
//            .assign(to: &$isVerified)
//
//        $user
//            .compactMap { user in
//                user?.displayName ?? "N/A"
//            }
//            .assign(to: &$displayName)
//        
//        $user
//            .compactMap { user in
//                user?.email ?? "N/A"
//            }
//            .assign(to: &$email)
//        
//        $user
//            .compactMap { user in
//                if let providerData = user?.providerData.first {
//                    return providerData.providerID
//                }
//                else
//                {
//                    return user?.providerID
//                }
//            }
//            .assign(to: &$provider)
//
//    }
//
//    func deleteAccount() async -> Bool
//    {
//        return await authenticationService.deleteAccount()
//    }
//
//    func signOut()
//    {
//        authenticationService.signOut()
//    }
}
