// Adam Kaum on 09.05.2024

import SwiftUI



struct ContentView: View {
    
    
    var body: some View {
        
        ZStack {
            
            BackgroudView(topColor: .blue, bottomColor: .lightBlue)
            
            
            VStack{
                CityNameView(cityName: "Cupertino, CA")
                
                
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 76)
                    
                    
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
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
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


struct BackgroudView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    
    var body: some View {
        LinearGradient(colors: [topColor, bottomColor], startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}


struct CityNameView: View {
    
    var cityName: String
    
    var body: some View {
        
        Text(cityName)
            .font(.system(size: 34, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding(55)
        
    }
}


struct MainWeatherStatusView:  View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 190, height: 190)
            
            
            Text("\(temperature)°")
                .font(.system(size: 74, weight: .medium))
                .foregroundStyle(.white)
            
        }
        .padding(.bottom, 55)
    }
}



