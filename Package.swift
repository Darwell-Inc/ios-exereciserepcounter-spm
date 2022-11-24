// swift-tools-version:5.6

import PackageDescription

#warning("move binary artifact to private hosting")
#warning("core-ios-spm is public due to a bug is SPM/Xcode that prevents authentication")
let package = Package(
    name: "ios-exereciserepcounter",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "ExerciseRepCounter",
            targets: [
                "CMExerciseRepCounter"
            ]
        ),
    ],
	dependencies: [
		.package(url: "git@github.com:ivalx1s/swift-tensorflowlite-spm.git", from: "2.7.0"),
	],
    targets: [
       .binaryTarget(
            name: "CMExerciseRepCounter",
            url: "https://github.com/darwell-inc/ios-exereciserepcounter-spm/releases/download/1.0.0/CMExerciseRepCounter.xcframework.zip",
            checksum: "ea0bd8bbd9d6c51569899a688f733e8db0692540c332a941e9ab2567ca0379c5"
        )
    ]
)

