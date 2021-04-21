//
//  SwiftUIView.swift
//  Habit Tree
//
//  Created by Gian Pinto on 4/21/21.
//

import SwiftUI


struct SwiftUIView: View {
    
    @State var pickerSelectedItem = 0
    
    @State var dataPoints: [[CGFloat]] = [
        
        [50, 100, 150, 30, 40],
        [150, 100, 50, 200, 10],
        [10, 20, 30, 50, 100]
    ]
    
    
    var body: some View {
        ZStack {
            
            Color(#colorLiteral(red: 0.67264992, green: 0.8586810231, blue: 0.9174140096, alpha: 1)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                
                Text("Weekly Activity")
                    .font(.system(size: 34))
                    .fontWeight(.heavy)
                
                Picker(selection: $pickerSelectedItem, label: Text("")) {
                    Text("Weekday").tag(0)
                    Text("Weekend").tag(1)
                    Text("All").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal, 24)
                
                
                    
                HStack (spacing: 16) {
                    BarView(value: dataPoints[pickerSelectedItem][0])
                    BarView(value: dataPoints[pickerSelectedItem][1])
                    BarView(value: dataPoints[pickerSelectedItem][2])
                    BarView(value: dataPoints[pickerSelectedItem][3])
                    BarView(value: dataPoints[pickerSelectedItem][4])
                    
                }.padding(.top, 24)
                .animation(.default)
            }
          }
        }
    
      }

struct BarView: View {
    var value: CGFloat
    var body: some View {
        
        //Sunday
        VStack{
            ZStack (alignment: .bottom) {
                //If height increases in increments of 50
                Capsule().frame(width: 30, height: 200)
                    .foregroundColor(Color(#colorLiteral(red: 0.5920755267, green: 0.8305289745, blue: 0.890037179, alpha: 1)))
                Capsule().frame(width: 30, height: value)
                    .foregroundColor(.white)
            }
            Text("D").padding(.top, 8)
    }
        
}
    
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
