.class public final Lcom/android/systemui/Dependency_Factory;
.super Ljava/lang/Object;
.source "Dependency_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/Dependency;",
        ">;"
    }
.end annotation


# instance fields
.field public final mAccessibilityButtonListControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final mAccessibilityButtonModeObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;",
            ">;"
        }
    .end annotation
.end field

.field public final mAccessibilityControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController;",
            ">;"
        }
    .end annotation
.end field

.field public final mAccessibilityFloatingMenuControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;",
            ">;"
        }
    .end annotation
.end field

.field public final mAccessibilityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final mActivityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final mActivityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field public final mAlarmManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mAmbientStateLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            ">;"
        }
    .end annotation
.end field

.field public final mAppOpsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/appops/AppOpsController;",
            ">;"
        }
    .end annotation
.end field

.field public final mAssistManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mAsyncSensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mAutoHideControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;"
        }
    .end annotation
.end field

.field public final mBackgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final mBgHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public final mBgLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field public final mBluetoothControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController;",
            ">;"
        }
    .end annotation
.end field

.field public final mBroadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field public final mCastControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CastController;",
            ">;"
        }
    .end annotation
.end field

.field public final mClockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/clock/ClockManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mCommandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;"
        }
    .end annotation
.end field

.field public final mConfigurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field public final mContentInsetsProviderLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;",
            ">;"
        }
    .end annotation
.end field

.field public final mDarkIconDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/DarkIconDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field public final mDataSaverControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeviceConfigProxyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;"
        }
    .end annotation
.end field

.field public final mDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeviceProvisionedControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;"
        }
    .end annotation
.end field

.field public final mDialogLaunchAnimatorLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/animation/DialogLaunchAnimator;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayMetricsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public final mDockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mDozeParametersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;"
        }
    .end annotation
.end field

.field public final mDumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mEdgeBackGestureHandlerFactoryLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;",
            ">;"
        }
    .end annotation
.end field

.field public final mEnhancedEstimatesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/EnhancedEstimates;",
            ">;"
        }
    .end annotation
.end field

.field public final mExtensionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionController;",
            ">;"
        }
    .end annotation
.end field

.field public final mFeatureFlagsLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/flags/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field public final mFlashlightControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/FlashlightController;",
            ">;"
        }
    .end annotation
.end field

.field public final mForegroundServiceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;"
        }
    .end annotation
.end field

.field public final mFragmentServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;"
        }
    .end annotation
.end field

.field public final mGarbageMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field public final mGroupExpansionManagerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mGroupMembershipManagerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mHdmiCecSetMenuLanguageHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/hdmi/HdmiCecSetMenuLanguageHelper;",
            ">;"
        }
    .end annotation
.end field

.field public final mHotspotControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotController;",
            ">;"
        }
    .end annotation
.end field

.field public final mINotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mIStatusBarServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;"
        }
    .end annotation
.end field

.field public final mIWindowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mInternetDialogFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeyguardDismissUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeyguardMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeyguardSecurityModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field public final mLeakDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;"
        }
    .end annotation
.end field

.field public final mLeakReportEmailProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mLeakReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakReporter;",
            ">;"
        }
    .end annotation
.end field

.field public final mLightBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;"
        }
    .end annotation
.end field

.field public final mLocalBluetoothManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mLocationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/LocationController;",
            ">;"
        }
    .end annotation
.end field

.field public final mLockscreenGestureLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;"
        }
    .end annotation
.end field

.field public final mMainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final mMainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public final mMainLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field public final mManagedProfileControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController;",
            ">;"
        }
    .end annotation
.end field

.field public final mMediaOutputDialogFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;",
            ">;"
        }
    .end annotation
.end field

.field public final mMetricsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field public final mNavBarModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field public final mNavigationBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            ">;"
        }
    .end annotation
.end field

.field public final mNextAlarmControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmController;",
            ">;"
        }
    .end annotation
.end field

.field public final mNightDisplayListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotificationGutsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotificationLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotificationMediaManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotificationRemoteInputManagerCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotificationSectionsManagerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotificationShadeWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;"
        }
    .end annotation
.end field

.field public final mOverviewProxyServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final mPluginDependencyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;"
        }
    .end annotation
.end field

.field public final mPluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mPrivacyDotViewControllerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/PrivacyDotViewController;",
            ">;"
        }
    .end annotation
.end field

.field public final mPrivacyItemControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/PrivacyItemController;",
            ">;"
        }
    .end annotation
.end field

.field public final mProtoTracerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tracing/ProtoTracer;",
            ">;"
        }
    .end annotation
.end field

.field public final mRecordingControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;"
        }
    .end annotation
.end field

.field public final mReduceBrightColorsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/ReduceBrightColorsController;",
            ">;"
        }
    .end annotation
.end field

.field public final mRemoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;"
        }
    .end annotation
.end field

.field public final mRotationLockControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RotationLockController;",
            ">;"
        }
    .end annotation
.end field

.field public final mScreenLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field public final mScreenOffAnimationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field public final mSecurityControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SecurityController;",
            ">;"
        }
    .end annotation
.end field

.field public final mSensorPrivacyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SensorPrivacyController;",
            ">;"
        }
    .end annotation
.end field

.field public final mSensorPrivacyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mShadeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shade/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field public final mSmartReplyConstantsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SmartReplyConstants;",
            ">;"
        }
    .end annotation
.end field

.field public final mSmartReplyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;"
        }
    .end annotation
.end field

.field public final mStatusBarIconControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            ">;"
        }
    .end annotation
.end field

.field public final mStatusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field public final mSysUiStateFlagsContainerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemStatusAnimationSchedulerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemUIDialogManagerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mSysuiColorExtractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;"
        }
    .end annotation
.end field

.field public final mTelephonyListenerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/telephony/TelephonyListenerManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempStatusBarWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowController;",
            ">;"
        }
    .end annotation
.end field

.field public final mTimeTickHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public final mTunablePaddingServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;",
            ">;"
        }
    .end annotation
.end field

.field public final mTunerServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;"
        }
    .end annotation
.end field

.field public final mUiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field public final mUiOffloadThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserInfoControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserSwitcherControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserTrackerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserTracker;",
            ">;"
        }
    .end annotation
.end field

.field public final mVibratorHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;"
        }
    .end annotation
.end field

.field public final mVolumeDialogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/VolumeDialogController;",
            ">;"
        }
    .end annotation
.end field

.field public final mWakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field public final mWallpaperManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/IWallpaperManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mWarningsUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/PowerUI$WarningsUI;",
            ">;"
        }
    .end annotation
.end field

.field public final mZenModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 4

    move-object v0, p0

    .line 1
    sget-object v1, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;

    sget-object v2, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIWallPaperManagerFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIWallPaperManagerFactory;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    .line 3
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mDumpManagerProvider:Ljavax/inject/Provider;

    move-object v3, p2

    .line 4
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mActivityStarterProvider:Ljavax/inject/Provider;

    move-object v3, p3

    .line 5
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mBroadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object v3, p4

    .line 6
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mAsyncSensorManagerProvider:Ljavax/inject/Provider;

    move-object v3, p5

    .line 7
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mBluetoothControllerProvider:Ljavax/inject/Provider;

    move-object v3, p6

    .line 8
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mLocationControllerProvider:Ljavax/inject/Provider;

    move-object v3, p7

    .line 9
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mRotationLockControllerProvider:Ljavax/inject/Provider;

    move-object v3, p8

    .line 10
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mZenModeControllerProvider:Ljavax/inject/Provider;

    move-object v3, p9

    .line 11
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mHdmiCecSetMenuLanguageHelperProvider:Ljavax/inject/Provider;

    move-object v3, p10

    .line 12
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mHotspotControllerProvider:Ljavax/inject/Provider;

    move-object v3, p11

    .line 13
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mCastControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p12

    .line 14
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mFlashlightControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p13

    .line 15
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mUserSwitcherControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p14

    .line 16
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mUserInfoControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p15

    .line 17
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mKeyguardMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p16

    .line 18
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mKeyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p17

    .line 19
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mNightDisplayListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p18

    .line 20
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mReduceBrightColorsControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p19

    .line 21
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mManagedProfileControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p20

    .line 22
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mNextAlarmControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p21

    .line 23
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mDataSaverControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p22

    .line 24
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p23

    .line 25
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mDeviceProvisionedControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p24

    .line 26
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mPluginManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p25

    .line 27
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mAssistManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p26

    .line 28
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mSecurityControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p27

    .line 29
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mLeakDetectorProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p28

    .line 30
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mLeakReporterProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p29

    .line 31
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mGarbageMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p30

    .line 32
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mTunerServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p31

    .line 33
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p32

    .line 34
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mTempStatusBarWindowControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p33

    .line 35
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mDarkIconDispatcherProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p34

    .line 36
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mConfigurationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p35

    .line 37
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mStatusBarIconControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p36

    .line 38
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mScreenLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p37

    .line 39
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mWakefulnessLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p38

    .line 40
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mFragmentServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p39

    .line 41
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mExtensionControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p40

    .line 42
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mPluginDependencyProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p41

    .line 43
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mLocalBluetoothManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p42

    .line 44
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mVolumeDialogControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p43

    .line 45
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mMetricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p44

    .line 46
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p45

    .line 47
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mSysuiColorExtractorProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p46

    .line 48
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mTunablePaddingServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p47

    .line 49
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mForegroundServiceControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p48

    .line 50
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mUiOffloadThreadProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p49

    .line 51
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mWarningsUIProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p50

    .line 52
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mLightBarControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p51

    .line 53
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mIWindowManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p52

    .line 54
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mOverviewProxyServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p53

    .line 55
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mNavBarModeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p54

    .line 56
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityButtonModeObserverProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p55

    .line 57
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityButtonListControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p56

    .line 58
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mEnhancedEstimatesProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p57

    .line 59
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mVibratorHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p58

    .line 60
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mIStatusBarServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p59

    .line 61
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mDisplayMetricsProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p60

    .line 62
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mLockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p61

    .line 63
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mShadeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p62

    .line 64
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationRemoteInputManagerCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p63

    .line 65
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mAppOpsControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p64

    .line 66
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mNavigationBarControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p65

    .line 67
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityFloatingMenuControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p66

    .line 68
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mStatusBarStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p67

    .line 69
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p68

    .line 70
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationGutsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p69

    .line 71
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationMediaManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p70

    .line 72
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p71

    .line 73
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mSmartReplyConstantsProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p72

    .line 74
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p73

    .line 75
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p74

    .line 76
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mKeyguardDismissUtilProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p75

    .line 77
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mSmartReplyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p76

    .line 78
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mRemoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p77

    .line 79
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p78

    .line 80
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mAutoHideControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p79

    .line 81
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mPrivacyItemControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p80

    .line 82
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mBgLooperProvider:Ljavax/inject/Provider;

    move-object/from16 v3, p81

    .line 83
    iput-object v3, v0, Lcom/android/systemui/Dependency_Factory;->mBgHandlerProvider:Ljavax/inject/Provider;

    .line 84
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mMainLooperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p82

    .line 85
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mMainHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p83

    .line 86
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mTimeTickHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p84

    .line 87
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mLeakReportEmailProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p85

    .line 88
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mMainExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p86

    .line 89
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mBackgroundExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p87

    .line 90
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mClockManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p88

    .line 91
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mActivityManagerWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p89

    .line 92
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p90

    .line 93
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mPackageManagerWrapperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p91

    .line 94
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSensorPrivacyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p92

    .line 95
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mDockManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p93

    .line 96
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mINotificationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p94

    .line 97
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSysUiStateFlagsContainerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p95

    .line 98
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mAlarmManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p96

    .line 99
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mKeyguardSecurityModelProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p97

    .line 100
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mDozeParametersProvider:Ljavax/inject/Provider;

    .line 101
    iput-object v2, v0, Lcom/android/systemui/Dependency_Factory;->mWallpaperManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p98

    .line 102
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mCommandQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p99

    .line 103
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mRecordingControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p100

    .line 104
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mProtoTracerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p101

    .line 105
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mMediaOutputDialogFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p102

    .line 106
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mDeviceConfigProxyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p103

    .line 107
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mTelephonyListenerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p104

    .line 108
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSystemStatusAnimationSchedulerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p105

    .line 109
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mPrivacyDotViewControllerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p106

    .line 110
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mEdgeBackGestureHandlerFactoryLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p107

    .line 111
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mUiEventLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p108

    .line 112
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mContentInsetsProviderLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p109

    .line 113
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mInternetDialogFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p110

    .line 114
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mFeatureFlagsLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p111

    .line 115
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mNotificationSectionsManagerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p112

    .line 116
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mScreenOffAnimationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p113

    .line 117
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mAmbientStateLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p114

    .line 118
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mGroupMembershipManagerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p115

    .line 119
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mGroupExpansionManagerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p116

    .line 120
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mSystemUIDialogManagerLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p117

    .line 121
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mDialogLaunchAnimatorLazyProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p118

    .line 122
    iput-object v1, v0, Lcom/android/systemui/Dependency_Factory;->mUserTrackerLazyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/Dependency_Factory;
    .locals 120

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    move-object/from16 v38, p37

    move-object/from16 v39, p38

    move-object/from16 v40, p39

    move-object/from16 v41, p40

    move-object/from16 v42, p41

    move-object/from16 v43, p42

    move-object/from16 v44, p43

    move-object/from16 v45, p44

    move-object/from16 v46, p45

    move-object/from16 v47, p46

    move-object/from16 v48, p47

    move-object/from16 v49, p48

    move-object/from16 v50, p49

    move-object/from16 v51, p50

    move-object/from16 v52, p51

    move-object/from16 v53, p52

    move-object/from16 v54, p53

    move-object/from16 v55, p54

    move-object/from16 v56, p55

    move-object/from16 v57, p56

    move-object/from16 v58, p57

    move-object/from16 v59, p58

    move-object/from16 v60, p59

    move-object/from16 v61, p60

    move-object/from16 v62, p61

    move-object/from16 v63, p62

    move-object/from16 v64, p63

    move-object/from16 v65, p64

    move-object/from16 v66, p65

    move-object/from16 v67, p66

    move-object/from16 v68, p67

    move-object/from16 v69, p68

    move-object/from16 v70, p69

    move-object/from16 v71, p70

    move-object/from16 v72, p71

    move-object/from16 v73, p72

    move-object/from16 v74, p73

    move-object/from16 v75, p74

    move-object/from16 v76, p75

    move-object/from16 v77, p76

    move-object/from16 v78, p77

    move-object/from16 v79, p78

    move-object/from16 v80, p79

    move-object/from16 v81, p80

    move-object/from16 v82, p81

    move-object/from16 v83, p82

    move-object/from16 v84, p83

    move-object/from16 v85, p84

    move-object/from16 v86, p85

    move-object/from16 v87, p86

    move-object/from16 v88, p87

    move-object/from16 v89, p88

    move-object/from16 v90, p89

    move-object/from16 v91, p90

    move-object/from16 v92, p91

    move-object/from16 v93, p92

    move-object/from16 v94, p93

    move-object/from16 v95, p94

    move-object/from16 v96, p95

    move-object/from16 v97, p96

    move-object/from16 v98, p97

    move-object/from16 v99, p98

    move-object/from16 v100, p99

    move-object/from16 v101, p100

    move-object/from16 v102, p101

    move-object/from16 v103, p102

    move-object/from16 v104, p103

    move-object/from16 v105, p104

    move-object/from16 v106, p105

    move-object/from16 v107, p106

    move-object/from16 v108, p107

    move-object/from16 v109, p108

    move-object/from16 v110, p109

    move-object/from16 v111, p110

    move-object/from16 v112, p111

    move-object/from16 v113, p112

    move-object/from16 v114, p113

    move-object/from16 v115, p114

    move-object/from16 v116, p115

    move-object/from16 v117, p116

    move-object/from16 v118, p117

    .line 1
    new-instance v119, Lcom/android/systemui/Dependency_Factory;

    move-object/from16 v0, v119

    invoke-direct/range {v0 .. v118}, Lcom/android/systemui/Dependency_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v119
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 0
    new-instance v0, Lcom/android/systemui/Dependency;

    .line 1
    .line 2
    invoke-direct {v0}, Lcom/android/systemui/Dependency;-><init>()V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDumpManagerProvider:Ljavax/inject/Provider;

    .line 6
    .line 7
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/systemui/dump/DumpManager;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mActivityStarterProvider:Ljavax/inject/Provider;

    .line 16
    .line 17
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mActivityStarter:Ldagger/Lazy;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mBroadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 24
    .line 25
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mBroadcastDispatcher:Ldagger/Lazy;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAsyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 32
    .line 33
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mAsyncSensorManager:Ldagger/Lazy;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mBluetoothControllerProvider:Ljavax/inject/Provider;

    .line 40
    .line 41
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mBluetoothController:Ldagger/Lazy;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mLocationControllerProvider:Ljavax/inject/Provider;

    .line 48
    .line 49
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mLocationController:Ldagger/Lazy;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mRotationLockControllerProvider:Ljavax/inject/Provider;

    .line 56
    .line 57
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mRotationLockController:Ldagger/Lazy;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mZenModeControllerProvider:Ljavax/inject/Provider;

    .line 64
    .line 65
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mZenModeController:Ldagger/Lazy;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mHdmiCecSetMenuLanguageHelperProvider:Ljavax/inject/Provider;

    .line 72
    .line 73
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mHdmiCecSetMenuLanguageHelper:Ldagger/Lazy;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mHotspotControllerProvider:Ljavax/inject/Provider;

    .line 80
    .line 81
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mHotspotController:Ldagger/Lazy;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mCastControllerProvider:Ljavax/inject/Provider;

    .line 88
    .line 89
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mCastController:Ldagger/Lazy;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mFlashlightControllerProvider:Ljavax/inject/Provider;

    .line 96
    .line 97
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mFlashlightController:Ldagger/Lazy;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mUserSwitcherControllerProvider:Ljavax/inject/Provider;

    .line 104
    .line 105
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mUserSwitcherController:Ldagger/Lazy;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mUserInfoControllerProvider:Ljavax/inject/Provider;

    .line 112
    .line 113
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mUserInfoController:Ldagger/Lazy;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mKeyguardMonitorProvider:Ljavax/inject/Provider;

    .line 120
    .line 121
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mKeyguardMonitor:Ldagger/Lazy;

    .line 126
    .line 127
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mKeyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 128
    .line 129
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    .line 134
    .line 135
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNightDisplayListenerProvider:Ljavax/inject/Provider;

    .line 136
    .line 137
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mNightDisplayListener:Ldagger/Lazy;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mReduceBrightColorsControllerProvider:Ljavax/inject/Provider;

    .line 144
    .line 145
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mReduceBrightColorsController:Ldagger/Lazy;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mManagedProfileControllerProvider:Ljavax/inject/Provider;

    .line 152
    .line 153
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mManagedProfileController:Ldagger/Lazy;

    .line 158
    .line 159
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNextAlarmControllerProvider:Ljavax/inject/Provider;

    .line 160
    .line 161
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mNextAlarmController:Ldagger/Lazy;

    .line 166
    .line 167
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDataSaverControllerProvider:Ljavax/inject/Provider;

    .line 168
    .line 169
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mDataSaverController:Ldagger/Lazy;

    .line 174
    .line 175
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityControllerProvider:Ljavax/inject/Provider;

    .line 176
    .line 177
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mAccessibilityController:Ldagger/Lazy;

    .line 182
    .line 183
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDeviceProvisionedControllerProvider:Ljavax/inject/Provider;

    .line 184
    .line 185
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mDeviceProvisionedController:Ldagger/Lazy;

    .line 190
    .line 191
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mPluginManagerProvider:Ljavax/inject/Provider;

    .line 192
    .line 193
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mPluginManager:Ldagger/Lazy;

    .line 198
    .line 199
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAssistManagerProvider:Ljavax/inject/Provider;

    .line 200
    .line 201
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mAssistManager:Ldagger/Lazy;

    .line 206
    .line 207
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSecurityControllerProvider:Ljavax/inject/Provider;

    .line 208
    .line 209
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mSecurityController:Ldagger/Lazy;

    .line 214
    .line 215
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mLeakDetectorProvider:Ljavax/inject/Provider;

    .line 216
    .line 217
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mLeakDetector:Ldagger/Lazy;

    .line 222
    .line 223
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mLeakReporterProvider:Ljavax/inject/Provider;

    .line 224
    .line 225
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mLeakReporter:Ldagger/Lazy;

    .line 230
    .line 231
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mGarbageMonitorProvider:Ljavax/inject/Provider;

    .line 232
    .line 233
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mGarbageMonitor:Ldagger/Lazy;

    .line 238
    .line 239
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mTunerServiceProvider:Ljavax/inject/Provider;

    .line 240
    .line 241
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mTunerService:Ldagger/Lazy;

    .line 246
    .line 247
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    .line 248
    .line 249
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mNotificationShadeWindowController:Ldagger/Lazy;

    .line 254
    .line 255
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mTempStatusBarWindowControllerProvider:Ljavax/inject/Provider;

    .line 256
    .line 257
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mTempStatusBarWindowController:Ldagger/Lazy;

    .line 262
    .line 263
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDarkIconDispatcherProvider:Ljavax/inject/Provider;

    .line 264
    .line 265
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mDarkIconDispatcher:Ldagger/Lazy;

    .line 270
    .line 271
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 272
    .line 273
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mConfigurationController:Ldagger/Lazy;

    .line 278
    .line 279
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mStatusBarIconControllerProvider:Ljavax/inject/Provider;

    .line 280
    .line 281
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mStatusBarIconController:Ldagger/Lazy;

    .line 286
    .line 287
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mScreenLifecycleProvider:Ljavax/inject/Provider;

    .line 288
    .line 289
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mScreenLifecycle:Ldagger/Lazy;

    .line 294
    .line 295
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mWakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 296
    .line 297
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mWakefulnessLifecycle:Ldagger/Lazy;

    .line 302
    .line 303
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mFragmentServiceProvider:Ljavax/inject/Provider;

    .line 304
    .line 305
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mFragmentService:Ldagger/Lazy;

    .line 310
    .line 311
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mExtensionControllerProvider:Ljavax/inject/Provider;

    .line 312
    .line 313
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mExtensionController:Ldagger/Lazy;

    .line 318
    .line 319
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mPluginDependencyProvider:Ljavax/inject/Provider;

    .line 320
    .line 321
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mPluginDependencyProvider:Ldagger/Lazy;

    .line 326
    .line 327
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mLocalBluetoothManagerProvider:Ljavax/inject/Provider;

    .line 328
    .line 329
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mLocalBluetoothManager:Ldagger/Lazy;

    .line 334
    .line 335
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mVolumeDialogControllerProvider:Ljavax/inject/Provider;

    .line 336
    .line 337
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mVolumeDialogController:Ldagger/Lazy;

    .line 342
    .line 343
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 344
    .line 345
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mMetricsLogger:Ldagger/Lazy;

    .line 350
    .line 351
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 352
    .line 353
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mAccessibilityManagerWrapper:Ldagger/Lazy;

    .line 358
    .line 359
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSysuiColorExtractorProvider:Ljavax/inject/Provider;

    .line 360
    .line 361
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mSysuiColorExtractor:Ldagger/Lazy;

    .line 366
    .line 367
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mTunablePaddingServiceProvider:Ljavax/inject/Provider;

    .line 368
    .line 369
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mTunablePaddingService:Ldagger/Lazy;

    .line 374
    .line 375
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mForegroundServiceControllerProvider:Ljavax/inject/Provider;

    .line 376
    .line 377
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mForegroundServiceController:Ldagger/Lazy;

    .line 382
    .line 383
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mUiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 384
    .line 385
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mUiOffloadThread:Ldagger/Lazy;

    .line 390
    .line 391
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mWarningsUIProvider:Ljavax/inject/Provider;

    .line 392
    .line 393
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mWarningsUI:Ldagger/Lazy;

    .line 398
    .line 399
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mLightBarControllerProvider:Ljavax/inject/Provider;

    .line 400
    .line 401
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mLightBarController:Ldagger/Lazy;

    .line 406
    .line 407
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mIWindowManagerProvider:Ljavax/inject/Provider;

    .line 408
    .line 409
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mIWindowManager:Ldagger/Lazy;

    .line 414
    .line 415
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mOverviewProxyServiceProvider:Ljavax/inject/Provider;

    .line 416
    .line 417
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mOverviewProxyService:Ldagger/Lazy;

    .line 422
    .line 423
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNavBarModeControllerProvider:Ljavax/inject/Provider;

    .line 424
    .line 425
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mNavBarModeController:Ldagger/Lazy;

    .line 430
    .line 431
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityButtonModeObserverProvider:Ljavax/inject/Provider;

    .line 432
    .line 433
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mAccessibilityButtonModeObserver:Ldagger/Lazy;

    .line 438
    .line 439
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityButtonListControllerProvider:Ljavax/inject/Provider;

    .line 440
    .line 441
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mAccessibilityButtonListController:Ldagger/Lazy;

    .line 446
    .line 447
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mEnhancedEstimatesProvider:Ljavax/inject/Provider;

    .line 448
    .line 449
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mEnhancedEstimates:Ldagger/Lazy;

    .line 454
    .line 455
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mVibratorHelperProvider:Ljavax/inject/Provider;

    .line 456
    .line 457
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mVibratorHelper:Ldagger/Lazy;

    .line 462
    .line 463
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 464
    .line 465
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mIStatusBarService:Ldagger/Lazy;

    .line 470
    .line 471
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDisplayMetricsProvider:Ljavax/inject/Provider;

    .line 472
    .line 473
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mDisplayMetrics:Ldagger/Lazy;

    .line 478
    .line 479
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mLockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    .line 480
    .line 481
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mLockscreenGestureLogger:Ldagger/Lazy;

    .line 486
    .line 487
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mShadeControllerProvider:Ljavax/inject/Provider;

    .line 488
    .line 489
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mShadeController:Ldagger/Lazy;

    .line 494
    .line 495
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationRemoteInputManagerCallbackProvider:Ljavax/inject/Provider;

    .line 496
    .line 497
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManagerCallback:Ldagger/Lazy;

    .line 502
    .line 503
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAppOpsControllerProvider:Ljavax/inject/Provider;

    .line 504
    .line 505
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mAppOpsController:Ldagger/Lazy;

    .line 510
    .line 511
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNavigationBarControllerProvider:Ljavax/inject/Provider;

    .line 512
    .line 513
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mNavigationBarController:Ldagger/Lazy;

    .line 518
    .line 519
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAccessibilityFloatingMenuControllerProvider:Ljavax/inject/Provider;

    .line 520
    .line 521
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mAccessibilityFloatingMenuController:Ldagger/Lazy;

    .line 526
    .line 527
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mStatusBarStateControllerProvider:Ljavax/inject/Provider;

    .line 528
    .line 529
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mStatusBarStateController:Ldagger/Lazy;

    .line 534
    .line 535
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    .line 536
    .line 537
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mNotificationLockscreenUserManager:Ldagger/Lazy;

    .line 542
    .line 543
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationGutsManagerProvider:Ljavax/inject/Provider;

    .line 544
    .line 545
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mNotificationGutsManager:Ldagger/Lazy;

    .line 550
    .line 551
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationMediaManagerProvider:Ljavax/inject/Provider;

    .line 552
    .line 553
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mNotificationMediaManager:Ldagger/Lazy;

    .line 558
    .line 559
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    .line 560
    .line 561
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mNotificationRemoteInputManager:Ldagger/Lazy;

    .line 566
    .line 567
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSmartReplyConstantsProvider:Ljavax/inject/Provider;

    .line 568
    .line 569
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mSmartReplyConstants:Ldagger/Lazy;

    .line 574
    .line 575
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationListenerProvider:Ljavax/inject/Provider;

    .line 576
    .line 577
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mNotificationListener:Ldagger/Lazy;

    .line 582
    .line 583
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationLoggerProvider:Ljavax/inject/Provider;

    .line 584
    .line 585
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mNotificationLogger:Ldagger/Lazy;

    .line 590
    .line 591
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mKeyguardDismissUtilProvider:Ljavax/inject/Provider;

    .line 592
    .line 593
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mKeyguardDismissUtil:Ldagger/Lazy;

    .line 598
    .line 599
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSmartReplyControllerProvider:Ljavax/inject/Provider;

    .line 600
    .line 601
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mSmartReplyController:Ldagger/Lazy;

    .line 606
    .line 607
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mRemoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    .line 608
    .line 609
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mRemoteInputQuickSettingsDisabler:Ldagger/Lazy;

    .line 614
    .line 615
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    .line 616
    .line 617
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mSensorPrivacyManager:Ldagger/Lazy;

    .line 622
    .line 623
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAutoHideControllerProvider:Ljavax/inject/Provider;

    .line 624
    .line 625
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mAutoHideController:Ldagger/Lazy;

    .line 630
    .line 631
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mPrivacyItemControllerProvider:Ljavax/inject/Provider;

    .line 632
    .line 633
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mPrivacyItemController:Ldagger/Lazy;

    .line 638
    .line 639
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mBgLooperProvider:Ljavax/inject/Provider;

    .line 640
    .line 641
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mBgLooper:Ldagger/Lazy;

    .line 646
    .line 647
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mBgHandlerProvider:Ljavax/inject/Provider;

    .line 648
    .line 649
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mBgHandler:Ldagger/Lazy;

    .line 654
    .line 655
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mMainLooperProvider:Ljavax/inject/Provider;

    .line 656
    .line 657
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mMainLooper:Ldagger/Lazy;

    .line 662
    .line 663
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mMainHandlerProvider:Ljavax/inject/Provider;

    .line 664
    .line 665
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mMainHandler:Ldagger/Lazy;

    .line 670
    .line 671
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mTimeTickHandlerProvider:Ljavax/inject/Provider;

    .line 672
    .line 673
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mTimeTickHandler:Ldagger/Lazy;

    .line 678
    .line 679
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mLeakReportEmailProvider:Ljavax/inject/Provider;

    .line 680
    .line 681
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mLeakReportEmail:Ldagger/Lazy;

    .line 686
    .line 687
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mMainExecutorProvider:Ljavax/inject/Provider;

    .line 688
    .line 689
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mMainExecutor:Ldagger/Lazy;

    .line 694
    .line 695
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 696
    .line 697
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mBackgroundExecutor:Ldagger/Lazy;

    .line 702
    .line 703
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mClockManagerProvider:Ljavax/inject/Provider;

    .line 704
    .line 705
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mClockManager:Ldagger/Lazy;

    .line 710
    .line 711
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mActivityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 712
    .line 713
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mActivityManagerWrapper:Ldagger/Lazy;

    .line 718
    .line 719
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    .line 720
    .line 721
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mDevicePolicyManagerWrapper:Ldagger/Lazy;

    .line 726
    .line 727
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mPackageManagerWrapperProvider:Ljavax/inject/Provider;

    .line 728
    .line 729
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mPackageManagerWrapper:Ldagger/Lazy;

    .line 734
    .line 735
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSensorPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 736
    .line 737
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mSensorPrivacyController:Ldagger/Lazy;

    .line 742
    .line 743
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDockManagerProvider:Ljavax/inject/Provider;

    .line 744
    .line 745
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mDockManager:Ldagger/Lazy;

    .line 750
    .line 751
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mINotificationManagerProvider:Ljavax/inject/Provider;

    .line 752
    .line 753
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mINotificationManager:Ldagger/Lazy;

    .line 758
    .line 759
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSysUiStateFlagsContainerProvider:Ljavax/inject/Provider;

    .line 760
    .line 761
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mSysUiStateFlagsContainer:Ldagger/Lazy;

    .line 766
    .line 767
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAlarmManagerProvider:Ljavax/inject/Provider;

    .line 768
    .line 769
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mAlarmManager:Ldagger/Lazy;

    .line 774
    .line 775
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mKeyguardSecurityModelProvider:Ljavax/inject/Provider;

    .line 776
    .line 777
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mKeyguardSecurityModel:Ldagger/Lazy;

    .line 782
    .line 783
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDozeParametersProvider:Ljavax/inject/Provider;

    .line 784
    .line 785
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mDozeParameters:Ldagger/Lazy;

    .line 790
    .line 791
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mWallpaperManagerProvider:Ljavax/inject/Provider;

    .line 792
    .line 793
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 794
    .line 795
    .line 796
    move-result-object v1

    .line 797
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mWallpaperManager:Ldagger/Lazy;

    .line 798
    .line 799
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mCommandQueueProvider:Ljavax/inject/Provider;

    .line 800
    .line 801
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 802
    .line 803
    .line 804
    move-result-object v1

    .line 805
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mCommandQueue:Ldagger/Lazy;

    .line 806
    .line 807
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mRecordingControllerProvider:Ljavax/inject/Provider;

    .line 808
    .line 809
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mRecordingController:Ldagger/Lazy;

    .line 814
    .line 815
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mProtoTracerProvider:Ljavax/inject/Provider;

    .line 816
    .line 817
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mProtoTracer:Ldagger/Lazy;

    .line 822
    .line 823
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mMediaOutputDialogFactoryProvider:Ljavax/inject/Provider;

    .line 824
    .line 825
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 826
    .line 827
    .line 828
    move-result-object v1

    .line 829
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mMediaOutputDialogFactory:Ldagger/Lazy;

    .line 830
    .line 831
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDeviceConfigProxyProvider:Ljavax/inject/Provider;

    .line 832
    .line 833
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 834
    .line 835
    .line 836
    move-result-object v1

    .line 837
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mDeviceConfigProxy:Ldagger/Lazy;

    .line 838
    .line 839
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mTelephonyListenerManagerProvider:Ljavax/inject/Provider;

    .line 840
    .line 841
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 842
    .line 843
    .line 844
    move-result-object v1

    .line 845
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mTelephonyListenerManager:Ldagger/Lazy;

    .line 846
    .line 847
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSystemStatusAnimationSchedulerLazyProvider:Ljavax/inject/Provider;

    .line 848
    .line 849
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mSystemStatusAnimationSchedulerLazy:Ldagger/Lazy;

    .line 854
    .line 855
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mPrivacyDotViewControllerLazyProvider:Ljavax/inject/Provider;

    .line 856
    .line 857
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 858
    .line 859
    .line 860
    move-result-object v1

    .line 861
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mPrivacyDotViewControllerLazy:Ldagger/Lazy;

    .line 862
    .line 863
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mEdgeBackGestureHandlerFactoryLazyProvider:Ljavax/inject/Provider;

    .line 864
    .line 865
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mEdgeBackGestureHandlerFactoryLazy:Ldagger/Lazy;

    .line 870
    .line 871
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 872
    .line 873
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 874
    .line 875
    .line 876
    move-result-object v1

    .line 877
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mUiEventLogger:Ldagger/Lazy;

    .line 878
    .line 879
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mContentInsetsProviderLazyProvider:Ljavax/inject/Provider;

    .line 880
    .line 881
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mContentInsetsProviderLazy:Ldagger/Lazy;

    .line 886
    .line 887
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mInternetDialogFactoryProvider:Ljavax/inject/Provider;

    .line 888
    .line 889
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 890
    .line 891
    .line 892
    move-result-object v1

    .line 893
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mInternetDialogFactory:Ldagger/Lazy;

    .line 894
    .line 895
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mFeatureFlagsLazyProvider:Ljavax/inject/Provider;

    .line 896
    .line 897
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mFeatureFlagsLazy:Ldagger/Lazy;

    .line 902
    .line 903
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mNotificationSectionsManagerLazyProvider:Ljavax/inject/Provider;

    .line 904
    .line 905
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 906
    .line 907
    .line 908
    move-result-object v1

    .line 909
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mNotificationSectionsManagerLazy:Ldagger/Lazy;

    .line 910
    .line 911
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mScreenOffAnimationControllerProvider:Ljavax/inject/Provider;

    .line 912
    .line 913
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 914
    .line 915
    .line 916
    move-result-object v1

    .line 917
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mScreenOffAnimationController:Ldagger/Lazy;

    .line 918
    .line 919
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mAmbientStateLazyProvider:Ljavax/inject/Provider;

    .line 920
    .line 921
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 922
    .line 923
    .line 924
    move-result-object v1

    .line 925
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mAmbientStateLazy:Ldagger/Lazy;

    .line 926
    .line 927
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mGroupMembershipManagerLazyProvider:Ljavax/inject/Provider;

    .line 928
    .line 929
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 930
    .line 931
    .line 932
    move-result-object v1

    .line 933
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mGroupMembershipManagerLazy:Ldagger/Lazy;

    .line 934
    .line 935
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mGroupExpansionManagerLazyProvider:Ljavax/inject/Provider;

    .line 936
    .line 937
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 938
    .line 939
    .line 940
    move-result-object v1

    .line 941
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mGroupExpansionManagerLazy:Ldagger/Lazy;

    .line 942
    .line 943
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mSystemUIDialogManagerLazyProvider:Ljavax/inject/Provider;

    .line 944
    .line 945
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 946
    .line 947
    .line 948
    move-result-object v1

    .line 949
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mSystemUIDialogManagerLazy:Ldagger/Lazy;

    .line 950
    .line 951
    iget-object v1, p0, Lcom/android/systemui/Dependency_Factory;->mDialogLaunchAnimatorLazyProvider:Ljavax/inject/Provider;

    .line 952
    .line 953
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 954
    .line 955
    .line 956
    move-result-object v1

    .line 957
    iput-object v1, v0, Lcom/android/systemui/Dependency;->mDialogLaunchAnimatorLazy:Ldagger/Lazy;

    .line 958
    .line 959
    iget-object p0, p0, Lcom/android/systemui/Dependency_Factory;->mUserTrackerLazyProvider:Ljavax/inject/Provider;

    .line 960
    .line 961
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 962
    .line 963
    .line 964
    move-result-object p0

    .line 965
    iput-object p0, v0, Lcom/android/systemui/Dependency;->mUserTrackerLazy:Ldagger/Lazy;

    .line 966
    .line 967
    return-object v0
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    .line 1984
    .line 1985
    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    .line 2020
    .line 2021
    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    .line 2060
    .line 2061
    .line 2062
    .line 2063
    .line 2064
    .line 2065
    .line 2066
    .line 2067
    .line 2068
    .line 2069
    .line 2070
    .line 2071
    .line 2072
    .line 2073
    .line 2074
    .line 2075
    .line 2076
    .line 2077
    .line 2078
    .line 2079
    .line 2080
    .line 2081
    .line 2082
    .line 2083
    .line 2084
    .line 2085
    .line 2086
    .line 2087
    .line 2088
    .line 2089
    .line 2090
    .line 2091
    .line 2092
    .line 2093
    .line 2094
    .line 2095
    .line 2096
    .line 2097
    .line 2098
    .line 2099
    .line 2100
    .line 2101
    .line 2102
    .line 2103
    .line 2104
    .line 2105
    .line 2106
    .line 2107
    .line 2108
    .line 2109
    .line 2110
    .line 2111
    .line 2112
    .line 2113
    .line 2114
    .line 2115
    .line 2116
    .line 2117
    .line 2118
    .line 2119
    .line 2120
    .line 2121
    .line 2122
    .line 2123
    .line 2124
    .line 2125
    .line 2126
    .line 2127
    .line 2128
    .line 2129
    .line 2130
    .line 2131
    .line 2132
    .line 2133
    .line 2134
    .line 2135
    .line 2136
    .line 2137
    .line 2138
    .line 2139
    .line 2140
    .line 2141
    .line 2142
    .line 2143
    .line 2144
    .line 2145
    .line 2146
    .line 2147
    .line 2148
    .line 2149
    .line 2150
    .line 2151
    .line 2152
    .line 2153
    .line 2154
    .line 2155
    .line 2156
    .line 2157
    .line 2158
    .line 2159
    .line 2160
    .line 2161
    .line 2162
    .line 2163
    .line 2164
    .line 2165
    .line 2166
    .line 2167
    .line 2168
    .line 2169
    .line 2170
    .line 2171
    .line 2172
    .line 2173
    .line 2174
    .line 2175
    .line 2176
    .line 2177
    .line 2178
    .line 2179
    .line 2180
    .line 2181
    .line 2182
    .line 2183
    .line 2184
    .line 2185
    .line 2186
    .line 2187
    .line 2188
    .line 2189
    .line 2190
    .line 2191
    .line 2192
    .line 2193
    .line 2194
    .line 2195
    .line 2196
    .line 2197
    .line 2198
    .line 2199
    .line 2200
    .line 2201
    .line 2202
    .line 2203
    .line 2204
    .line 2205
    .line 2206
    .line 2207
    .line 2208
    .line 2209
    .line 2210
    .line 2211
    .line 2212
    .line 2213
    .line 2214
    .line 2215
    .line 2216
    .line 2217
    .line 2218
    .line 2219
    .line 2220
    .line 2221
    .line 2222
    .line 2223
    .line 2224
    .line 2225
    .line 2226
    .line 2227
    .line 2228
    .line 2229
    .line 2230
    .line 2231
    .line 2232
    .line 2233
    .line 2234
    .line 2235
    .line 2236
    .line 2237
    .line 2238
    .line 2239
    .line 2240
    .line 2241
    .line 2242
    .line 2243
    .line 2244
    .line 2245
    .line 2246
    .line 2247
    .line 2248
    .line 2249
    .line 2250
    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    .line 2256
    .line 2257
    .line 2258
    .line 2259
    .line 2260
    .line 2261
    .line 2262
    .line 2263
    .line 2264
    .line 2265
    .line 2266
    .line 2267
    .line 2268
    .line 2269
    .line 2270
    .line 2271
    .line 2272
    .line 2273
    .line 2274
    .line 2275
    .line 2276
    .line 2277
    .line 2278
    .line 2279
    .line 2280
    .line 2281
    .line 2282
    .line 2283
    .line 2284
    .line 2285
    .line 2286
    .line 2287
    .line 2288
    .line 2289
    .line 2290
    .line 2291
    .line 2292
    .line 2293
    .line 2294
    .line 2295
    .line 2296
    .line 2297
    .line 2298
    .line 2299
    .line 2300
    .line 2301
    .line 2302
    .line 2303
    .line 2304
    .line 2305
    .line 2306
    .line 2307
    .line 2308
    .line 2309
    .line 2310
    .line 2311
    .line 2312
    .line 2313
    .line 2314
    .line 2315
    .line 2316
    .line 2317
    .line 2318
    .line 2319
    .line 2320
    .line 2321
    .line 2322
    .line 2323
    .line 2324
    .line 2325
    .line 2326
    .line 2327
    .line 2328
    .line 2329
    .line 2330
    .line 2331
    .line 2332
    .line 2333
    .line 2334
    .line 2335
    .line 2336
    .line 2337
    .line 2338
    .line 2339
    .line 2340
    .line 2341
    .line 2342
    .line 2343
    .line 2344
    .line 2345
    .line 2346
    .line 2347
    .line 2348
    .line 2349
    .line 2350
    .line 2351
    .line 2352
    .line 2353
    .line 2354
    .line 2355
    .line 2356
    .line 2357
    .line 2358
    .line 2359
    .line 2360
    .line 2361
    .line 2362
    .line 2363
    .line 2364
    .line 2365
    .line 2366
    .line 2367
    .line 2368
    .line 2369
    .line 2370
    .line 2371
    .line 2372
    .line 2373
    .line 2374
    .line 2375
    .line 2376
    .line 2377
    .line 2378
    .line 2379
    .line 2380
    .line 2381
    .line 2382
    .line 2383
    .line 2384
    .line 2385
    .line 2386
    .line 2387
    .line 2388
    .line 2389
    .line 2390
    .line 2391
    .line 2392
    .line 2393
    .line 2394
    .line 2395
    .line 2396
    .line 2397
    .line 2398
    .line 2399
    .line 2400
    .line 2401
    .line 2402
    .line 2403
    .line 2404
    .line 2405
    .line 2406
    .line 2407
    .line 2408
    .line 2409
    .line 2410
    .line 2411
    .line 2412
    .line 2413
    .line 2414
    .line 2415
    .line 2416
    .line 2417
    .line 2418
    .line 2419
    .line 2420
    .line 2421
    .line 2422
    .line 2423
    .line 2424
    .line 2425
    .line 2426
    .line 2427
    .line 2428
    .line 2429
    .line 2430
    .line 2431
    .line 2432
    .line 2433
    .line 2434
    .line 2435
    .line 2436
    .line 2437
    .line 2438
    .line 2439
    .line 2440
    .line 2441
    .line 2442
    .line 2443
    .line 2444
    .line 2445
    .line 2446
    .line 2447
    .line 2448
    .line 2449
    .line 2450
    .line 2451
    .line 2452
    .line 2453
    .line 2454
    .line 2455
    .line 2456
    .line 2457
    .line 2458
    .line 2459
    .line 2460
    .line 2461
    .line 2462
    .line 2463
    .line 2464
    .line 2465
    .line 2466
    .line 2467
    .line 2468
    .line 2469
    .line 2470
    .line 2471
    .line 2472
    .line 2473
    .line 2474
    .line 2475
    .line 2476
    .line 2477
    .line 2478
    .line 2479
    .line 2480
    .line 2481
    .line 2482
    .line 2483
    .line 2484
    .line 2485
    .line 2486
    .line 2487
    .line 2488
    .line 2489
    .line 2490
    .line 2491
    .line 2492
    .line 2493
    .line 2494
    .line 2495
    .line 2496
    .line 2497
    .line 2498
    .line 2499
    .line 2500
    .line 2501
    .line 2502
    .line 2503
    .line 2504
    .line 2505
    .line 2506
    .line 2507
    .line 2508
    .line 2509
    .line 2510
    .line 2511
    .line 2512
    .line 2513
    .line 2514
    .line 2515
    .line 2516
    .line 2517
    .line 2518
    .line 2519
    .line 2520
    .line 2521
    .line 2522
    .line 2523
    .line 2524
    .line 2525
    .line 2526
    .line 2527
    .line 2528
    .line 2529
    .line 2530
    .line 2531
    .line 2532
    .line 2533
    .line 2534
    .line 2535
    .line 2536
    .line 2537
    .line 2538
    .line 2539
    .line 2540
    .line 2541
    .line 2542
    .line 2543
    .line 2544
    .line 2545
    .line 2546
    .line 2547
    .line 2548
    .line 2549
    .line 2550
    .line 2551
    .line 2552
    .line 2553
    .line 2554
    .line 2555
    .line 2556
    .line 2557
    .line 2558
    .line 2559
    .line 2560
    .line 2561
    .line 2562
    .line 2563
    .line 2564
    .line 2565
    .line 2566
    .line 2567
    .line 2568
    .line 2569
    .line 2570
    .line 2571
    .line 2572
    .line 2573
    .line 2574
    .line 2575
    .line 2576
    .line 2577
    .line 2578
    .line 2579
    .line 2580
    .line 2581
    .line 2582
    .line 2583
    .line 2584
    .line 2585
    .line 2586
    .line 2587
    .line 2588
    .line 2589
    .line 2590
    .line 2591
    .line 2592
    .line 2593
    .line 2594
    .line 2595
    .line 2596
    .line 2597
    .line 2598
    .line 2599
    .line 2600
    .line 2601
    .line 2602
    .line 2603
    .line 2604
    .line 2605
    .line 2606
    .line 2607
    .line 2608
    .line 2609
    .line 2610
    .line 2611
    .line 2612
    .line 2613
    .line 2614
    .line 2615
    .line 2616
    .line 2617
    .line 2618
    .line 2619
    .line 2620
    .line 2621
    .line 2622
    .line 2623
    .line 2624
    .line 2625
    .line 2626
    .line 2627
    .line 2628
    .line 2629
    .line 2630
    .line 2631
    .line 2632
    .line 2633
    .line 2634
    .line 2635
    .line 2636
    .line 2637
    .line 2638
    .line 2639
    .line 2640
    .line 2641
    .line 2642
    .line 2643
    .line 2644
    .line 2645
    .line 2646
    .line 2647
    .line 2648
    .line 2649
    .line 2650
    .line 2651
    .line 2652
    .line 2653
    .line 2654
    .line 2655
    .line 2656
    .line 2657
    .line 2658
    .line 2659
    .line 2660
    .line 2661
    .line 2662
    .line 2663
    .line 2664
    .line 2665
    .line 2666
    .line 2667
    .line 2668
    .line 2669
    .line 2670
    .line 2671
    .line 2672
    .line 2673
    .line 2674
    .line 2675
    .line 2676
    .line 2677
    .line 2678
    .line 2679
    .line 2680
    .line 2681
    .line 2682
    .line 2683
    .line 2684
    .line 2685
    .line 2686
    .line 2687
    .line 2688
    .line 2689
    .line 2690
    .line 2691
    .line 2692
    .line 2693
.end method
