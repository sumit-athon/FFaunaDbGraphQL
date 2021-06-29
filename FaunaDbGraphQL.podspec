Pod::Spec.new do |s|
  s.name             = 'FaunaDbGraphQL'
  s.version          = '1.0.8'
  s.summary          = 'Apollo client setup with Fauna DB Graph QL'
 
  s.description      = <<-DESC
    FaunaDBGraphQL Apollo client setup to fetch events data from Fauna DB
                       DESC
 
  s.homepage         = 'https://github.com/sumit-athon/FaunaDbGraphQL'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sumit' => 'sumit@athon.io' }
  s.source           = { :git => 'https://github.com/sumit-athon/FaunaDbGraphQL.git', :tag => s.version.to_s }
  s.swift_version = '5.0'
  s.ios.deployment_target = '13.0'
  s.source_files = 'FaunaDbGraphQL/GraphQL/*.swift','FaunaDbGraphQL/GraphQL/API/*.swift'
 # s.resources    = 'FaunaDbGraphQL/GraphQL/{*.graphql,*.json}'

 s.dependency 'Apollo', '~> 0.43.0'
end
