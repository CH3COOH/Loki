import SwiftUI

struct SakatsuSettingsView: View {
    var body: some View {
        Form {
            licenseSection
            versionSection
        }
    }
    
    private var licenseSection: some View {
        Section {
            NavigationLink(
                "Licenses",
                destination: LicensesScreen()
            )
        }
    }
    
    private var versionSection: some View {
        Section {
            HStack {
                Text("Version", bundle: .module)
                Spacer()
                Text("\(Bundle.main.version) (\(Bundle.main.build))")
            }
        } footer: {
            Text("© 2023 THE Uhooi")
        }
    }
}

#if DEBUG
struct SakatsuSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SakatsuSettingsView()
    }
}
#endif