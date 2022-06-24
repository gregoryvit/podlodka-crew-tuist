import ProjectDescription
import ProjectDescriptionHelpers

let projectName = "Main"
let moduleBaseId = "\(AppConfiguration.bundleIdApp).\(projectName)"

let project = Project(
    name: projectName,
    targets: [
        Target(
            name: projectName,
            platform: .iOS,
            product: .framework,
            bundleId: moduleBaseId,
            infoPlist: .default,
            sources: ["Sources/**"],
            scripts: [
                .switlintScript
            ],
            dependencies: [
                .project(target: "Platform", path: .relativeToRoot("Platform")),
                .external(name: "SnapKit")
            ]
        )
    ]
)
