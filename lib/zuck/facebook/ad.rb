
module Zuck
  class Ad < RawFbObject

    known_keys adset_id,
    date_format,
    creative,
    name,
    status,
    tracking_specs,
    display_sequence,
    execution_options,
    adlabels,
    bid_amount,
    redownload
    
    parent_object :ad_campaign
    list_path     :ads

  end
end
