
require "query_services_pb.rb"
require "query_pb.rb"

qstub = Jaeger::ApiV2::QueryService::Stub.new("192.168.100.2:30858", :this_channel_is_insecure)

def test(qstub, id)
  new_id = id.chars.map{|c| c.hex}.pack("C*")
  req = Jaeger::ApiV2::GetTraceRequest.new({trace_id: new_id})
  qstub.get_trace(req).map{|o| puts o.class.name}
end

test(qstub, "5e4ebc4c49576f8e")
