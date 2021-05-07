// swift-tools-version:5.1
import PackageDescription
let package = Package(
	name: "MSGraphClientModels",
	platforms: [
		.iOS(.v9),
		.macOS(.v10_10)
	],
	products: [
		.library(name: "MSGraphClientModels", targets: [
			"MSGraphClientModels"
		])
	],
	targets: [
		.target(
			name: "MSGraphClientModels",
			path: "",
			exclude: ["MSGraphClientModelsTests"],
			sources: ["BaseModels",
			          "GeneratedModels"],
			publicHeadersPath: "include",
			cSettings: [
				.headerSearchPath("BaseModels"),
				.headerSearchPath("GeneratedModels")
			]
		),
		.testTarget(
			name: "MSGraphClientModelsTests",
			dependencies: ["MSGraphClientModels"],
			path: "MSGraphClientModelsTests"
		)
	]
)
