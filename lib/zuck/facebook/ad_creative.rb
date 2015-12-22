module Zuck
  class AdCreative < RawFbObject

    # Known keys as per
    # [fb docs](https://developers.facebook.com/docs/reference/ads-api/adaccount/)
    known_keys :id,
    :actor_id,
    :actor_image_hash,
    :actor_image_url,
    :actor_name,
    :adlabels,
    :body,
    :call_to_action_type,
    :image_crops,
    :image_hash,
    :image_url,
    :instagram_actor_id,
    :instagram_permalink_url,
    :instagram_story_id,
    :link_og_id,
    :link_url,
    :name,
    :object_id,
    :object_url,
    :object_story_id,
    :object_story_spec,
    :object_type,
    :platform_customizations,
    :product_set_id,
    :run_status,
    :template_url,
    :thumbnail_url,
    :title,
    :url_tags,
    :applink_treatment

    #:actor_id,             #The Facebook object ID of the Page, which is the actor for a link ad not connected to a Page.
    #            :body,                 #The body of the ad
    #            :image_crops,          #A JSON object defining crop dimensions for the image specified.
    #            :image_hash,           #2/3 Image hash for an image you have uploaded and can be used in creatives OR
    #            :image_url,            #3/3
    #            :link_url,             #A URL for the image for this creative. You should not use image URLs returned from the FB CDN
    #            :instagram_actor_id,   #The Facebook object ID of the Instagram account, which is the actor for a link ad not connected to a Page.
    #            #25 chr Headline                    - Trending on Amazon
    #            :name,                 #
    #            #90 chr Text                        - Hot book trending now on Amazon: Title
    #            :message,              #
    #            #200 chr News Feed Link Description - Find this book on Amazon and ...
    #            :description,          #
    #            :object_id,            #The Facebook object ID that is relevant to the ad and ad type.
    #            :object_story_id,      #The ID of a page post to use in an ad.
    #            :object_story_spec,    #The page id and the content to create a new unpublished page post specified using one of link_data, photo_data, video_data, offer_data, text_data or template_data.
    #            :object_url,           #Destination URL for a link ad (not connected to a page)
    #            :product_set_id,       #The product set from which products will be selected to show in the creative for Dynamic Product Ads
    #            :title,                #Title for a link ad (not connected to a page)
    #            :url_tags,             #A set of query string parameters which will replace or be appended to urls clicked from page post ads, and canvas app install creatives only.
    #            :run_status,           # The status of the creative: PENDING | ACTIVE | PAUSED | DELETED | PENDING_REVIVEW | DISAPPROVED | PREAPPROVED | PENDING_BILLING_INFO | CAMPAIGN_PAUSED | ADGROUP_PAUSED | CAMPAIGN_GROUP_PAUSED | ARCHIVED
    #            :id                    #FB graph ID of the ad creative

    parent_object :ad_account
    list_path     :adcreatives
    # connections   :ad_previews

    def ad_previews
      graph.get_connection(id, "previews", {ad_format: "DESKTOP_FEED_STANDARD"}, options = {})#(self.id, "adaccounts", adaccounts: destination_account_ids.to_json)
    end

  end
end
