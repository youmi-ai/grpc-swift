/*
 * Copyright 2018, gRPC Authors All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import SwiftProtobufPluginLibrary

internal enum StreamingType {
  case unary
  case clientStreaming
  case serverStreaming
  case bidirectionalStreaming
}

extension StreamingType {
  internal var asGRPCCallTypeCase: String {
    switch self {
    case .unary:
      return "GRPCCallType.unary"
    case .clientStreaming:
      return "GRPCCallType.clientStreaming"
    case .serverStreaming:
      return "GRPCCallType.serverStreaming"
    case .bidirectionalStreaming:
      return "GRPCCallType.bidirectionalStreaming"
    }
  }
}

internal func streamingType(_ method: MethodDescriptor) -> StreamingType {
  if method.clientStreaming {
    if method.serverStreaming {
      return .bidirectionalStreaming
    } else {
      return .clientStreaming
    }
  } else {
    if method.serverStreaming {
      return .serverStreaming
    } else {
      return .unary
    }
  }
}
