//
//  TabBarView.swift
//  CustomTabBar
//
//  Created by Julien Le Bren on 29/11/2020.
//

import SwiftUI

struct TabBarView: View {
    enum Tab: Int {
        case first, second
    }
    
    private var firstView = FirstView()
    private var secondView = SecondView()
    
    @State private var selectedTab = Tab.first
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                if selectedTab == .first {
                    firstView
                }
                else if selectedTab == .second {
                    NavigationView {
                        VStack(spacing: 0) {
                            secondView
                            tabBarView
                        }
                    }
                }
            }
            .animation(nil)
            
            if selectedTab != .second {
                tabBarView
            }
        }
    }
    
    var tabBarView: some View {
        VStack(spacing: 0) {
            Divider()
            
            HStack(spacing: 20) {
                tabBarItem(.first, title: "First", icon: "hare", selectedIcon: "hare.fill")
                tabBarItem(.second, title: "Second", icon: "tortoise", selectedIcon: "tortoise.fill")
            }
            .padding(.top, 8)
        }
        .frame(height: 50)
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
    
    func tabBarItem(_ tab: Tab, title: String, icon: String, selectedIcon: String) -> some View {
        ZStack(alignment: .topTrailing) {
            VStack(spacing: 3) {
                VStack {
                    Image(systemName: (selectedTab == tab ? selectedIcon : icon))
                        .font(.system(size: 24))
                        .foregroundColor(selectedTab == tab ? .primary : .black)
                }
                .frame(width: 55, height: 28)
                
                Text(title)
                    .font(.system(size: 11))
                    .foregroundColor(selectedTab == tab ? .primary : .black)
            }
        }
        .frame(width: 65, height: 42)
        .onTapGesture {
            selectedTab = tab
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
