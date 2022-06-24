import ProjectDescription
import ProjectDescriptionHelpers

let projectName = "Platform"
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
            resources: ["Resources/**"],
            scripts: [
                .switlintScript
            ],
            dependencies: [
                .external(name: "SnapKit"),
                .external(name: "Lottie")
            ]
        ),
        Target(
            name: "\(projectName)Tests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "\(moduleBaseId)Tests",
            sources: [
                "Tests/**"
            ],
            dependencies: [
                .target(name: "Platform")
            ]
        )
    ],
    resourceSynthesizers: [
        .strings(),
        .assets(),
        .custom(name: "Lottie", parser: .json, extensions: ["lottie"])
    ]
)
