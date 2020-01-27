  require 'rotoscope'

  ROTO_DEST = File.join(Rails.root, 'log', 'rotoscope.log')
  ROTO_CONTROLLER_DEST = File.join(Rails.root, 'log', 'rotoscope_controller.log')
  ROTO_BLACKLIST = []
  rs = Rotoscope::CallLogger.new(ROTO_DEST, blacklist: ROTO_BLACKLIST)
  rs.start_trace
