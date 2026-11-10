import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled

    var backgroundColor: Color
    var textColor: Color
    var borderColor: Color = .clear

    private let shape = RoundedRectangle(cornerRadius: 20)

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.custom("Poppins-Medium", size: 20, relativeTo: .body))
            .foregroundStyle(textColor)
            .frame(maxWidth: .infinity, minHeight: 61.5)
            .background {
                shape
                    .fill(backgroundColor)
                    .shadow(color: .black.opacity(0.25), radius: 4, y: 3)
            }
            .overlay {
                shape.strokeBorder(borderColor, lineWidth: 1)
            }
            .contentShape(shape)
            .opacity(isEnabled ? (configuration.isPressed ? 0.85 : 1) : 0.5)
            .animation(.easeOut(duration: 0.15), value: configuration.isPressed)
    }
}
