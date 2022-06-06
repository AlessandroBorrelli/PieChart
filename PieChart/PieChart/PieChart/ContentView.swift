import SwiftPieChart



PieChartView(
    values: [1300, 500, 300],
    names: ["Rent", "Transport", "Education"],
    formatter: {value in String(format: "$%.2f", value)})
