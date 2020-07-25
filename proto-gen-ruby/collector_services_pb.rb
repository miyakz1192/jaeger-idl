# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: collector.proto for package 'jaeger.api_v2'
# Original file comments:
# Copyright (c) 2019 The Jaeger Authors.
# Copyright (c) 2018 Uber Technologies, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'collector_pb'

module Jaeger
  module ApiV2
    module CollectorService
      class Service

        include GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'jaeger.api_v2.CollectorService'

        rpc :PostSpans, PostSpansRequest, PostSpansResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end
