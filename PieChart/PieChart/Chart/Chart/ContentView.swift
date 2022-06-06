
import SwiftUI
import SwiftPieChart

struct ContentView: View {
    @State private var names = ["Work", "FreeTime", "Sleep"]
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 150.0)
            Text("Spent this month")
                .font(.largeTitle)
                .foregroundColor(.white)
            PieChartView(values: [8, 8, 8], names: names, formatter: {value in String(format: "%.0F hours", value)})
                .padding(7.0)
        }
        .background(Color(red: 21 / 255, green: 24 / 255, blue: 30 / 255, opacity: 1.0))
        .edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
