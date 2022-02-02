//
//  FooterView.swift
//  Honeymoon
//
//  Created by Frannck Villanueva on 17/01/22.
//

import SwiftUI

struct FooterView: View {
    // MARK: - PROPERTIES
    @Binding var showBookingAlert: Bool
    
    let haptics = UINotificationFeedbackGenerator()
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light))
            
            Spacer()
            
            Button(action: {
                playSound(sound: "sound-click", type: "mp3")
                haptics.notificationOccurred(.success)
                showBookingAlert.toggle()
            }, label: {
                Text("Book Destination".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                    .tint(.pink)
                    .background(
                        Capsule()
                            .stroke(.pink, lineWidth: 2)
                    )
            }) //: BACKGROUND
            
            Spacer()
            
            Image(systemName: "heart.circle")
                .font(.system(size: 42, weight: .light))
        } //: HSTACK
        .padding()
    }
}


// MARK: - PREVIEW
struct FooterView_Previews: PreviewProvider {
    @State static private var showAlert: Bool = false
    static var previews: some View {
        FooterView(showBookingAlert: $showAlert)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
