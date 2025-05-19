//
//  SwiftUIView.swift
//  
//
//  Created by Rati Jalalishvili on 16.05.25.
//

import SwiftUI
import CoreNavigation

public struct UserListView: View {
    @EnvironmentObject private var viewModel: UserListViewModel
    
    private var router: any Router
    
    public init(router: any Router) {
        self.router = router
    }
    
    
    public var body: some View {
        ZStack {
            Color.init(hex: "#0D1117")
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 16) {
                HStack(spacing: 16) {
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundStyle(.white)
                    
                    Text("User List")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.white)
                }.padding()
                List(viewModel.users) { user in
                    HStack(alignment: .center, spacing: 12) {
                        AsyncImage(url: user.avatarURL) { image in
                            image
                                .resizable()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                .overlay { Circle().stroke(style: .init(lineWidth: 1))}
                        } placeholder: {
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .foregroundStyle(.white)
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                .overlay { Circle().stroke(style: .init(lineWidth: 1))}
                        }
                        
                        Text(user.login)
                            .font(.title)
                            .foregroundStyle(.white)
                        Spacer()
                    }
                    .onTapGesture {
                        router.navigate(to: .userProfile(userId: user.id))
                    }
                    .padding(.vertical)
                    .listRowBackground(Color.clear)
                }
                .listStyle(.plain)
                .background(.clear)
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
