#import "MobileSecuritySuitePlugin.h"
#if __has_include(<mobile_security_suite/mobile_security_suite-Swift.h>)
#import <mobile_security_suite/mobile_security_suite-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "mobile_security_suite-Swift.h"
#endif

@implementation MobileSecuritySuitePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMobileSecuritySuitePlugin registerWithRegistrar:registrar];
}
@end
