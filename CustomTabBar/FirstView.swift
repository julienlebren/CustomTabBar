//
//  FirstView.swift
//  CustomTabBar
//
//  Created by Julien Le Bren on 29/11/2020.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("First View")
                    .font(.headline)
            }
            .navigationTitle("First title")
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .background(Color.yellow)
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
