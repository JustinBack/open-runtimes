// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "swift-runtime",
    dependencies: [
        .package(url: "https://github.com/swift-server/async-http-client.git", from: "1.12.0"),
    ],
    targets: [
        .executableTarget(
            name: "swift-function",
            dependencies: [
                .product(name: "AsyncHTTPClient", package: "async-http-client")
            ]
        )
    ]
)
