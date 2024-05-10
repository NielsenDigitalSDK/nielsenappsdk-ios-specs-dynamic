Pod::Spec.new do |s|
    s.authors             = 'Nielsen'
    s.description         = 'Nielsen Digital Measurement SDK Framework.'
    s.ios.frameworks      = 'AdSupport', 'CoreLocation', 'JavaScriptCore', 'WebKit', 'SystemConfiguration', 'AVFoundation'
    s.tvos.frameworks     = 'AdSupport', 'SystemConfiguration', 'CoreLocation', 'AVFoundation'
    s.weak_frameworks     = 'AppTrackingTransparency'
    s.library             = 'sqlite3'
    s.homepage            = 'http://www.nielsen.com'
    s.license             = { :text => 'Copyright 2020 Nielsen', :type => 'Copyright' }
    s.ios.deployment_target  = '12.0'
    s.tvos.deployment_target = '12.0'
    s.name                = 'NielsenAppSDK-XC'
    s.preserve_paths      = 'LICENSE.txt', 'pod_build_xc.sh'
    s.source              = { :http => 'https://raw.githubusercontent.com/nielsendigitalsdk/nielsenappsdk-ios-dynamic/master/XC/Global/NielsenAppSDK-9.3.0.0.zip' }
    s.summary             = 'Nielsen App SDK.'
    s.vendored_frameworks = 'NielsenAppApi.xcframework'
    s.version             = '9.3.0.0'
    s.script_phases = [
        {
            :name => 'Pod Build Script',
            :script => 'chmod a+x "${PODS_TARGET_SRCROOT}/pod_build_xc.sh"
"${PODS_TARGET_SRCROOT}"/pod_build_xc.sh',
            :execution_position => :before_compile
        }
    ]
end
