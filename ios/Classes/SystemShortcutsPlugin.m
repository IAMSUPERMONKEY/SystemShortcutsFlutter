#import "SystemShortcutsPlugin.h"
#if __has_include(<system_shortcuts/system_shortcuts-Swift.h>)
#import <system_shortcuts/system_shortcuts-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "system_shortcuts-Swift.h"
#endif

@implementation SystemShortcutsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSystemShortcutsPlugin registerWithRegistrar:registrar];
}
@end
