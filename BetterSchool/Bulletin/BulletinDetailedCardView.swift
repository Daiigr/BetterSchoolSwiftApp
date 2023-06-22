//
//  BulletinDetailedCardView.swift
//  BetterSchool
//
//  Created by Daniel Grbac Bravo on 6/16/23.
//

import SwiftUI

struct BulletinDetailedCardView: View {
    let bulletinCardData: BulletinCardData
    let id: Namespace.ID

    @Binding var selectedCard: BulletinCardData?
    @State private var swipeOffset = CGSize.zero
    @State private var isShowing = true

    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    ZStack {
                        Image(bulletinCardData.image)
                            .resizable()
                            .scaledToFill()
                            .matchedGeometryEffect(id: "\(bulletinCardData.id)-image", in: id)

                        VStack(alignment: .leading, spacing: 12) {
                            Text(bulletinCardData.description)
                                .foregroundColor(.secondary)
                                .padding(.vertical, 30)
                                .matchedGeometryEffect(id: "\(bulletinCardData.id)-description", in: id)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)

                            Text(bulletinCardData.title)
                                .font(.largeTitle.bold())
                                .padding()
                                .foregroundColor(bulletinCardData.titleColor)
                                .frame(width: 300, alignment: .leading)
                                .matchedGeometryEffect(id: "\(bulletinCardData.id)-title", in: id)
                        }
                        .frame(maxWidth: UIScreen.main.bounds.size.width, maxHeight: .infinity)
                        .padding()
                        .edgesIgnoringSafeArea(.all)
                        .matchedGeometryEffect(id: "\(bulletinCardData.id)-TextZStack", in: id)
                    }
                    .frame(maxWidth: UIScreen.main.bounds.size.width ,maxHeight: UIScreen.main.bounds.size.width)
                    .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 5)
                    .matchedGeometryEffect(id: "\(bulletinCardData.id)-CardZStack", in: id)

                    VStack {
                        MarkdownRendererView(markdown: bulletinCardData.detailedMarkdownDescrition)
                    }
                    .frame(maxWidth: UIScreen.main.bounds.size.width - 32)

                    Spacer()
                }
                .shadow(color: Color.black.opacity(0.2), radius: 50, x: 0, y: 5)
                .frame(minHeight: UIScreen.main.bounds.size.height, alignment: .top)
            }

            if selectedCard != nil {
                Button(action: {
                    withAnimation(.spring()) {
                        selectedCard = nil
                    }
                }, label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.largeTitle)
                        .foregroundStyle(.ultraThinMaterial)
                        .padding()
                })
                .frame(alignment: .trailing)
                .position(x: UIScreen.main.bounds.size.width - 50, y: 60)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            swipeOffset = value.translation
                        }
                        .onEnded { value in
                            if swipeOffset.width < -100 {
                                withAnimation(.spring()) {
                                    selectedCard = nil
                                }
                            } else {
                                swipeOffset = CGSize.zero
                            }
                        }
                )
                .offset(x: swipeOffset.width < -140 ? -((140 + swipeOffset.width) * 0.2) : swipeOffset.width, y: 0)
                .opacity(Double(1 - abs(swipeOffset.width / 500)))
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
    }
}
