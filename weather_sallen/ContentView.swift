// Adam Kaum on 09.05.2024

import SwiftUI



struct ContentView: View {
    
    @State private var isNight = false
    
    
    var body: some View {
        
        ZStack {
            
            BackgroudView(isNight: isNight)
            
            
            VStack{
                CityNameView(cityName: "Cupertino, CA")
                
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" :
                                      "cloud.sun.fill", temperature: 76)
                    
                    
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
                    isNight.toggle()
                }, label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .white,
                                  backgroundColor: .mint)
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
                //.font(.system(size: 17, weight: .medium, design: .default))
                .font(.subheadline)
                .foregroundStyle(.white)
            
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                 //.foregroundStyle(.pink)
                 //.foregroundStyle(.pink, .orange, .green)
                .aspectRatio(contentMode: .fit)
                .frame(width: 39, height: 39)
            
            Text("\(tempereture)°")
                //.font(.system(size: 29, weight: .medium, design: .default))
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.white)
        }
    }
}


struct BackgroudView: View {
    
    var isNight: Bool
    
    var body: some View {
        //        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray : .lightBlue], startPoint: .topLeading, endPoint: .bottomTrailing)
        //            .ignoresSafeArea()
        
        
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
    
}


struct CityNameView: View {
    
    var cityName: String
    
    var body: some View {
        
        Text(cityName)
           // .font(.system(size: 34, weight: .medium, design: .default))
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
        
    }
}



struct MainWeatherStatusView:  View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            
            Text("\(temperature)°")
                .font(.system(size: 72, weight: .medium))
                .foregroundStyle(.white)
            
        }
        .padding(.bottom, 55)
    }
}



