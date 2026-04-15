// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TreeSitterPowershell",
    products: [
        .library(name: "TreeSitterPowershell", targets: ["TreeSitterPowershell"]),
    ],
    dependencies: [
        .package(name: "SwiftTreeSitter", url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.9.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterPowershell",
            dependencies: [],
            path: ".",
            exclude: [
                "binding.gyp",
                "bindings/c",
                "bindings/go",
                "bindings/node",
                "bindings/python",
                "bindings/rust",
                "Cargo.toml",
                "Cargo.lock",
                "CMakeLists.txt",
                "eslint.config.mjs",
                "flake.lock",
                "flake.nix",
                "go.mod",
                "grammar.js",
                "LICENSE",
                "Makefile",
                "package-lock.json",
                "package.json",
                "pyproject.toml",
                "README.md",
                "setup.py",
                "src/grammar.json",
                "src/node-types.json",
                "test",
                "tree-sitter.json",
            ],
            sources: [
                "src/parser.c",
                "src/scanner.c",
            ],
            resources: [
                .copy("queries"),
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")],
        ),
        .testTarget(
            name: "TreeSitterPowershellTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterPowershell",
            ],
            path: "bindings/swift/TreeSitterPowershellTests",
        ),
    ],
    cLanguageStandard: .c11,
)
