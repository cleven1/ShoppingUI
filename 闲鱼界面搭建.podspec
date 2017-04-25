Pod::Spec.new do |s|
  s.name         = "podspecTest"
  s.version      = "1.0.0"
  s.summary      = "A fast integration images loop function of custom control"
  s.description  = "A fast integration images loop function of custom control addtion with cocoapod support."
  s.homepage     = "https://github.com/cleven1/ShoppingUI"
  s.social_media_url   = "https://github.com/cleven1/ShoppingUI.git"
  s.license= { :type => "MIT", :file => "LICENSE" }
  s.author       = { "menday" => "543069316@qq.com" }
  s.source       = { :git => "https://github.com/cleven1/ShoppingUI.git", :tag => s.version }
  s.source_files = "闲鱼界面搭建/闲鱼界面搭建/*.swif"
  s.ios.deployment_target = '8.0'
  s.frameworks   = 'UIKit'
  s.requires_arc = true

end