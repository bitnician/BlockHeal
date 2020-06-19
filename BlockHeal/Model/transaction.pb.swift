// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: transaction.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2016 Intel Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// -----------------------------------------------------------------------------

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

struct TransactionHeader {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Public key for the client who added this transaction to a batch
  var batcherPublicKey: String = String()

  /// A list of transaction signatures that describe the transactions that
  /// must be processed before this transaction can be valid
  var dependencies: [String] = []

  /// The family name correlates to the transaction processor's family name
  /// that this transaction can be processed on, for example 'intkey'
  var familyName: String = String()

  /// The family version correlates to the transaction processor's family
  /// version that this transaction can be processed on, for example "1.0"
  var familyVersion: String = String()

  /// A list of addresses that are given to the context manager and control
  /// what addresses the transaction processor is allowed to read from.
  var inputs: [String] = []

  /// A random string that provides uniqueness for transactions with
  /// otherwise identical fields.
  var nonce: String = String()

  /// A list of addresses that are given to the context manager and control
  /// what addresses the transaction processor is allowed to write to.
  var outputs: [String] = []

  ///The sha512 hash of the encoded payload
  var payloadSha512: String = String()

  /// Public key for the client that signed the TransactionHeader
  var signerPublicKey: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Transaction {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The serialized version of the TransactionHeader
  var header: Data = SwiftProtobuf.Internal.emptyData

  /// The signature derived from signing the header
  var headerSignature: String = String()

  /// The payload is the encoded family specific information of the
  /// transaction. Example cbor({'Verb': verb, 'Name': name,'Value': value})
  var payload: Data = SwiftProtobuf.Internal.emptyData

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// A simple list of transactions that needs to be serialized before
/// it can be transmitted to a batcher.
struct TransactionList {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var transactions: [Transaction] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension TransactionHeader: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "TransactionHeader"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "batcher_public_key"),
    2: .same(proto: "dependencies"),
    3: .standard(proto: "family_name"),
    4: .standard(proto: "family_version"),
    5: .same(proto: "inputs"),
    6: .same(proto: "nonce"),
    7: .same(proto: "outputs"),
    9: .standard(proto: "payload_sha512"),
    10: .standard(proto: "signer_public_key"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.batcherPublicKey)
      case 2: try decoder.decodeRepeatedStringField(value: &self.dependencies)
      case 3: try decoder.decodeSingularStringField(value: &self.familyName)
      case 4: try decoder.decodeSingularStringField(value: &self.familyVersion)
      case 5: try decoder.decodeRepeatedStringField(value: &self.inputs)
      case 6: try decoder.decodeSingularStringField(value: &self.nonce)
      case 7: try decoder.decodeRepeatedStringField(value: &self.outputs)
      case 9: try decoder.decodeSingularStringField(value: &self.payloadSha512)
      case 10: try decoder.decodeSingularStringField(value: &self.signerPublicKey)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.batcherPublicKey.isEmpty {
      try visitor.visitSingularStringField(value: self.batcherPublicKey, fieldNumber: 1)
    }
    if !self.dependencies.isEmpty {
      try visitor.visitRepeatedStringField(value: self.dependencies, fieldNumber: 2)
    }
    if !self.familyName.isEmpty {
      try visitor.visitSingularStringField(value: self.familyName, fieldNumber: 3)
    }
    if !self.familyVersion.isEmpty {
      try visitor.visitSingularStringField(value: self.familyVersion, fieldNumber: 4)
    }
    if !self.inputs.isEmpty {
      try visitor.visitRepeatedStringField(value: self.inputs, fieldNumber: 5)
    }
    if !self.nonce.isEmpty {
      try visitor.visitSingularStringField(value: self.nonce, fieldNumber: 6)
    }
    if !self.outputs.isEmpty {
      try visitor.visitRepeatedStringField(value: self.outputs, fieldNumber: 7)
    }
    if !self.payloadSha512.isEmpty {
      try visitor.visitSingularStringField(value: self.payloadSha512, fieldNumber: 9)
    }
    if !self.signerPublicKey.isEmpty {
      try visitor.visitSingularStringField(value: self.signerPublicKey, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TransactionHeader, rhs: TransactionHeader) -> Bool {
    if lhs.batcherPublicKey != rhs.batcherPublicKey {return false}
    if lhs.dependencies != rhs.dependencies {return false}
    if lhs.familyName != rhs.familyName {return false}
    if lhs.familyVersion != rhs.familyVersion {return false}
    if lhs.inputs != rhs.inputs {return false}
    if lhs.nonce != rhs.nonce {return false}
    if lhs.outputs != rhs.outputs {return false}
    if lhs.payloadSha512 != rhs.payloadSha512 {return false}
    if lhs.signerPublicKey != rhs.signerPublicKey {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Transaction: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Transaction"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .standard(proto: "header_signature"),
    3: .same(proto: "payload"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.header)
      case 2: try decoder.decodeSingularStringField(value: &self.headerSignature)
      case 3: try decoder.decodeSingularBytesField(value: &self.payload)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.header.isEmpty {
      try visitor.visitSingularBytesField(value: self.header, fieldNumber: 1)
    }
    if !self.headerSignature.isEmpty {
      try visitor.visitSingularStringField(value: self.headerSignature, fieldNumber: 2)
    }
    if !self.payload.isEmpty {
      try visitor.visitSingularBytesField(value: self.payload, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Transaction, rhs: Transaction) -> Bool {
    if lhs.header != rhs.header {return false}
    if lhs.headerSignature != rhs.headerSignature {return false}
    if lhs.payload != rhs.payload {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TransactionList: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "TransactionList"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "transactions"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.transactions)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.transactions.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.transactions, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TransactionList, rhs: TransactionList) -> Bool {
    if lhs.transactions != rhs.transactions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}