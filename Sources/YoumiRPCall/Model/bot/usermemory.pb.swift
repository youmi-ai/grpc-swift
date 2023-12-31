// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: usermemory.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public enum Bot_ActionName: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case userSend // = 0
  case userReceive // = 1
  case userLogin // = 2
  case userLogout // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .userSend
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .userSend
    case 1: self = .userReceive
    case 2: self = .userLogin
    case 3: self = .userLogout
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .userSend: return 0
    case .userReceive: return 1
    case .userLogin: return 2
    case .userLogout: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Bot_ActionName: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Bot_ActionName] = [
    .userSend,
    .userReceive,
    .userLogin,
    .userLogout,
  ]
}

#endif  // swift(>=4.2)

public struct Bot_ChangshouUserOptions {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var dietaryPreference: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Bot_UserActionLog {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var userID: String = String()

  public var action: Bot_ActionName = .userSend

  public var content: String = String()

  /// for clustering ana later.
  public var embedding: [Float] = []

  public var timestamp: Int64 = 0

  public var chatID: String = String()

  public var businessGroup: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Bot_ActionName: @unchecked Sendable {}
extension Bot_ChangshouUserOptions: @unchecked Sendable {}
extension Bot_UserActionLog: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "bot"

extension Bot_ActionName: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UserSend"),
    1: .same(proto: "UserReceive"),
    2: .same(proto: "UserLogin"),
    3: .same(proto: "UserLogout"),
  ]
}

extension Bot_ChangshouUserOptions: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ChangshouUserOptions"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .standard(proto: "dietary_preference"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.dietaryPreference) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.dietaryPreference.isEmpty {
      try visitor.visitSingularStringField(value: self.dietaryPreference, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bot_ChangshouUserOptions, rhs: Bot_ChangshouUserOptions) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.dietaryPreference != rhs.dietaryPreference {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Bot_UserActionLog: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UserActionLog"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .standard(proto: "user_id"),
    3: .same(proto: "action"),
    4: .same(proto: "content"),
    5: .same(proto: "embedding"),
    6: .same(proto: "timestamp"),
    7: .standard(proto: "chat_id"),
    8: .standard(proto: "business_group"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.userID) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.action) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.content) }()
      case 5: try { try decoder.decodeRepeatedFloatField(value: &self.embedding) }()
      case 6: try { try decoder.decodeSingularInt64Field(value: &self.timestamp) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.chatID) }()
      case 8: try { try decoder.decodeSingularStringField(value: &self.businessGroup) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.userID.isEmpty {
      try visitor.visitSingularStringField(value: self.userID, fieldNumber: 2)
    }
    if self.action != .userSend {
      try visitor.visitSingularEnumField(value: self.action, fieldNumber: 3)
    }
    if !self.content.isEmpty {
      try visitor.visitSingularStringField(value: self.content, fieldNumber: 4)
    }
    if !self.embedding.isEmpty {
      try visitor.visitPackedFloatField(value: self.embedding, fieldNumber: 5)
    }
    if self.timestamp != 0 {
      try visitor.visitSingularInt64Field(value: self.timestamp, fieldNumber: 6)
    }
    if !self.chatID.isEmpty {
      try visitor.visitSingularStringField(value: self.chatID, fieldNumber: 7)
    }
    if !self.businessGroup.isEmpty {
      try visitor.visitSingularStringField(value: self.businessGroup, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Bot_UserActionLog, rhs: Bot_UserActionLog) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.userID != rhs.userID {return false}
    if lhs.action != rhs.action {return false}
    if lhs.content != rhs.content {return false}
    if lhs.embedding != rhs.embedding {return false}
    if lhs.timestamp != rhs.timestamp {return false}
    if lhs.chatID != rhs.chatID {return false}
    if lhs.businessGroup != rhs.businessGroup {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
