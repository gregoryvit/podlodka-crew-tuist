import ProjectDescription
import ProjectDescriptionHelpers

let projectName = "CrewApp"
let appBaseId = "\(AppConfiguration.bundleIdApp).\(projectName)"

let project = Project(
    name: projectName,
    targets: [
        Target(
            name: projectName,
            platform: .iOS,
            product: .app,
            bundleId: appBaseId,
            infoPlist: .extendingDefault(with: [
                "UIMainStoryboardFile": "Main",
                "UILaunchStoryboardName": "LaunchScreen"
            ]),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            scripts: [
                .switlintScript
            ],
            dependencies: [
                .project(target: "Main", path: .relativeToRoot("Features/Main"))
            ]
        )
    ]
)
