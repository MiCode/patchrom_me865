.class public Lcom/motorola/Camera/MotoCast;
.super Ljava/lang/Object;
.source "MotoCast.java"


# static fields
.field private static final ACTION_AUTO_UPLOAD:Ljava/lang/String; = "Zumo_Setting_Action_Auto"

.field private static final MOTOCONNECT_PACKAGE:Ljava/lang/String; = "com.motorola.motoconnect"

.field private static final MOTOCONNECT_PREF_ACTIVITY:Ljava/lang/String; = "com.motorola.motoconnect.activities.MCPreferencesActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isVersion1Available(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 63
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 64
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.motorola.motoconnect"

    const-string v3, "com.motorola.motoconnect.activities.MCPreferencesActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 66
    .local v0, available:Z
    :goto_0
    return v0

    .line 65
    .end local v0           #available:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVersion2Available(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 70
    new-instance v1, Landroid/content/Intent;

    const-string v2, "Zumo_Setting_Action_Auto"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 72
    .local v0, available:Z
    :goto_0
    return v0

    .line 71
    .end local v0           #available:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isPackageAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 41
    const-string v1, "ro.hss6upgrade.hide.motocastid"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, productDisabled:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCast;->isVersion2Available(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCast;->isVersion1Available(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public launchAutoUpload(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCast;->isVersion2Available(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Zumo_Setting_Action_Auto"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-direct {p0, p1}, Lcom/motorola/Camera/MotoCast;->isVersion1Available(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.motorola.motoconnect"

    const-string v2, "com.motorola.motoconnect.activities.MCPreferencesActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    goto :goto_0

    .line 50
    :catch_1
    move-exception v1

    goto :goto_0
.end method
