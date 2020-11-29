//
//  SecondView.swift
//  CustomTabBar
//
//  Created by Julien Le Bren on 29/11/2020.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack {
            NavigationLink(destination: ThirdView()) {
                Text("Second View, tap to navigate")
                    .font(.headline)
            }
        }
        .navigationTitle("Second title")
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color.orange)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
