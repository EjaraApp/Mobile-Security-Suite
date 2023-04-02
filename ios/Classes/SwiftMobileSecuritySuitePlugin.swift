import Flutter
import UIKit
import IOSSecuritySuite

public class SwiftMobileSecuritySuitePlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "mobile_security_suite", binaryMessenger: registrar.messenger())
        let instance = SwiftMobileSecuritySuitePlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "getPlatformVersion":
            result("iOS " + UIDevice.current.systemVersion)
        case "isRootAccessEnabled":
            result(IOSSecuritySuite.amIJailbroken())
        case "isBeingDebugged":
            result(IOSSecuritySuite.amIDebugged())
        case "isRunningInEmulator":
            result(IOSSecuritySuite.amIRunInEmulator())
        /*
        case "isBeingReverseEngineered":
            result(IOSSecuritySuite.amIReverseEngineered())
        case "isDeviceProxied":
            result(IOSSecuritySuite.amIProxied())
         */
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
}
