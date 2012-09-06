.class public Lcom/motorola/android/internal/telephony/AppDirectedSms;
.super Ljava/lang/Object;
.source "AppDirectedSms.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppDirectedSms"

.field private static mDirectedSmsSignatures:[Landroid/content/pm/Signature;


# instance fields
.field private mActionDirectedSmsReceived:Ljava/lang/String;

.field private mAdsPermissionPackage:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsDefault:Z

.field private mKeyAppPrefix:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSmsParameters:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mDirectedSmsSignatures:[Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isDefault"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mActionDirectedSmsReceived:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mAdsPermissionPackage:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mKeyAppPrefix:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    .line 58
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 59
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsParameters:Ljava/lang/String;

    .line 65
    if-eqz p1, :cond_0

    .line 66
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10404fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mActionDirectedSmsReceived:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10404ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mAdsPermissionPackage:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040500

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mKeyAppPrefix:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 74
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mAdsPermissionPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->getPackageSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mDirectedSmsSignatures:[Landroid/content/pm/Signature;

    .line 76
    :cond_0
    iput-boolean p2, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mIsDefault:Z

    .line 77
    return-void
.end method

.method private checkSignature(Ljava/lang/String;)Z
    .locals 6
    .parameter "pkName"

    .prologue
    const/4 v3, 0x0

    .line 178
    sget-object v4, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mDirectedSmsSignatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mAdsPermissionPackage:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v3

    .line 182
    :cond_1
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->getPackageSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 183
    .local v2, sig:[Landroid/content/pm/Signature;
    if-eqz v2, :cond_0

    .line 187
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v4, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mDirectedSmsSignatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 188
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 189
    aget-object v4, v2, v1

    sget-object v5, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mDirectedSmsSignatures:[Landroid/content/pm/Signature;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 190
    const/4 v3, 0x1

    goto :goto_0

    .line 188
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 187
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getPackageSignatures(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 5
    .parameter "pkName"

    .prologue
    .line 204
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 205
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AppDirectedSms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get the permission package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSmsBody([[B)Ljava/lang/String;
    .locals 7
    .parameter "pdus"

    .prologue
    .line 150
    array-length v3, p1

    .line 151
    .local v3, pduCount:I
    new-array v2, v3, [Landroid/telephony/SmsMessage;

    .line 152
    .local v2, msgs:[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 153
    aget-object v5, p1, v1

    iget-boolean v6, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mIsDefault:Z

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromPdu([BZ)Landroid/telephony/SmsMessage;

    move-result-object v5

    aput-object v5, v2, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, body:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 159
    .local v4, sms:Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 160
    aget-object v4, v2, v1

    .line 161
    if-nez v4, :cond_1

    .line 159
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 165
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 168
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    .line 247
    const/4 v2, 0x0

    .line 249
    .local v2, preLoadedSystemApp:Z
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 250
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 251
    const/4 v2, 0x1

    .line 256
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    const-string v3, "AppDirectedSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Is Preloaded App? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return v2

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "AppDirectedSms"

    const-string v4, "Package Name Not Found:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isTargetApplication(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "packageName"
    .parameter "appPrefix"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 218
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v3, v4

    .line 239
    :cond_1
    :goto_0
    return v3

    .line 222
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 224
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_3

    .line 225
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 229
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 230
    .local v2, metaData:Landroid/os/Bundle;
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mKeyAppPrefix:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #metaData:Landroid/os/Bundle;
    :cond_3
    :goto_1
    move v3, v4

    .line 239
    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "AppDirectedSms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application NOT FOUND: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public dispatchAppDirectedSms(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mActionDirectedSmsReceived:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "parameters"

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsParameters:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public getAppPrefix([[B)Ljava/lang/String;
    .locals 10
    .parameter "pdus"

    .prologue
    const/16 v9, 0x3a

    const/4 v8, -0x1

    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, appPrefix:Ljava/lang/String;
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110056

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 111
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->getSmsBody([[B)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, smsBody:Ljava/lang/String;
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040501

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, adsPrefix:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    const/16 v6, 0x3b

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 122
    .local v5, split:I
    if-ne v5, v8, :cond_2

    .line 123
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 129
    :cond_0
    :goto_0
    if-eq v5, v8, :cond_1

    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 131
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mSmsParameters:Ljava/lang/String;

    .line 135
    .end local v0           #adsPrefix:Ljava/lang/String;
    .end local v4           #smsBody:Ljava/lang/String;
    .end local v5           #split:I
    :cond_1
    return-object v1

    .line 125
    .restart local v0       #adsPrefix:Ljava/lang/String;
    .restart local v4       #smsBody:Ljava/lang/String;
    .restart local v5       #split:I
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 127
    .local v2, i:I
    if-eq v2, v8, :cond_0

    move v5, v2

    goto :goto_0
.end method

.method public getValidatedPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "prefix"

    .prologue
    const/4 v0, 0x0

    .line 86
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/AppDirectedSms;->mActionDirectedSmsReceived:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 88
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_1

    .line 89
    .local v0, count:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 90
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 91
    .local v3, packageName:Ljava/lang/String;
    invoke-direct {p0, v3, p1}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->isTargetApplication(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->isSystemApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/AppDirectedSms;->checkSignature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    :goto_2
    return-object v3

    .line 88
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 89
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    .end local v3           #packageName:Ljava/lang/String;
    :cond_3
    const-string v4, "AppDirectedSms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NOT Found valid Application: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v3, 0x0

    goto :goto_2
.end method
