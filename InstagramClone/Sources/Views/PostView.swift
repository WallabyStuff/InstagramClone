//
//  PostView.swift
//  InstagramClone
//
//  Created by 이승기 on 2022/07/31.
//

import SwiftUI

struct PostView: View {
    var post: Post
    @State var isFollowing = false
    @State var isLiked = false
    @State var isBookmarked = false
    @State var isNotInterested = false
    @State private var isShowingOptionDialog = false
    @State var showLike = false
    
    var body: some View {
        if isNotInterested == false {
            VStack(alignment: .leading) {
                HStack {
                    ZStack {
                        Circle()
                            .stroke(LinearGradient.instaGradient, lineWidth: 1.5)
                            .frame(width: 38, height: 38)
                        
                        Image(post.user.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 32)
                            .clipShape(Circle())
                    }
                    
                    VStack(alignment: .leading) {
                        Text(post.user.name)
                            .font(.system(size: 14))
                        Text(post.description)
                            .font(.system(size: 12))
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        isFollowing.toggle()
                    }, label: {
                        Text(isFollowing ? "Following" : "Follow")
                            .font(.system(size: 12, weight: .medium))
                    })
                    .frame(height: 32)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    .background(.gray.opacity(0.1))
                    .cornerRadius(8)
                    .padding(.trailing, 12)
                    
                    Button {
                        isShowingOptionDialog.toggle()
                    } label: {
                        Image("option")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20)
                            .foregroundColor(Color(uiColor: .label))
                    }
                    .confirmationDialog("OptionDialog",
                                        isPresented: $isShowingOptionDialog) {
                        Button(role: .none) {
                            presentActionSheet()
                        } label: {
                            Text("Share")
                        }
                        
                        Button(role: .destructive) {
                            withAnimation {
                                isNotInterested.toggle()
                            }
                        } label: {
                            Text("Not interested")
                        }
                    }
                }
                .padding(.leading, .DEFAULT_HORIZONTAL_SPACING)
                .padding(.trailing, .DEFAULT_HORIZONTAL_SPACING)
                
                GeometryReader { proxy in
                    TabView {
                        ForEach(post.images, id: \.self) { image in
                            Image(image)
                                .resizable()
                                .scaledToFill()
                        }
                    }
                    .frame(width: proxy.size.width, height: proxy.size.width)
                    .background(Color(uiColor: .systemGray6))
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .onTapGesture(count: 2) {
                        withAnimation(.spring(response: 0.2 ,dampingFraction: 0.6, blendDuration: 0.7)) {
                            isLiked = true
                            showLike = true
                            makeImpactFeedback()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            withAnimation {
                                showLike = false
                            }
                        }
                    }
                    .overlay(
                        Image("heart-filled")
                            .resizable()
                            .frame(width: 84, height: 84)
                            .foregroundColor(.white)
                            .shadow(color: .black.opacity(0.1), radius: 20, x: 0, y: 4)
                            .isHidden(!showLike)
                            .scaleEffect(showLike ? 1 : 0.2)
                    )
                }.aspectRatio(contentMode: .fit)
                
                HStack(spacing: 16) {
                    Button {
                        isLiked.toggle()
                    } label: {
                        Image(isLiked ? "heart-filled" : "heart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24)
                            .foregroundColor(isLiked ? .red : Color(uiColor: .label))
                    }
                    
                    Button {
                        // do something
                    } label: {
                        Image("chat_bubble")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24)
                    }
                    
                    Button {
                        // do something
                    } label: {
                        Image("send")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24)
                    }
                    
                    Spacer()
                    
                    Button {
                        isBookmarked.toggle()
                    } label: {
                        Image(isBookmarked ? "bookmark-filled" : "bookmark")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24)
                            .foregroundColor(Color(uiColor: .label))
                    }
                }
                .padding(.top, 4)
                .padding(.leading, .DEFAULT_HORIZONTAL_SPACING)
                .padding(.trailing, .DEFAULT_HORIZONTAL_SPACING)
                .padding(.bottom, 4)
                
                Text(post.content)
                    .font(.system(size: 14))
                    .padding(.top, 4)
                    .padding(.leading, .DEFAULT_HORIZONTAL_SPACING)
                    .padding(.trailing, .DEFAULT_HORIZONTAL_SPACING)
                    .padding(.bottom, 4)
            }
        }
    }
    
    private func presentActionSheet() {
        guard let urlShare = URL(string: "https://www.apple.com") else { return }
        let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true)
    }
    
    private func makeImpactFeedback() {
        let impactFeedback = UIImpactFeedbackGenerator(style: .light)
        impactFeedback.impactOccurred()
    }
}

struct PostView_Preview: PreviewProvider {
    static var previews: some View {
        return ContentView()
            .previewDevice(.init(rawValue: "iPhone 13 Pro"))
    }
}
