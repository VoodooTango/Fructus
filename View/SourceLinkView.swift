//
//  SourceLinkView.swift
//  Fructus
//
//  Created by MAC on 02/07/22.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack{
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "http//wikipedia.org")!)
                Image(systemName: "arrow.up.right.square")
            }//HSTACK
            .font(.footnote)
        }//GROUPBOX
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
