//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Ronan Mak on 3/9/2022.
//

import SwiftUI

struct FrameworkGridView: View {

    @StateObject var viewModel = FrameworkGridViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(
                        framework: framework,
                        isShowingDetailView: $viewModel.isShowingDetailView
                    )) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("framework")
        }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

