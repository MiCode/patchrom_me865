.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1029
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1030
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1032
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1034
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 107
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    return-void
.end method

.method public run()V
    .locals 117

    .prologue
    .line 113
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 116
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 118
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 121
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 122
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 126
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v96

    .line 128
    .local v96, shutdownAction:Ljava/lang/String;
    if-eqz v96, :cond_0

    invoke-virtual/range {v96 .. v96}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 129
    const/4 v3, 0x0

    move-object/from16 v0, v96

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_d

    const/16 v90, 0x1

    .line 132
    .local v90, reboot:Z
    :goto_0
    invoke-virtual/range {v96 .. v96}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_e

    .line 133
    const/4 v3, 0x1

    invoke-virtual/range {v96 .. v96}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v96

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v89

    .line 138
    .local v89, reason:Ljava/lang/String;
    :goto_1
    const-string v3, "SystemServer"

    const-string v9, "shutdowntrigger: SystemServer\n"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    move/from16 v0, v90

    move-object/from16 v1, v89

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 143
    .end local v89           #reason:Ljava/lang/String;
    .end local v90           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .line 144
    .local v66, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v66

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v65, 0x0

    .line 147
    .local v65, factoryTest:I
    :goto_2
    const/16 v71, 0x0

    .line 148
    .local v71, lights:Lcom/android/server/LightsService;
    const/16 v88, 0x0

    .line 149
    .local v88, power:Lcom/android/server/PowerManagerService;
    const/16 v43, 0x0

    .line 150
    .local v43, battery:Lcom/android/server/BatteryService;
    const/16 v40, 0x0

    .line 151
    .local v40, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 152
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 153
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v80, 0x0

    .line 154
    .local v80, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v50, 0x0

    .line 158
    .local v50, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v114, 0x0

    .line 159
    .local v114, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v112, 0x0

    .line 162
    .local v112, wifi:Lcom/android/server/WifiService;
    const/16 v87, 0x0

    .line 163
    .local v87, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 164
    .local v4, context:Landroid/content/Context;
    const/16 v116, 0x0

    .line 165
    .local v116, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v44, 0x0

    .line 166
    .local v44, bluetooth:Landroid/server/BluetoothService;
    const/16 v46, 0x0

    .line 167
    .local v46, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v59, 0x0

    .line 168
    .local v59, dock:Lcom/android/server/DockObserver;
    const/16 v105, 0x0

    .line 172
    .local v105, usb:Lcom/android/server/usb/UsbService;
    const/16 v78, 0x0

    .line 176
    .local v78, motDock:Lcom/motorola/server/MotDockObserver;
    const/16 v103, 0x0

    .line 177
    .local v103, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v91, 0x0

    .line 178
    .local v91, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v99, 0x0

    .line 179
    .local v99, throttle:Lcom/android/server/ThrottleService;
    const/16 v82, 0x0

    .line 181
    .local v82, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v55, 0x0

    .line 186
    .local v55, deviceManager:Lcom/android/server/DeviceManager3LMService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyService;

    invoke-direct {v9}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 189
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_47

    .line 191
    .end local v88           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 194
    const-string v3, "SystemServer"

    const-string v9, "DeviceManager3LM"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v56, Lcom/android/server/DeviceManager3LMService;

    invoke-direct/range {v56 .. v56}, Lcom/android/server/DeviceManager3LMService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_48

    .line 196
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .local v56, deviceManager:Lcom/android/server/DeviceManager3LMService;
    :try_start_2
    const-string v3, "DeviceManager3LM"

    move-object/from16 v0, v56

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 199
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static/range {v65 .. v65}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 203
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 206
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    const-string v3, "SystemServer"

    const-string v9, "Secondary Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v3, "telephony.registry2"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    const/4 v10, 0x0

    invoke-direct {v9, v4, v10}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Z)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 212
    :cond_1
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 214
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 217
    .local v54, cryptState:Ljava/lang/String;
    const/16 v86, 0x0

    .line 218
    .local v86, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 219
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/16 v86, 0x1

    .line 226
    :cond_2
    :goto_3
    if-eqz v65, :cond_11

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v86

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v87

    .line 229
    const/16 v67, 0x0

    .line 231
    .local v67, firstBoot:Z
    :try_start_3
    invoke-interface/range {v87 .. v87}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_31
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v67

    .line 235
    :goto_5
    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 237
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 241
    :try_start_5
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v3, "account"

    new-instance v9, Landroid/accounts/AccountManagerService;

    invoke-direct {v9, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 248
    :goto_6
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v3, 0x1

    move/from16 v0, v65

    if-ne v0, v3, :cond_12

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 252
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 255
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v72, Lcom/android/server/LightsService;

    move-object/from16 v0, v72

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 258
    .end local v71           #lights:Lcom/android/server/LightsService;
    .local v72, lights:Lcom/android/server/LightsService;
    :try_start_7
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v72

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_49

    .line 260
    .end local v43           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_8
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 262
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v3, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 267
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v72

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 269
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4a

    .line 271
    .end local v40           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_9
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 273
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 277
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v3, 0x1

    move/from16 v0, v65

    if-eq v0, v3, :cond_13

    const/4 v3, 0x1

    move v9, v3

    :goto_8
    if-nez v67, :cond_14

    const/4 v3, 0x1

    :goto_9
    invoke-static {v4, v6, v9, v3}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v116

    .line 281
    const-string v3, "window"

    move-object/from16 v0, v116

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 283
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v116

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 288
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 289
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_a
    move-object/from16 v55, v56

    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v71, v72

    .line 316
    .end local v54           #cryptState:Ljava/lang/String;
    .end local v67           #firstBoot:Z
    .end local v72           #lights:Lcom/android/server/LightsService;
    .end local v86           #onlyCore:Z
    .restart local v71       #lights:Lcom/android/server/LightsService;
    :goto_b
    const/16 v57, 0x0

    .line 318
    .local v57, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v76, 0x0

    .line 319
    .local v76, motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    const/16 v97, 0x0

    .line 320
    .local v97, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v68, 0x0

    .line 321
    .local v68, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v41, 0x0

    .line 322
    .local v41, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v84, 0x0

    .line 323
    .local v84, notification:Lcom/android/server/NotificationManagerService;
    const/16 v110, 0x0

    .line 324
    .local v110, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v73, 0x0

    .line 327
    .local v73, location:Lcom/android/server/LocationManagerService;
    const/16 v107, 0x0

    .line 333
    .local v107, vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    const/16 v93, 0x0

    .line 336
    .local v93, sensorHub:Lcom/motorola/server/SensorHubService;
    const/16 v52, 0x0

    .line 337
    .local v52, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v101, 0x0

    .line 340
    .local v101, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v62, 0x0

    .line 344
    .local v62, encryption:Lcom/motorola/server/encryption/EncryptionService;
    const/4 v3, 0x1

    move/from16 v0, v65

    if-eq v0, v3, :cond_3

    .line 346
    :try_start_a
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v69, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v69

    invoke-direct {v0, v4}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    .line 348
    .end local v68           #imm:Lcom/android/server/InputMethodManagerService;
    .local v69, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_b
    const-string v3, "input_method"

    move-object/from16 v0, v69

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_46

    move-object/from16 v68, v69

    .line 354
    .end local v69           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v68       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_c
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .line 363
    :goto_d
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Motorola encryption service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v63, Lcom/motorola/server/encryption/EncryptionService;

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Lcom/motorola/server/encryption/EncryptionService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 365
    .end local v62           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .local v63, encryption:Lcom/motorola/server/encryption/EncryptionService;
    :try_start_e
    const-string v3, "mot_encryption_service"

    move-object/from16 v0, v63

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_45

    move-object/from16 v62, v63

    .line 373
    .end local v63           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v62       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    :cond_3
    :goto_e
    :try_start_f
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    .line 379
    :goto_f
    :try_start_10
    invoke-interface/range {v87 .. v87}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    .line 385
    :goto_10
    :try_start_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403d4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_44

    .line 392
    :goto_11
    const/4 v3, 0x1

    move/from16 v0, v65

    if-eq v0, v3, :cond_1a

    .line 394
    :try_start_12
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance v58, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v58

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    .line 396
    .end local v57           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v58, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_13
    const-string v3, "device_policy"

    move-object/from16 v0, v58

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_43

    move-object/from16 v57, v58

    .line 406
    .end local v58           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v57       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_12
    :try_start_14
    const-string v3, "SystemServer"

    const-string v9, "Mot Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v77, Lcom/motorola/motepm/MotDevicePolicyManagerService;

    move-object/from16 v0, v77

    invoke-direct {v0, v4}, Lcom/motorola/motepm/MotDevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9

    .line 408
    .end local v76           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .local v77, motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    :try_start_15
    const-string v3, "mot_device_policy"

    move-object/from16 v0, v77

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_42

    move-object/from16 v76, v77

    .line 416
    .end local v77           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v76       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    :goto_13
    :try_start_16
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v98, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v98

    move-object/from16 v1, v116

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a

    .line 418
    .end local v97           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v98, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_17
    const-string v3, "statusbar"

    move-object/from16 v0, v98

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_41

    move-object/from16 v97, v98

    .line 424
    .end local v98           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v97       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_14
    :try_start_18
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_b

    .line 432
    :goto_15
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 434
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_c

    .line 440
    :goto_16
    :try_start_1a
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v102, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v102

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_d

    .line 442
    .end local v101           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v102, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_1b
    const-string v3, "textservices"

    move-object/from16 v0, v102

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_40

    move-object/from16 v101, v102

    .line 448
    .end local v102           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v101       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_17
    :try_start_1c
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v81, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v81

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_e

    .line 450
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v81, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_1d
    const-string v3, "netstats"

    move-object/from16 v0, v81

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_3f

    move-object/from16 v12, v81

    .line 456
    .end local v81           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_18
    :try_start_1e
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_f

    .line 460
    .end local v80           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1f
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_3e

    .line 466
    :goto_19
    :try_start_20
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v115, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v115

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_10

    .line 468
    .end local v114           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v115, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_21
    const-string v3, "wifip2p"

    move-object/from16 v0, v115

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_3d

    move-object/from16 v114, v115

    .line 474
    .end local v115           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v114       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1a
    :try_start_22
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v113, Lcom/android/server/WifiService;

    move-object/from16 v0, v113

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_11

    .line 476
    .end local v112           #wifi:Lcom/android/server/WifiService;
    .local v113, wifi:Lcom/android/server/WifiService;
    :try_start_23
    const-string v3, "wifi"

    move-object/from16 v0, v113

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_3c

    move-object/from16 v112, v113

    .line 484
    .end local v113           #wifi:Lcom/android/server/WifiService;
    .restart local v112       #wifi:Lcom/android/server/WifiService;
    :goto_1b
    :try_start_24
    const-string v3, "SystemServer"

    const-string v9, "Ethernet Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v64, Lcom/android/server/EthernetService;

    move-object/from16 v0, v64

    invoke-direct {v0, v4}, Lcom/android/server/EthernetService;-><init>(Landroid/content/Context;)V

    .line 486
    .local v64, ethernet:Lcom/android/server/EthernetService;
    const-string v3, "ethernet"

    move-object/from16 v0, v64

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_12

    .line 494
    .end local v64           #ethernet:Lcom/android/server/EthernetService;
    :goto_1c
    :try_start_25
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v51, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v51

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_13

    .line 497
    .end local v50           #connectivity:Lcom/android/server/ConnectivityService;
    .local v51, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_26
    const-string v3, "connectivity"

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 498
    move-object/from16 v0, v51

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 499
    move-object/from16 v0, v51

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 500
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 501
    invoke-virtual/range {v114 .. v114}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_3b

    move-object/from16 v50, v51

    .line 517
    .end local v51           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v50       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1d
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v100, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v100

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_14

    .line 519
    .end local v99           #throttle:Lcom/android/server/ThrottleService;
    .local v100, throttle:Lcom/android/server/ThrottleService;
    :try_start_28
    const-string v3, "throttle"

    move-object/from16 v0, v100

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_3a

    move-object/from16 v99, v100

    .line 530
    .end local v100           #throttle:Lcom/android/server/ThrottleService;
    .restart local v99       #throttle:Lcom/android/server/ThrottleService;
    :goto_1e
    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v3, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_15

    .line 537
    :goto_1f
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v85, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v85

    move-object/from16 v1, v97

    move-object/from16 v2, v71

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_16

    .line 539
    .end local v84           #notification:Lcom/android/server/NotificationManagerService;
    .local v85, notification:Lcom/android/server/NotificationManagerService;
    :try_start_2b
    const-string v3, "notification"

    move-object/from16 v0, v85

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 540
    move-object/from16 v0, v85

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_39

    move-object/from16 v84, v85

    .line 546
    .end local v85           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v84       #notification:Lcom/android/server/NotificationManagerService;
    :goto_20
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_17

    .line 554
    :goto_21
    const-string v3, "ro.com.moto.tigps"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "true"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 557
    :try_start_2d
    const-string v3, "SystemServer"

    const-string v9, "starting SUPL Service (SystemServer)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v3, "SUPL_SERVICE"

    invoke-static {v4}, Lcom/android/server/SUPLService;->getInstance(Landroid/content/Context;)Lcom/android/server/SUPLService;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_18

    .line 565
    :cond_4
    :goto_22
    :try_start_2e
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v74, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v74

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_19

    .line 567
    .end local v73           #location:Lcom/android/server/LocationManagerService;
    .local v74, location:Lcom/android/server/LocationManagerService;
    :try_start_2f
    const-string v3, "location"

    move-object/from16 v0, v74

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_38

    move-object/from16 v73, v74

    .line 577
    .end local v74           #location:Lcom/android/server/LocationManagerService;
    .restart local v73       #location:Lcom/android/server/LocationManagerService;
    :goto_23
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "agps_feature_enabled"

    const/4 v10, 0x1

    invoke-static {v3, v9, v10}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_18

    const/16 v70, 0x1

    .line 580
    .local v70, isAgpsFtrEnabled:Z
    :goto_24
    if-eqz v70, :cond_5

    .line 583
    :try_start_30
    const-string v3, "SystemServer"

    const-string v9, "Vzw Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v108, Lcom/vzw/location/VzwLocationManagerService;

    move-object/from16 v0, v108

    invoke-direct {v0, v4}, Lcom/vzw/location/VzwLocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1a

    .line 585
    .end local v107           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .local v108, vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    :try_start_31
    const-string v3, "VZW_LOCATION_SERVICE"

    move-object/from16 v0, v108

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_37

    move-object/from16 v107, v108

    .line 595
    .end local v108           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .restart local v107       #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    :cond_5
    :goto_25
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance v53, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1b

    .line 597
    .end local v52           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v53, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_33
    const-string v3, "country_detector"

    move-object/from16 v0, v53

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_36

    move-object/from16 v52, v53

    .line 604
    .end local v53           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v52       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_26
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110065

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v95

    .line 606
    .local v95, sensorHubExists:Z
    if-eqz v95, :cond_6

    .line 608
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "SensorHub Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    new-instance v94, Lcom/motorola/server/SensorHubService;

    move-object/from16 v0, v94

    invoke-direct {v0, v4}, Lcom/motorola/server/SensorHubService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1c

    .line 610
    .end local v93           #sensorHub:Lcom/motorola/server/SensorHubService;
    .local v94, sensorHub:Lcom/motorola/server/SensorHubService;
    :try_start_35
    const-string v3, "sensorhub"

    move-object/from16 v0, v94

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_35

    move-object/from16 v93, v94

    .line 619
    .end local v94           #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v93       #sensorHub:Lcom/motorola/server/SensorHubService;
    :cond_6
    :goto_27
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1d

    .line 627
    :goto_28
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1e

    .line 639
    :goto_29
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "Starting Checkin Mot Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const-string v3, "checkin_mot"

    new-instance v9, Lcom/motorola/android/server/checkin/CheckinService;

    invoke-direct {v9, v4}, Lcom/motorola/android/server/checkin/CheckinService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1f

    .line 649
    :goto_2a
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v111, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v111

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_20

    .line 651
    .end local v110           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v111, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_3a
    const-string v3, "wallpaper"

    move-object/from16 v0, v111

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_34

    move-object/from16 v110, v111

    .line 657
    .end local v111           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v110       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_2b
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_21

    .line 664
    :goto_2c
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance v60, Lcom/android/server/DockObserver;

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_22

    .end local v59           #dock:Lcom/android/server/DockObserver;
    .local v60, dock:Lcom/android/server/DockObserver;
    move-object/from16 v59, v60

    .line 672
    .end local v60           #dock:Lcom/android/server/DockObserver;
    .restart local v59       #dock:Lcom/android/server/DockObserver;
    :goto_2d
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_23

    .line 680
    :goto_2e
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v106, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v106

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_24

    .line 683
    .end local v105           #usb:Lcom/android/server/usb/UsbService;
    .local v106, usb:Lcom/android/server/usb/UsbService;
    :try_start_3f
    const-string v3, "usb"

    move-object/from16 v0, v106

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_33

    move-object/from16 v105, v106

    .line 692
    .end local v106           #usb:Lcom/android/server/usb/UsbService;
    .restart local v105       #usb:Lcom/android/server/usb/UsbService;
    :goto_2f
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "Mot Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v79, Lcom/motorola/server/MotDockObserver;

    move-object/from16 v0, v79

    invoke-direct {v0, v4}, Lcom/motorola/server/MotDockObserver;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_25

    .end local v78           #motDock:Lcom/motorola/server/MotDockObserver;
    .local v79, motDock:Lcom/motorola/server/MotDockObserver;
    move-object/from16 v78, v79

    .line 705
    .end local v79           #motDock:Lcom/motorola/server/MotDockObserver;
    .restart local v78       #motDock:Lcom/motorola/server/MotDockObserver;
    :goto_30
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v104, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v104

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_26

    .end local v103           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v104, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v103, v104

    .line 713
    .end local v104           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v103       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_31
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_27

    .line 721
    :goto_32
    :try_start_43
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    new-instance v42, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_28

    .line 723
    .end local v41           #appWidget:Lcom/android/server/AppWidgetService;
    .local v42, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_44
    const-string v3, "appwidget"

    move-object/from16 v0, v42

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_32

    move-object/from16 v41, v42

    .line 729
    .end local v42           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v41       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_33
    :try_start_45
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v92, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v92

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_29

    .end local v91           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v92, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v91, v92

    .line 736
    .end local v92           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v91       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_34
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2a

    .line 747
    :goto_35
    :try_start_47
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2b

    .line 755
    :goto_36
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    new-instance v83, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v83

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2c

    .end local v82           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v83, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v82, v83

    .line 762
    .end local v83           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v82       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_37
    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lcom/android/server/DeviceManager3LMService;->init(Landroid/content/Context;)V

    .line 767
    const-string v3, "ro.3LM.extended"

    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_7

    .line 768
    const-string v3, "SystemServer"

    const-string v9, "3LM OEM Extended Api Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-string v3, "OemExtendedApi3LM"

    new-instance v9, Lcom/android/server/OemExtendedApi3LMService;

    const/4 v10, 0x0

    invoke-direct {v9, v4, v10}, Lcom/android/server/OemExtendedApi3LMService;-><init>(Landroid/content/Context;Landroid/os/IDeviceManagerRestrictable3LM;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 777
    .end local v70           #isAgpsFtrEnabled:Z
    .end local v95           #sensorHubExists:Z
    :cond_7
    :goto_38
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v28

    .line 778
    .local v28, safeMode:Z
    if-eqz v28, :cond_19

    .line 779
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 781
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 783
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 791
    :goto_39
    if-eqz v57, :cond_8

    .line 793
    :try_start_49
    invoke-virtual/range {v57 .. v57}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2d

    .line 799
    :cond_8
    :goto_3a
    if-eqz v84, :cond_9

    .line 801
    :try_start_4a
    invoke-virtual/range {v84 .. v84}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2e

    .line 808
    :cond_9
    :goto_3b
    if-eqz v76, :cond_a

    .line 809
    invoke-virtual/range {v76 .. v76}, Lcom/motorola/motepm/MotDevicePolicyManagerService;->systemReady()V

    .line 814
    :cond_a
    :try_start_4b
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2f

    .line 819
    :goto_3c
    if-eqz v28, :cond_b

    .line 820
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 826
    :cond_b
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v49

    .line 827
    .local v49, config:Landroid/content/res/Configuration;
    new-instance v75, Landroid/util/DisplayMetrics;

    invoke-direct/range {v75 .. v75}, Landroid/util/DisplayMetrics;-><init>()V

    .line 828
    .local v75, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v109

    check-cast v109, Landroid/view/WindowManager;

    .line 829
    .local v109, w:Landroid/view/WindowManager;
    invoke-interface/range {v109 .. v109}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v75

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 830
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v49

    move-object/from16 v1, v75

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 832
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 834
    :try_start_4c
    invoke-interface/range {v87 .. v87}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_30

    .line 840
    :goto_3d
    move-object/from16 v16, v4

    .line 841
    .local v16, contextF:Landroid/content/Context;
    move-object/from16 v17, v5

    .line 842
    .local v17, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v18, v13

    .line 843
    .local v18, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v19, v12

    .line 844
    .local v19, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v20, v8

    .line 845
    .local v20, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v21, v50

    .line 846
    .local v21, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v22, v59

    .line 847
    .local v22, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v23, v105

    .line 850
    .local v23, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v24, v78

    .line 853
    .local v24, motDockF:Lcom/motorola/server/MotDockObserver;
    move-object/from16 v36, v99

    .line 854
    .local v36, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v25, v103

    .line 855
    .local v25, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v27, v41

    .line 856
    .local v27, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v29, v110

    .line 857
    .local v29, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v30, v68

    .line 858
    .local v30, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v26, v91

    .line 859
    .local v26, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v32, v73

    .line 862
    .local v32, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v33, v107

    .line 865
    .local v33, vzwLocationF:Lcom/vzw/location/VzwLocationManagerService;
    move-object/from16 v35, v52

    .line 866
    .local v35, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v37, v82

    .line 867
    .local v37, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v38, v101

    .line 868
    .local v38, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v31, v97

    .line 871
    .local v31, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v34, v93

    .line 881
    .local v34, sensorHubF:Lcom/motorola/server/SensorHubService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v38}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/motorola/server/MotDockObserver;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/vzw/location/VzwLocationManagerService;Lcom/motorola/server/SensorHubService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/TextServicesManagerService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1020
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1021
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_c
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1025
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    return-void

    .line 129
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #batteryF:Lcom/android/server/BatteryService;
    .end local v18           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v19           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v20           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v21           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v22           #dockF:Lcom/android/server/DockObserver;
    .end local v23           #usbF:Lcom/android/server/usb/UsbService;
    .end local v24           #motDockF:Lcom/motorola/server/MotDockObserver;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #vzwLocationF:Lcom/vzw/location/VzwLocationManagerService;
    .end local v34           #sensorHubF:Lcom/motorola/server/SensorHubService;
    .end local v35           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v36           #throttleF:Lcom/android/server/ThrottleService;
    .end local v37           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v38           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v41           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v44           #bluetooth:Landroid/server/BluetoothService;
    .end local v46           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v49           #config:Landroid/content/res/Configuration;
    .end local v50           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v52           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v57           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v59           #dock:Lcom/android/server/DockObserver;
    .end local v62           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .end local v65           #factoryTest:I
    .end local v66           #factoryTestStr:Ljava/lang/String;
    .end local v68           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v71           #lights:Lcom/android/server/LightsService;
    .end local v73           #location:Lcom/android/server/LocationManagerService;
    .end local v75           #metrics:Landroid/util/DisplayMetrics;
    .end local v76           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .end local v78           #motDock:Lcom/motorola/server/MotDockObserver;
    .end local v82           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v84           #notification:Lcom/android/server/NotificationManagerService;
    .end local v87           #pm:Landroid/content/pm/IPackageManager;
    .end local v91           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v93           #sensorHub:Lcom/motorola/server/SensorHubService;
    .end local v97           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v99           #throttle:Lcom/android/server/ThrottleService;
    .end local v101           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v103           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v105           #usb:Lcom/android/server/usb/UsbService;
    .end local v107           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .end local v109           #w:Landroid/view/WindowManager;
    .end local v110           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v112           #wifi:Lcom/android/server/WifiService;
    .end local v114           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v116           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_d
    const/16 v90, 0x0

    goto/16 :goto_0

    .line 135
    .restart local v90       #reboot:Z
    :cond_e
    const/16 v89, 0x0

    .restart local v89       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 144
    .end local v89           #reason:Ljava/lang/String;
    .end local v90           #reboot:Z
    .restart local v66       #factoryTestStr:Ljava/lang/String;
    :cond_f
    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v65

    goto/16 :goto_2

    .line 221
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v40       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v43       #battery:Lcom/android/server/BatteryService;
    .restart local v44       #bluetooth:Landroid/server/BluetoothService;
    .restart local v46       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v50       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v54       #cryptState:Ljava/lang/String;
    .restart local v56       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v59       #dock:Lcom/android/server/DockObserver;
    .restart local v65       #factoryTest:I
    .restart local v71       #lights:Lcom/android/server/LightsService;
    .restart local v78       #motDock:Lcom/motorola/server/MotDockObserver;
    .restart local v80       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v82       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v86       #onlyCore:Z
    .restart local v87       #pm:Landroid/content/pm/IPackageManager;
    .restart local v91       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v99       #throttle:Lcom/android/server/ThrottleService;
    .restart local v103       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v105       #usb:Lcom/android/server/usb/UsbService;
    .restart local v112       #wifi:Lcom/android/server/WifiService;
    .restart local v114       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v116       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_10
    :try_start_4d
    const-string v3, "1"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v86, 0x1

    goto/16 :goto_3

    .line 226
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 244
    .restart local v67       #firstBoot:Z
    :catch_0
    move-exception v61

    .line 245
    .local v61, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_4d} :catch_1

    goto/16 :goto_6

    .line 311
    .end local v54           #cryptState:Ljava/lang/String;
    .end local v61           #e:Ljava/lang/Throwable;
    .end local v67           #firstBoot:Z
    .end local v86           #onlyCore:Z
    :catch_1
    move-exception v61

    move-object/from16 v55, v56

    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v7, v40

    .end local v40           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v43

    .line 312
    .end local v43           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v61, e:Ljava/lang/RuntimeException;
    :goto_3e
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 249
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v61           #e:Ljava/lang/RuntimeException;
    .restart local v40       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v43       #battery:Lcom/android/server/BatteryService;
    .restart local v54       #cryptState:Ljava/lang/String;
    .restart local v56       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v67       #firstBoot:Z
    .restart local v86       #onlyCore:Z
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 278
    .end local v40           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v43           #battery:Lcom/android/server/BatteryService;
    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v72       #lights:Lcom/android/server/LightsService;
    :cond_13
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_8

    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 290
    :cond_15
    const/4 v3, 0x1

    move/from16 v0, v65

    if-ne v0, v3, :cond_16

    .line 291
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 311
    :catch_2
    move-exception v61

    move-object/from16 v55, v56

    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v71, v72

    .end local v72           #lights:Lcom/android/server/LightsService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    goto :goto_3e

    .line 293
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v56       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v72       #lights:Lcom/android/server/LightsService;
    :cond_16
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v45, Landroid/server/BluetoothService;

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_4e} :catch_2

    .line 295
    .end local v44           #bluetooth:Landroid/server/BluetoothService;
    .local v45, bluetooth:Landroid/server/BluetoothService;
    :try_start_4f
    const-string v3, "bluetooth"

    move-object/from16 v0, v45

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 296
    invoke-virtual/range {v45 .. v45}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 297
    new-instance v47, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_4f} :catch_4b

    .line 298
    .end local v46           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v47, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_50
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v47

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 300
    invoke-virtual/range {v45 .. v45}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v39

    .line 304
    .local v39, airplaneModeOn:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v48

    .line 306
    .local v48, bluetoothOn:I
    if-nez v39, :cond_17

    if-eqz v48, :cond_17

    .line 307
    invoke-virtual/range {v45 .. v45}, Landroid/server/BluetoothService;->enable()Z
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_50} :catch_4c

    :cond_17
    move-object/from16 v46, v47

    .end local v47           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v46       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v44, v45

    .end local v45           #bluetooth:Landroid/server/BluetoothService;
    .restart local v44       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .line 349
    .end local v39           #airplaneModeOn:I
    .end local v48           #bluetoothOn:I
    .end local v54           #cryptState:Ljava/lang/String;
    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v67           #firstBoot:Z
    .end local v72           #lights:Lcom/android/server/LightsService;
    .end local v86           #onlyCore:Z
    .restart local v41       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v52       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v57       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v68       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    .restart local v73       #location:Lcom/android/server/LocationManagerService;
    .restart local v76       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v84       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v93       #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v97       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v101       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v107       #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .restart local v110       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v61

    .line 350
    .local v61, e:Ljava/lang/Throwable;
    :goto_3f
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 357
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v61

    .line 358
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 366
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v61

    .line 367
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_40
    const-string v3, "SystemServer"

    const-string v9, "Failure starting encryption service"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 374
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v61

    .line 375
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 380
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v61

    .line 381
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 397
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v61

    .line 398
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_41
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 409
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v61

    .line 410
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_42
    const-string v3, "Failure starting MotDevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 419
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v61

    .line 420
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_43
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 427
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v61

    .line 428
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 435
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v61

    .line 436
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 443
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v61

    .line 444
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_44
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 451
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v61

    .line 452
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_45
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 461
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v61

    move-object/from16 v8, v80

    .line 462
    .end local v80           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 469
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v61

    .line 470
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 477
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v61

    .line 478
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 487
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v61

    .line 488
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Ethernet Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 502
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v61

    .line 503
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 521
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v61

    .line 522
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 532
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v61

    .line 533
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 541
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v61

    .line 542
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 549
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v61

    .line 550
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 559
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v61

    .line 560
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "===>>> Failure installing SUPL Service"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 568
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v61

    .line 569
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 577
    .end local v61           #e:Ljava/lang/Throwable;
    :cond_18
    const/16 v70, 0x0

    goto/16 :goto_24

    .line 586
    .restart local v70       #isAgpsFtrEnabled:Z
    :catch_1a
    move-exception v61

    .line 587
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v3, "starting Vzw Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 598
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v61

    .line 599
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 611
    .end local v61           #e:Ljava/lang/Throwable;
    .restart local v95       #sensorHubExists:Z
    :catch_1c
    move-exception v61

    .line 612
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SensorHub Service"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 622
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v61

    .line 623
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 630
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v61

    .line 631
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 642
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v61

    .line 643
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting Checkin Mot Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 652
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v61

    .line 653
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 659
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v61

    .line 660
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 667
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v61

    .line 668
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 675
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v61

    .line 676
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 684
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v61

    .line 685
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 697
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v61

    .line 698
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting MotDockObserver"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 708
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v61

    .line 709
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 716
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v61

    .line 717
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v61

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 724
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v61

    .line 725
    .restart local v61       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 731
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v61

    .line 732
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 738
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v61

    .line 739
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 750
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v61

    .line 751
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 757
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v61

    .line 758
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 786
    .end local v61           #e:Ljava/lang/Throwable;
    .end local v70           #isAgpsFtrEnabled:Z
    .end local v95           #sensorHubExists:Z
    .restart local v28       #safeMode:Z
    :cond_19
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_39

    .line 794
    :catch_2d
    move-exception v61

    .line 795
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 802
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v61

    .line 803
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 815
    .end local v61           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v61

    .line 816
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 835
    .end local v61           #e:Ljava/lang/Throwable;
    .restart local v49       #config:Landroid/content/res/Configuration;
    .restart local v75       #metrics:Landroid/util/DisplayMetrics;
    .restart local v109       #w:Landroid/view/WindowManager;
    :catch_30
    move-exception v61

    .line 836
    .restart local v61       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 232
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v28           #safeMode:Z
    .end local v41           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v49           #config:Landroid/content/res/Configuration;
    .end local v52           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v57           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v61           #e:Ljava/lang/Throwable;
    .end local v62           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .end local v68           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v73           #location:Lcom/android/server/LocationManagerService;
    .end local v75           #metrics:Landroid/util/DisplayMetrics;
    .end local v76           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .end local v84           #notification:Lcom/android/server/NotificationManagerService;
    .end local v93           #sensorHub:Lcom/motorola/server/SensorHubService;
    .end local v97           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v101           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v107           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .end local v109           #w:Landroid/view/WindowManager;
    .end local v110           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v40       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v43       #battery:Lcom/android/server/BatteryService;
    .restart local v54       #cryptState:Ljava/lang/String;
    .restart local v56       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v67       #firstBoot:Z
    .restart local v80       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v86       #onlyCore:Z
    :catch_31
    move-exception v3

    goto/16 :goto_5

    .line 724
    .end local v40           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v43           #battery:Lcom/android/server/BatteryService;
    .end local v54           #cryptState:Ljava/lang/String;
    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v67           #firstBoot:Z
    .end local v80           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v86           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v42       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v52       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v57       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v68       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v70       #isAgpsFtrEnabled:Z
    .restart local v73       #location:Lcom/android/server/LocationManagerService;
    .restart local v76       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v84       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v93       #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v95       #sensorHubExists:Z
    .restart local v97       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v101       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v107       #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .restart local v110       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_32
    move-exception v61

    move-object/from16 v41, v42

    .end local v42           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v41       #appWidget:Lcom/android/server/AppWidgetService;
    goto :goto_52

    .line 684
    .end local v105           #usb:Lcom/android/server/usb/UsbService;
    .restart local v106       #usb:Lcom/android/server/usb/UsbService;
    :catch_33
    move-exception v61

    move-object/from16 v105, v106

    .end local v106           #usb:Lcom/android/server/usb/UsbService;
    .restart local v105       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_51

    .line 652
    .end local v110           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v111       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_34
    move-exception v61

    move-object/from16 v110, v111

    .end local v111           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v110       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_50

    .line 611
    .end local v93           #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v94       #sensorHub:Lcom/motorola/server/SensorHubService;
    :catch_35
    move-exception v61

    move-object/from16 v93, v94

    .end local v94           #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v93       #sensorHub:Lcom/motorola/server/SensorHubService;
    goto/16 :goto_4f

    .line 598
    .end local v52           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v95           #sensorHubExists:Z
    .restart local v53       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_36
    move-exception v61

    move-object/from16 v52, v53

    .end local v53           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v52       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_4e

    .line 586
    .end local v107           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .restart local v108       #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    :catch_37
    move-exception v61

    move-object/from16 v107, v108

    .end local v108           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .restart local v107       #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    goto/16 :goto_4d

    .line 568
    .end local v70           #isAgpsFtrEnabled:Z
    .end local v73           #location:Lcom/android/server/LocationManagerService;
    .restart local v74       #location:Lcom/android/server/LocationManagerService;
    :catch_38
    move-exception v61

    move-object/from16 v73, v74

    .end local v74           #location:Lcom/android/server/LocationManagerService;
    .restart local v73       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_4c

    .line 541
    .end local v84           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v85       #notification:Lcom/android/server/NotificationManagerService;
    :catch_39
    move-exception v61

    move-object/from16 v84, v85

    .end local v85           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v84       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_4b

    .line 521
    .end local v99           #throttle:Lcom/android/server/ThrottleService;
    .restart local v100       #throttle:Lcom/android/server/ThrottleService;
    :catch_3a
    move-exception v61

    move-object/from16 v99, v100

    .end local v100           #throttle:Lcom/android/server/ThrottleService;
    .restart local v99       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_4a

    .line 502
    .end local v50           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v51       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_3b
    move-exception v61

    move-object/from16 v50, v51

    .end local v51           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v50       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_49

    .line 477
    .end local v112           #wifi:Lcom/android/server/WifiService;
    .restart local v113       #wifi:Lcom/android/server/WifiService;
    :catch_3c
    move-exception v61

    move-object/from16 v112, v113

    .end local v113           #wifi:Lcom/android/server/WifiService;
    .restart local v112       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_48

    .line 469
    .end local v114           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v115       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_3d
    move-exception v61

    move-object/from16 v114, v115

    .end local v115           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v114       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_47

    .line 461
    :catch_3e
    move-exception v61

    goto/16 :goto_46

    .line 451
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v80       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v81       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_3f
    move-exception v61

    move-object/from16 v12, v81

    .end local v81           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_45

    .line 443
    .end local v101           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v102       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_40
    move-exception v61

    move-object/from16 v101, v102

    .end local v102           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v101       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_44

    .line 419
    .end local v97           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v98       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_41
    move-exception v61

    move-object/from16 v97, v98

    .end local v98           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v97       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_43

    .line 409
    .end local v76           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v77       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    :catch_42
    move-exception v61

    move-object/from16 v76, v77

    .end local v77           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v76       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    goto/16 :goto_42

    .line 397
    .end local v57           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v58       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_43
    move-exception v61

    move-object/from16 v57, v58

    .end local v58           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v57       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_41

    .line 389
    :catch_44
    move-exception v3

    goto/16 :goto_11

    .line 366
    .end local v62           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v63       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    :catch_45
    move-exception v61

    move-object/from16 v62, v63

    .end local v63           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v62       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    goto/16 :goto_40

    .line 349
    .end local v68           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v69       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_46
    move-exception v61

    move-object/from16 v68, v69

    .end local v69           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v68       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_3f

    .line 311
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v41           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v52           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v57           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v62           #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .end local v68           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v73           #location:Lcom/android/server/LocationManagerService;
    .end local v76           #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .end local v84           #notification:Lcom/android/server/NotificationManagerService;
    .end local v93           #sensorHub:Lcom/motorola/server/SensorHubService;
    .end local v97           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v101           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v107           #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .end local v110           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v40       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v43       #battery:Lcom/android/server/BatteryService;
    .restart local v88       #power:Lcom/android/server/PowerManagerService;
    :catch_47
    move-exception v61

    move-object/from16 v7, v40

    .end local v40           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v43

    .end local v43           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v88

    .end local v88           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_3e

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v43       #battery:Lcom/android/server/BatteryService;
    :catch_48
    move-exception v61

    move-object/from16 v7, v40

    .end local v40           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v43

    .end local v43           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    goto/16 :goto_3e

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v40       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v43       #battery:Lcom/android/server/BatteryService;
    .restart local v54       #cryptState:Ljava/lang/String;
    .restart local v56       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v67       #firstBoot:Z
    .restart local v72       #lights:Lcom/android/server/LightsService;
    .restart local v86       #onlyCore:Z
    :catch_49
    move-exception v61

    move-object/from16 v55, v56

    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v7, v40

    .end local v40           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v43

    .end local v43           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v71, v72

    .end local v72           #lights:Lcom/android/server/LightsService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3e

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v40       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v56       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v72       #lights:Lcom/android/server/LightsService;
    :catch_4a
    move-exception v61

    move-object/from16 v55, v56

    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v7, v40

    .end local v40           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v71, v72

    .end local v72           #lights:Lcom/android/server/LightsService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3e

    .end local v44           #bluetooth:Landroid/server/BluetoothService;
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v45       #bluetooth:Landroid/server/BluetoothService;
    .restart local v56       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v72       #lights:Lcom/android/server/LightsService;
    :catch_4b
    move-exception v61

    move-object/from16 v55, v56

    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v44, v45

    .end local v45           #bluetooth:Landroid/server/BluetoothService;
    .restart local v44       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v71, v72

    .end local v72           #lights:Lcom/android/server/LightsService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3e

    .end local v44           #bluetooth:Landroid/server/BluetoothService;
    .end local v46           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v55           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v45       #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v56       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v72       #lights:Lcom/android/server/LightsService;
    :catch_4c
    move-exception v61

    move-object/from16 v55, v56

    .end local v56           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v55       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v46, v47

    .end local v47           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v46       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v44, v45

    .end local v45           #bluetooth:Landroid/server/BluetoothService;
    .restart local v44       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v71, v72

    .end local v72           #lights:Lcom/android/server/LightsService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3e

    .end local v54           #cryptState:Ljava/lang/String;
    .end local v67           #firstBoot:Z
    .end local v86           #onlyCore:Z
    .restart local v41       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v52       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v57       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #encryption:Lcom/motorola/server/encryption/EncryptionService;
    .restart local v68       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v73       #location:Lcom/android/server/LocationManagerService;
    .restart local v76       #motDevicePolicy:Lcom/motorola/motepm/MotDevicePolicyManagerService;
    .restart local v84       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v93       #sensorHub:Lcom/motorola/server/SensorHubService;
    .restart local v97       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v101       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v107       #vzwLocation:Lcom/vzw/location/VzwLocationManagerService;
    .restart local v110       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1a
    move-object/from16 v8, v80

    .end local v80           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_38
.end method
