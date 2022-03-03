//
//  HomeVIew.swift
//  CustomDatePicker-SwiftUI
//
//  Created by Juan Sebastian Orozco Buitrago on 3/2/22.
//

import SwiftUI

struct HomeView: View {
    
    //MARK: - PROPERTIES
    
    @State var currentDate: Date = Date()
    
    //MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20) {
                
                // Custom Date Picker....
                CustomDatePickerView(currentDate: $currentDate)
            }
            .padding(.vertical)
        }
        
        // Safe Area View...
        .safeAreaInset(edge: .bottom) {
            HStack {
                Button {
                    
                } label: {
                    Text("Add Task")
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color("Orange"), in: Capsule())
                }
                
                Button {
                    
                } label: {
                    Text("Add Reminder")
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color("Purple"), in: Capsule())
                }

            } //: HSTACK
            .padding(.horizontal)
            .padding(.top, 10)
            .foregroundColor(.white)
            .background(.ultraThinMaterial)
        }
    }
}

//MARK: - PREVIEW

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
