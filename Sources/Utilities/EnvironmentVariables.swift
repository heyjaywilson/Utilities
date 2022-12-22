// EnvironmentVariables.swift
//
//
//
// Follow Jay on mastodon @heyjay@iosdev.space
//              twitter  @heyjaywilson
//              github     @heyjaywilson
//              website  cctplus.dev

import Foundation

@propertyWrapper
public struct Env {
    let name: String
    let defaultValue = "NO ENV VAR FOUND"

    /// Used to get the environment variable in Xcode
    /// - Parameter name: name of environmeng variable in the build scheme
    public init(name: String) {
        self.name = name
    }

    public var wrappedValue: String {
        return ProcessInfo.processInfo.environment[name] ?? defaultValue
    }
}
