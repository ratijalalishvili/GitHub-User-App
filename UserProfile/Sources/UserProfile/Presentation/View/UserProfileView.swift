//
//  SwiftUIView.swift
//  
//
//  Created by Rati Jalalishvili on 17.05.25.
//

import SwiftUI
import CoreNavigation

public struct UserProfileView: View {
    @ObservedObject private var viewModel: UserProfileViewModel
    private var router: any Router
    
    public init(viewModel: UserProfileViewModel, router: any Router) {
        self.viewModel = viewModel
        self.router = router
    }
    
    public var body: some View {
        ZStack {
            Color.init(hex: "#0D1117")
                .ignoresSafeArea()
            
            VStack(spacing: 16) {
                profilePicture
                
                Text(viewModel.userProfile?.name ?? "")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
                
                Text("@" + (viewModel.userProfile?.login ?? ""))
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                
                followerFollowing

                Spacer()
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    router.popTopView()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.white)
                }
            }
        }
        .task {
            await viewModel.getUserProfile()
        }
    }
    
    
    @ViewBuilder
    private var profilePicture: some View {
        AsyncImage(url: viewModel.userProfile?.avatarURL) { image in
            image
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay { Circle().stroke(style: .init(lineWidth: 1))}
        } placeholder: {
            Image(systemName: "person.crop.circle")
                .resizable()
                .foregroundStyle(.white)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay { Circle().stroke(style: .init(lineWidth: 1))}
        }
    }
    
    @ViewBuilder
    private var followerFollowing: some View {
        HStack(spacing: 20) {
            VStack {
                Text("Followers")
                    .font(.headline)
                    .bold()
                    .foregroundStyle(.white)
                Text("\(viewModel.userProfile?.followers ?? 0)")
                    .font(.headline)
                    .bold()
                    .foregroundStyle(.white)
            }
            
            VStack {
                Text("Followings")
                    .font(.headline)
                    .bold()
                    .foregroundStyle(.white)
                Text("\(viewModel.userProfile?.following ?? 0)")
                    .font(.headline)
                    .bold()
                    .foregroundStyle(.white)
            }
        }
    }
}


extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255
        let g = Double((rgb >> 8) & 0xFF) / 255
        let b = Double(rgb & 0xFF) / 255
        
        self.init(red: r, green: g, blue: b)
    }
}
