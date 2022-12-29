//
//  ContentView.swift
//  Restart
//
//  Created by Timon Davis on 12/22/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true;
    
    var body: some View {
        ZStack {
            if ( isOnboardingViewActive ) {
                OnboardingView()
            } else {
                HomeView();
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
