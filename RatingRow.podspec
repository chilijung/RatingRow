Pod::Spec.new do |spec|
  spec.name = "RatingRow"
  spec.version = "0.1.1"
  spec.summary = "Rating row in Eureka"
  spec.homepage = "https://github.com/canner/RatingRow"
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.authors = { "chilijung" => 'chilijung@gmail.com' }

  spec.platform = :ios, "9.3"
  spec.requires_arc = true
  spec.source = { git: "https://github.com/canner/RatingRow.git", tag: "v#{spec.version}", submodules: true }
  spec.source_files = "RatingRow/**/*.{h,swift}"
  spec.ios.frameworks = 'UIKit', 'Foundation'
  spec.dependency "Eureka", "~> 5.0"
  spec.dependency "Cosmos", "~> 18.0"
end
