Pod::Spec.new do |s|
    s.authors             = 'Nielsen'
    s.description         = 'Nielsen Digital Measurement SDK Framework with no AdSupport.'
    s.frameworks          = 'CoreLocation', 'JavaScriptCore', 'WebKit', 'SystemConfiguration', 'AVFoundation'
    s.library             = 'sqlite3'
    s.homepage            = 'http://www.nielsen.com'
    s.license             = { :text => 'Copyright 2020 Nielsen', :type => 'Copyright' }
    s.platform            = :ios, '8.0'
    s.name                = 'NielsenNoAdAppSDK'
    s.preserve_paths      = 'LICENSE.txt', 'pod_build_patch.sh'
    s.source              = { :http => 'https://raw.githubusercontent.com/nielsendigitalsdk/nielsenappsdk-ios-dynamic/patch/iOS/GlobalNoAd/NielsenNoAdAppSDK-8.1.1.0.zip' }
    s.summary             = 'Nielsen No Ad App SDK.'
    s.vendored_frameworks = 'NielsenAppApi.framework'
    s.version             = '8.1.1.0'
    s.script_phases = [
        {
            :name => 'Pod Build Script',
            :script => 'chmod a+x "${PODS_TARGET_SRCROOT}/pod_build_patch.sh"
"${PODS_TARGET_SRCROOT}"/pod_build_patch.sh',
            :execution_position => :before_compile
        }
    ]
end