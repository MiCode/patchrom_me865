.class public Lcom/eclipse/android/razr/bootstrap/ROMBootstrapSettings;
.super Ljava/lang/Object;
.source "ROMBootstrapSettings.java"


# static fields
.field private static final INSTALL_HIJACK_KEY:Ljava/lang/String; = "install_hijack"

.field private static final INSTALL_RECOVERY_KEY:Ljava/lang/String; = "install_recovery"

.field private static final RESTART_ADB_KEY:Ljava/lang/String; = "restart_adb"

.field private static final SETTINGS_FILE:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "DBB/ROMBootstrapSettings"


# instance fields
.field private mInstallHijack:Z

.field private mInstallRecovery:Z

.field private mRestartAdb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/BionicBootstrap.cfg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/eclipse/android/razr/bootstrap/ROMBootstrapSettings;->SETTINGS_FILE:Ljava/io/File;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v7, p0, Lcom/eclipse/android/razr/bootstrap/ROMBootstrapSettings;->mRestartAdb:Z

    .line 19
    iput-boolean v7, p0, Lcom/eclipse/android/razr/bootstrap/ROMBootstrapSettings;->mInstallHijack:Z

    .line 20
    iput-boolean v7, p0, Lcom/eclipse/android/razr/bootstrap/ROMBootstrapSettings;->mInstallRecovery:Z

    .line 23
    sget-object v7, Lcom/eclipse/android/razr/bootstrap/ROMBootstrapSettings;->SETTINGS_FILE:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 24
    const-string v7, "DBB/ROMBootstrapSettings"

    const-string v8, "Found settings file, parsing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v4, 0x0

    .line 27
    .local v4, f:Ljava/io/FileInputStream;
    const-string v1, ""

    .line 31
    .local v1, data:Ljava/lang/String;
    :try_start_0
    sget-object v7, Lcom/eclipse/android/razr/bootstrap/ROMBootstrapSettings;->SETTINGS_FILE:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v0, v7, [B

    .line 32
    .local v0, buffer:[B
    new-instance v5, Ljava/io/FileInputStream;

    sget-object v7, Lcom/eclipse/android/razr/bootstrap/ROMBootstrapSettings;->SETTINGS_FILE:Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v4           #f:Ljava/io/FileInputStream;
    .local v5, f:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 34
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 39
    .end local v1           #data:Ljava/lang/String;
    .local v2, data:Ljava/lang/String;
    if-eqz v5, :cond_8

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .end local v2           #data:Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/String;
    move-object v4, v5

    .line 44
    .end local v0           #buffer:[B
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v4       #f:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    :try_start_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    .local v6, json:Lorg/json/JSONObject;
    const-string v7, "restart_adb"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 47
    const-string v7, "restart_adb"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/eclipse/android/razr/bootstrap/ROMBootstrapSettings;->mRestartAdb:Z

    .line 48
    const-string v7, "DBB/ROMBootstrapSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Setting [RestartAdb] to ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/eclipse/android/razr/bootstrap/ROMBootstrapSettings;->mRestartAdb:Z

    if-eqz v9, :cond_5

    const-string v9, "true"

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_1
    const-string v7, "install_hijack"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 51
    const-string v7, "install_hijack"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/eclipse/android/razr/bootstrap/ROMBootstrapSettings;->mInstallHijack:Z

    .line 52
    const-string v7, "DBB/ROMBootstrapSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Setting [InstallHijack] to ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/eclipse/android/razr/bootstrap/ROMBootstrapSettings;->mInstallHijack:Z

    if-eqz v9, :cond_6

    const-string v9, "true"

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_2
    const-string v7, "install_recovery"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 55
    const-string v7, "install_recovery"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/eclipse/android/razr/bootstrap/ROMBootstrapSettings;->mInstallRecovery:Z

    .line 56
    const-string v7, "DBB/ROMBootstrapSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Setting [InstallRecovery] to ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/eclipse/android/razr/bootstrap/ROMBootstrapSettings;->mInstallRecovery:Z

    if-eqz v9, :cond_7

    const-string v9, "true"

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 62
    .end local v1           #data:Ljava/lang/String;
    .end local v4           #f:Ljava/io/FileInputStream;
    .end local v6           #json:Lorg/json/JSONObject;
    :cond_3
    :goto_4
    return-void

    .line 35
    .restart local v1       #data:Ljava/lang/String;
    .restart local v4       #f:Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 36
    .local v3, e:Ljava/lang/Exception;
    :goto_5
    :try_start_4
    const-string v7, "DBB/ROMBootstrapSettings"

    const-string v8, "Error reading settings file"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 39
    if-eqz v4, :cond_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v7

    goto/16 :goto_0

    .line 37
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 39
    :goto_6
    if-eqz v4, :cond_4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 40
    :cond_4
    :goto_7
    throw v7

    .line 39
    .end local v1           #data:Ljava/lang/String;
    .end local v4           #f:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #data:Ljava/lang/String;
    .restart local v5       #f:Ljava/io/FileInputStream;
    :catch_2
    move-exception v7

    move-object v1, v2

    .end local v2           #data:Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/String;
    move-object v4, v5

    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v4       #f:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 48
    .end local v0           #buffer:[B
    .restart local v6       #json:Lorg/json/JSONObject;
    :cond_5
    :try_start_7
    const-string v9, "false"

    goto/16 :goto_1

    .line 52
    :cond_6
    const-string v9, "false"

    goto :goto_2

    .line 56
    :cond_7
    const-string v9, "false"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 58
    .end local v6           #json:Lorg/json/JSONObject;
    :catch_3
    move-exception v7

    move-object v3, v7

    .line 59
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "DBB/ROMBootstrapSettings"

    const-string v8, "Error parsing settings file"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 39
    .end local v3           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v8

    goto :goto_7

    .line 37
    .end local v4           #f:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v5       #f:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v4       #f:Ljava/io/FileInputStream;
    goto :goto_6

    .line 35
    .end local v4           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    :catch_5
    move-exception v7

    move-object v3, v7

    move-object v4, v5

    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v4       #f:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v1           #data:Ljava/lang/String;
    .end local v4           #f:Ljava/io/FileInputStream;
    .restart local v2       #data:Ljava/lang/String;
    .restart local v5       #f:Ljava/io/FileInputStream;
    :cond_8
    move-object v1, v2

    .end local v2           #data:Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/String;
    move-object v4, v5

    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v4       #f:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method


# virtual methods
.method public installHijack()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/eclipse/android/razr/bootstrap/ROMBootstrapSettings;->mInstallHijack:Z

    return v0
.end method

.method public installRecovery()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/eclipse/android/razr/bootstrap/ROMBootstrapSettings;->mInstallRecovery:Z

    return v0
.end method

.method public restartAdb()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/eclipse/android/razr/bootstrap/ROMBootstrapSettings;->mRestartAdb:Z

    return v0
.end method
