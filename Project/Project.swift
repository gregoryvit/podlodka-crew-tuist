import ProjectDescription

let project = Project(
    name: "PodlodkaCrewApp",
    targets: [
        Target(
            name: "CrewApp",
            platform: .iOS,
            product: .app,
            bundleId: "me.gregoryvit.podlodka.tuistExample",
            infoPlist: .extendingDefault(with: [
                "UIMainStoryboardFile": "Main",
                "UILaunchStoryboardName": "LaunchScreen"
            ]),
            sources: ["Sources/**"],
            resources: ["Resources/**"]
        )
    ]
)
