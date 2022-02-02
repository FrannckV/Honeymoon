//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Frannck Villanueva on 17/01/22.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - PROPERTIES
    @Binding var showGuideView: Bool
    @Binding var showInfoView: Bool
    
    let haptics = UINotificationFeedbackGenerator()
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                playSound(sound: "sound-click", type: "mp3")
                haptics.notificationOccurred(.success)
                showInfoView.toggle()
            }, label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
                    .tint(.primary)
            }) //: BUTTON
                .sheet(isPresented: $showInfoView) {
                    InfoView()
                }
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
                playSound(sound: "sound-click", type: "mp3")
                haptics.notificationOccurred(.success)
                showGuideView.toggle()
            }, label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size:24, weight: .regular))
                    .tint(.primary)
            }) //: BUTTON
                .sheet(isPresented: $showGuideView) {
                    GuideView()
                }
        } //: HSTACK
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    
    @State static var showGuide: Bool = false
    @State static var showInfo: Bool = false
    static var previews: some View {
        HeaderView(showGuideView: $showGuide,showInfoView: $showInfo)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
