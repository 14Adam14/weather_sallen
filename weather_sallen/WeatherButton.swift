import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    
    var body: some View {
        
        Text(title)
            .frame(width: 290, height: 60)
            .background(backgroundColor.gradient)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .clipShape(RoundedRectangle(cornerRadius: 15))
        
    }
}


struct WeatherButtonPreviews: PreviewProvider {
    static var previews: some View {
        WeatherButton(title: "dsdsd", textColor: .white, backgroundColor: .blue)
    }
}
