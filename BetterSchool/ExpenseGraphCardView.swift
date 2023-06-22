//
//  ExpenseGraphCardView.swift
//  BetterSchool
//
//  Created by Daniel Grbac Bravo on 5/14/23.
//

import SwiftUI
import SwiftUICharts

struct ExpenseGraphCardView: View {
    var namespace: Namespace.ID
    @Binding var show: Bool
    var body: some View {
        ZStack {
                   VStack(alignment: .leading, spacing: 12) {
                       Text("Expenses")
                           .font(.largeTitle).bold()
                           .matchedGeometryEffect(id: "ExpensesTitle", in: namespace)
                           .frame(maxWidth: .infinity, alignment: .leading)
                           .padding(.horizontal)
                       
                       HStack {
                           Text("Total")
                           Text("$1,234").bold()
                           Image(systemName: "chevron.up.circle")
                       }
                       .padding(.horizontal)
                       .matchedGeometryEffect(id: "TotalExpenses", in: namespace)

                       VStack {
                           BarChartView(data: ChartData(points: [12, 25, 30, 15,22, 5,7,8,7,6,5,4,3]), title: "Weekly Expenses", legend: "USD")
                               .padding()
                               .matchedGeometryEffect(id: "ExpensesGraph", in: namespace)
                               .frame(height: 200)
                       }
                       .padding()
                   }
                   .frame(height: 360)
                   .background(
                       RoundedRectangle(cornerRadius: 30)
                           .fill(Color(.systemGray4))
                           .matchedGeometryEffect(id: "GraphBackgroundColor", in: namespace)
                   )
                   .mask(
                       RoundedRectangle(cornerRadius: 30, style: .continuous)
                           .matchedGeometryEffect(id: "GraphMask", in: namespace)
                   )
                   .padding(20)
                   .shadow(color: Color.black.opacity(0.3) ,radius: 30, x: 0, y: 0)
                   .matchedGeometryEffect(id: "GraphVstack", in: namespace)
                   .opacity(show ? 0 : 1)
               }
    }
}

struct ExpenseGraphCardView_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        ExpenseGraphCardView(namespace: namespace, show: .constant(false))
    }
}
