
Pod::Spec.new do |s|
  s.name             = 'TooltipImageView'
  s.version          = '0.4.0'
  s.summary          = 'A UIImageView that displays a Toast message when you tap it.'
  
  s.description      = <<-DESC
A UIImageView that displays a Toast message when you tap it.
                       DESC

  s.homepage         = 'https://github.com/drmarkpowell/TooltipImageView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'drmarkpowell' => 'Mark.Powell@jpl.nasa.gov' }
  s.source           = { :git => 'https://github.com/drmarkpowell/TooltipImageView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '14.0'
  s.source_files = 'TooltipImageView/Classes/**/*'
  s.resources = 'TooltipImageView/Assets/**/*.{xcassets,png,xib}'

  s.dependency 'Toast-Swift', '~> 5'
end
