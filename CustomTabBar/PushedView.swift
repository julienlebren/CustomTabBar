//
//  PushedView.swift
//  CustomTabBar
//
//  Created by Julien Le Bren on 29/11/2020.
//

import SwiftUI

struct PushedView: View {
    var body: some View {
        VStack {
            Text("Third View with tabBar hidden")
                .font(.headline)
        }
        .navigationTitle("Third title")
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color.red.edgesIgnoringSafeArea(.bottom))
    }
}

struct PushedView_Previews: PreviewProvider {
    static var previews: some View {
        PushedView()
    }
}
