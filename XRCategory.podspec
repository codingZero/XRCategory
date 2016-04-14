Pod::Spec.new do |s|

  s.name         = "XRCategory"
  s.version      = "1.0.1"
  s.summary      = "a powerful category，make development easier"

  s.homepage     = "https://github.com/codingZero/XRCategory"

  s.license      = "MIT"

  s.author       = { "codingZero" => "yd13150@vip.qq.com" }

  s.social_media_url = "http://www.jianshu.com/users/425e4eed60ca/latest_articles"

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/codingZero/XRCategory.git", :tag => s.version }


  s.source_files  = "XRCategory/*.{h,m}"

  s.requires_arc = true

end
