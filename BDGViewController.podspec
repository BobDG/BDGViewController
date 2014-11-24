Pod::Spec.new do |s|
  s.name           = 'BDGViewController'
  s.version        = '0.0.1'
  s.summary        = 'Lightweight viewcontroller that supports layout of subviews with animations'
  s.license 	   = 'MIT'
  s.description    = 'Lightweight viewcontroller that supports layout of subviews with animations. It provides a feel of a custom UIView while offering the great advantage of still being within a viewcontroller. Additionally it provides easy animation possibilities.'
  s.homepage       = 'https://github.com/BobDG/BDGViewController'
  s.authors        = {'Bob de Graaf' => 'graafict@gmail.com'}
  s.source         = { :git => 'https://github.com/BobDG/BDGViewController.git', :tag => '0.0.1' }
  s.source_files   = '*.{h,m}'  
  s.frameworks     = 'UIKit'
  s.platform       = :ios
  s.requires_arc   = true
end
