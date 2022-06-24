import Foundation
import XCTest
import Platform

class LoaderTests: XCTestCase {

    func testLoaderTitle() {
        let loader = PodlodkaLoader(frame: .init(x: 0.0, y: 0.0, width: 300.0, height: 300.0))

        let expectedString = [
            "en": "Hello Podlodka!"
        ][Locale.current.languageCode]

        XCTAssertEqual(loader.accessibilityLabel, expectedString)
    }

}
