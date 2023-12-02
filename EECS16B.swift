//
//  EECS16B.swift
//  cal eva
//
//  Created by 商子岳 on 2023/12/2.
//


import SwiftUI

struct EECS16B: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("EECS16B")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .padding(.top, 20)

                overallRatingView
                ratingDistributionView
                reviewsView
            }
            .padding(.horizontal)
        }
    }

    var overallRatingView: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray.opacity(0.2))
                .frame(height: 100)

            Text("8.5/10")
                .font(.title)
                .bold()
                .foregroundColor(Color.green)
        }
        .padding(.horizontal, 20)
    }

    var ratingDistributionView: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Rating Distribution")
                .font(.headline)
                .foregroundColor(Color.black)

            ratingBar(percentage: 70, starCount: 5)
            ratingBar(percentage: 30, starCount: 4)
            ratingBar(percentage: 15, starCount: 3)
            ratingBar(percentage: 4, starCount: 2)
            ratingBar(percentage: 10, starCount: 1)
        }
        .padding(.horizontal, 20)
    }

    var reviewsView: some View {
        VStack(alignment: .leading) {
            Text("Reviews")
                .font(.headline)
                .foregroundColor(Color.black)
                .padding(.bottom, 5)

            Text("CS61B was probably the hardest class I have ever taken. Fortunately, Hug was easily accessible outside of class and the homework was minimal. He was also such a character. Project 3 was overly difficult and the class was too theoretical for me. Discussions and lab sections were pointless.")
                .font(.footnote)
                .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadius(10)
        }
        .padding(.horizontal, 20)
    }

    func ratingBar(percentage: Int, starCount: Int) -> some View {
        HStack {
            Text("\(starCount) Star")
                .font(.footnote)
                .frame(width: 60, alignment: .leading)

            GeometryReader { geometry in
                RoundedRectangle(cornerRadius: 5)
                    .fill(percentage > 20 ? Color.green : Color.red)
                    .frame(width: geometry.size.width * CGFloat(percentage) / 100, height: 10)
            }
        }
        .frame(height: 10)
    }
}

// Preview
struct EECS16B_Previews: PreviewProvider {
    static var previews: some View {
        EECS16B()
    }
}
