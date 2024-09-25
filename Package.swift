// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "s2s_sdk_ios",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        // Define separate products for each target to keep them isolated
        .library(name: "AVPlayer-GoogleAds", targets: ["s2s_sdk_ios_avplayer_googleAds"]),
        .library(name: "Bitmovin", targets: ["s2s_sdk_ios_bitmovin"]),
        .library(name: "AgentOnly", targets: ["s2s_sdk_ios_agent_only"])
    ],
    targets: [
        .binaryTarget(
            name: "s2s_sdk_ios_avplayer_googleAds",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/testing/1.20.1/s2s_sdk_ios_avplayer_googleAds.xcframework.zip",
			checksum: "403d9ae563f92b614c04c27b64a0062ca7515df9da7f2144d37470bc84fbc49d"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_bitmovin",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/testing/1.20.1/s2s_sdk_ios_bitmovin.xcframework.zip",
			checksum: "811c17e8de8dedb4ce52f21c6f41097dc2348547ca8a9e818c5d5460ecc0dfcb"
        ),
        .binaryTarget(
            name: "s2s_sdk_ios_agent_only",
            url: "https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/testing/1.20.1/s2s_sdk_ios_agent_only.xcframework.zip",
			checksum: "c9ef1cbf6f98d2b1b572fb98fdc3737da1341e7bd1799944d8caeb2a89495c1c"
        ),
    ]
)