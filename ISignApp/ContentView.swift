import SwiftUI

struct ContentView: View {
    @AppStorage("isDarkMode") private var isDarkMode = true

    var body: some View {
        NavigationView {
            TabView {
                VStack(spacing: 20) {
                    Text("Import IPA")
                        .font(.headline)
                    Button("Sign & Install") {
                        // action
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
                .tabItem {
                    Label("Home", systemImage: "house")
                }

                VStack(spacing: 20) {
                    Text("Import Certificate (.isigncert)")
                        .font(.headline)
                }
                .tabItem {
                    Label("Certs", systemImage: "person.crop.circle")
                }
            }
            .preferredColorScheme(isDarkMode ? .dark : .light)
            .navigationTitle("ISign")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Toggle(isOn: $isDarkMode) {
                        Image(systemName: isDarkMode ? "moon.fill" : "sun.max.fill")
                    }
                    .toggleStyle(SwitchToggleStyle())
                }
            }
        }
    }
}
