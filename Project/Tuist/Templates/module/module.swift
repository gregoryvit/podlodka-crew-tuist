import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")

let exampleContents = """
import Foundation

struct \(nameAttribute) {
}
"""

let template = Template(
    description: "Module template",
    attributes: [
        nameAttribute,
        .optional("platform", default: "iOS")
    ],
    items: [
        .string(path: "\(nameAttribute)/Sources/\(nameAttribute).swift", contents: exampleContents),
        .file(path: "\(nameAttribute)/Project.swift", templatePath: "project.stencil")
    ]
)
