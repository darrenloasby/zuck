
module Zuck
  class Ad < RawFbObject

    known_keys :id,
      :account_id,        #Ad Account ID
      :adset_id,          #Ad Set ID
      # :campaign_group_id, #deprecated on read Campaign ID
      :campaign_id,      #Campaign ID
      :adlabels,
      :date_format,
      :creative,
      :name,
      :status,
      :tracking_specs,
      :display_sequence,
      :execution_options,
      :bid_amount
    
    parent_object :ad_set, as: :adset_id

    # connections :, #Creative associated with this ad
    #   :insights,     #A Statistics result for an Ad object
    #   :previews      #Preview of the ad

    list_path     :ads

  end
end
