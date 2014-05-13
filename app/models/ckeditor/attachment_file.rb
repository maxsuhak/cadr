class Ckeditor::AttachmentFile < Ckeditor::Asset
  mount_uploader :data, CkeditorAttachmentFileUploader, :mount_on => :data_file_name
end
