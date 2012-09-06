.class public Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MotoKeyguardUpdateMonitor"
.end annotation


# static fields
.field public static final GOOGLE_USER_CREDS_TYPE:Ljava/lang/String; = "com.google"


# instance fields
.field private account:[Landroid/accounts/Account;

.field private accountMgr:Landroid/accounts/AccountManager;

.field private mAddedListener:Z

.field private mDeviceRequestPasswordSetup:Z

.field private mGoogleAcctUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

.field private mHasGoogleAccount:Z

.field private mLawmoContentObserver:Landroid/database/ContentObserver;

.field private mLawmoLock:Z

.field private mMDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

.field private mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

.field private mMotoUMHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 843
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 834
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mDeviceRequestPasswordSetup:Z

    .line 838
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    .line 842
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mAddedListener:Z

    .line 906
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mLawmoLock:Z

    .line 844
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor$1;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoUMHandler:Landroid/os/Handler;

    .line 845
    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->accountMgr:Landroid/accounts/AccountManager;

    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->accountMgr:Landroid/accounts/AccountManager;

    const-string v3, "com.google"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->account:[Landroid/accounts/Account;

    .line 847
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->account:[Landroid/accounts/Account;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mHasGoogleAccount:Z

    .line 851
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mHasGoogleAccount:Z

    if-nez v0, :cond_0

    .line 853
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor$2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor$2;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mGoogleAcctUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 862
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->accountMgr:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mGoogleAcctUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoUMHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 863
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mAddedListener:Z

    .line 867
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->readLockFlag()V

    .line 869
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor$3;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoUMHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor$3;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;Landroid/os/Handler;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mLawmoContentObserver:Landroid/database/ContentObserver;

    .line 877
    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lawmo_lock_state"

    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mLawmoContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 881
    return-void

    :cond_1
    move v0, v2

    .line 847
    goto :goto_0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;)[Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->account:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;[Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 825
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->account:[Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;)Landroid/accounts/AccountManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->accountMgr:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 825
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mHasGoogleAccount:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->readLockFlag()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mLawmoLock:Z

    return v0
.end method

.method private readLockFlag()V
    .locals 4

    .prologue
    .line 925
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lawmo_lock_state"

    const/16 v3, 0x1e

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 929
    .local v0, state:I
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get LAWMO state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 931
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mLawmoLock:Z

    .line 936
    :goto_0
    return-void

    .line 934
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mLawmoLock:Z

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mAddedListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mGoogleAcctUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mGoogleAcctUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 952
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mAddedListener:Z

    .line 953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mGoogleAcctUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 955
    :cond_0
    return-void
.end method

.method public getLawmoLockFlag()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 909
    const-string v2, "rw.mot.lawmo"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 910
    .local v0, state:I
    if-nez v0, :cond_0

    .line 911
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "Lawmo lock is false: state=0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v1, 0x0

    .line 921
    :goto_0
    return v1

    .line 915
    :cond_0
    if-ne v0, v1, :cond_1

    .line 916
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "Lawmo lock is true: state=1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 920
    :cond_1
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lawmo lock is mLawmoLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mLawmoLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mLawmoLock:Z

    goto :goto_0
.end method

.method public hasGoogleAccount()Z
    .locals 1

    .prologue
    .line 886
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mHasGoogleAccount:Z

    return v0
.end method

.method public isActivePolicyPasswordNeedChange()Z
    .locals 3

    .prologue
    .line 894
    const/4 v0, 0x0

    .line 895
    .local v0, isNeedChange:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    if-nez v1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "mot_device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    .line 898
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    if-eqz v1, :cond_2

    .line 899
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    invoke-virtual {v1}, Lcom/motorola/motepm/MotDevicePolicyManager;->isPasswordSetEnforced()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mDeviceRequestPasswordSetup:Z

    if-eqz v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 901
    :cond_2
    :goto_0
    return v0

    .line 899
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceRequestPasswordSetup()Z
    .locals 1

    .prologue
    .line 941
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mDeviceRequestPasswordSetup:Z

    return v0
.end method

.method reportEncryptionLocked()V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    if-nez v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "mot_encryption_admin"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    if-nez v0, :cond_1

    .line 968
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "unable to get ENCRYPT_ADMIN_SERVICE!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :goto_0
    return-void

    .line 970
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->onScreenLocked(Z)V

    goto :goto_0
.end method

.method reportEncryptionUnlocked(ZLjava/lang/String;)V
    .locals 2
    .parameter "recovery"
    .parameter "password"

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    if-nez v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "mot_encryption_admin"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    if-nez v0, :cond_1

    .line 982
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "unable to get ENCRYPT_ADMIN_SERVICE!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :goto_0
    return-void

    .line 984
    :cond_1
    if-nez p1, :cond_2

    .line 985
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    invoke-virtual {v0, p2}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->onPasswordVerified(Ljava/lang/String;)V

    goto :goto_0

    .line 987
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mMotoEncryptionManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    invoke-virtual {v0, p2}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->onRecoveryPasswordVerified(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDeviceRequestPasswordSetup(Z)V
    .locals 0
    .parameter "need"

    .prologue
    .line 945
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->mDeviceRequestPasswordSetup:Z

    .line 946
    return-void
.end method
