import SwiftUI

struct TabBar: View {
    @Binding var selectedTab: Int

    private let icons = ["house", "book", "bookmark", "person"]

    var body: some View {
        HStack {
            ForEach(icons.indices, id: \.self) { index in
                Button {
                    selectedTab = index
                } label: {
                    Image(systemName: icons[index])
                        .font(.system(size: 26))
                        .foregroundColor(.bgBrown)
                        .frame(maxWidth: .infinity)
                        .frame(height: 52)
                        .background(
                            Capsule().fill(Color.black.opacity(selectedTab == index ? 0.07 : 0))
                        )
                }
            }
        }
        .padding(6)
        .background(
            Capsule()
                .fill(Color.white)
                .shadow(color: .black.opacity(0.2), radius: 8, y: 4)
        )
        .padding(.horizontal, 20)
        .padding(.bottom, 8)
    }
}

#Preview {
    TabBar(selectedTab: .constant(0))
}
