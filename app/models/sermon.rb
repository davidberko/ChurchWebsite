class Sermon < ActiveRecord::Base
  attr_accessible :pastor, :title, :audio
  mount_uploader :audio, AudioUploader
end
