import ProjectDescription

/// See https://docs.tuist.io/guides/helpers/

// MARK: App settings

public enum AppConfiguration {
    public static let bundleIdPrefix: String = "me.gregoryvit.podlodka"
    public static let bundleIdApp: String = "\(bundleIdPrefix).tuistExample"
    public static let organizationName: String = "gregoryvit.me"
    public static let deploymentTarget: DeploymentTarget = .iOS(targetVersion: "13.0", devices: .iphone)
    public static let teamId: String = "111111"
    public static let projectVersion: String = "1.0.0"
    public static let buildNumber: String = "1"
}

// MARK: Scripts

public extension TargetScript {
    static var switlintScript: TargetScript = .pre(
        tool: "tuist", arguments: "lint", name: "SwiftLint"
    )
}
