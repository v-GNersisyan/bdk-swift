Pod::Spec.new do |spec|
  spec.name         = 'bdk-swift'
  spec.version      = '1.0.0-beta.2'
  spec.summary      = 'Swift bindings for the Bitcoin Dev Kit (BDK)'
  spec.description  = 'BDK-swift provides Swift bindings for BDK, a lightweight Bitcoin wallet toolkit for building wallets.'
  spec.homepage     = 'https://github.com/bitcoindevkit/bdk-swift'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { 'Bitcoin Dev Kit' => 'v-gnersisyan@quantumftg.com' }
  spec.source       = { :git => 'https://github.com/v-GNersisyan/bdk-swift.git', :branch => 'master' }
  # Set platform and deployment target
  spec.platform     = :ios, '13.0'
  spec.ios.deployment_target = '13.0'
  # Source files
  spec.source_files = 'Sources/BitcoinDevKit/**/*.{swift,h,m}'
  # Specify the xcframework binary
  spec.vendored_frameworks = 'bdkFFI.xcframework'
  # Download and extract the xcframework
  spec.prepare_command = <<-CMD
    curl -L https://github.com/bitcoindevkit/bdk-swift/releases/download/1.0.0-beta.2/bdkFFI.xcframework.zip > bdkFFI.xcframework.zip
    unzip bdkFFI.xcframework.zip
    rm bdkFFI.xcframework.zip
  CMD
  # You can also specify any dependencies here if needed
end