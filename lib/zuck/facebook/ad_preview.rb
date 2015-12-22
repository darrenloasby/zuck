module Zuck
  class AdPreview < RawFbObject

    known_keys :body
    parent_object :ad_creative
    list_path :previews

  end
end
