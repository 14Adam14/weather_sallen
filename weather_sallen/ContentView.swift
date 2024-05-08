// Adam Kaum on 09.05.2024

import SwiftUI



struct ContentView: View {
    
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(colors: [.blue, .lightBlue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 34, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding(40)
                
                
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 190, height: 190)
                    
                    
                    Text("76°")
                        .font(.system(size: 74, weight: .medium))
                        .foregroundStyle(.white)
                    
                }
                .padding(.bottom, 45)
                    
                    
                    HStack(spacing: 26) {
                        WeatherDayView(dayOfWeek: "TUE",
                                       imageName: "cloud.sun.fill",
                                       tempereture: 69)
                        WeatherDayView(dayOfWeek: "WED",
                                       imageName: "sun.max.fill",
                                       tempereture: 76)
                        WeatherDayView(dayOfWeek: "THU",
                                       imageName: "wind.snow",
                                       tempereture: 48)
                        WeatherDayView(dayOfWeek: "FRI",
                                       imageName: "sunset.fill",
                                       tempereture: 55)
                        WeatherDayView(dayOfWeek: "SAT",
                                       imageName: "cloud.moon.bolt.fill",
                                       tempereture: 51)
                    }
                    
                    Spacer()
                    
                    
                
                Button(action: {
                    print("dsd")
                }, label: {
                    Text("Change Day Time")
                        .frame(width: 290, height: 60)
                        .background(.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                })
                
                
                   Spacer()

                
                
            }
            
            
            
        }
        
    }
    
    
}

#Preview {
    ContentView()
}


struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var tempereture: Int
    
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 17, weight: .medium, design: .default))
                .foregroundStyle(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 39, height: 39)
            
            Text("\(tempereture)°")
                .font(.system(size: 29, weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
    }
}
