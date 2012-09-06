.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$PasswordFileObserver;
    }
.end annotation


# static fields
.field private static final ALLOWED_CHARS:Ljava/lang/String; = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%&*-=+/?"

#the value of this static final field might be set in the static constructor
.field private static final ALLOWED_CHARS_STRING_LENGTH:I = 0x0

.field private static final ALLOWED_DIGITS_STRING_LENGTH:I = 0xa

.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"

.field private static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field private static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final LOCK_PASSWORD:I = 0x2

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field public static final LOCK_PATTERN:I = 0x1

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_RECOVERY_PASSWORD_FILE:Ljava/lang/String; = "/system/recoverypassword.key"

.field public static final MAX_FAILED_ATTEMPTS_BEFORE_RESET:I = 0x28

.field private static final MAX_RECOVERY_PASSWORD_NUMBER:I = 0x5

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field public static final NO_LOCK:I = 0x0

.field private static final OPTION_ENABLE_FACELOCK:Ljava/lang/String; = "enable_facelock"

.field private static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field private static final RANDOM_PASSWORD_LENGTH:I = 0xa

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static final sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sLockPasswordFilename:Ljava/lang/String;

.field private static sLockPatternFilename:Ljava/lang/String;

.field private static sLockRecoveryPasswordFilename:Ljava/lang/String;

.field private static sPasswordObserver:Landroid/os/FileObserver;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEncryptionAdminManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

.field private mMotDevicePolicyManager:Lcom/motorola/motepm/MotDevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 160
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1236
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%&*-=+/?"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/internal/widget/LockPatternUtils;->ALLOWED_CHARS_STRING_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mEncryptionAdminManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    .line 217
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 221
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/system/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, dataSystemDirectory:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "gesture.key"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "password.key"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/system/recoverypassword.key"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    .line 230
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v2, v6, v8

    if-lez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 231
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v5, v5, v8

    if-lez v5, :cond_2

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 232
    const/16 v1, 0x388

    .line 234
    .local v1, fileObserverMask:I
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$PasswordFileObserver;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils$PasswordFileObserver;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    .line 235
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 237
    .end local v0           #dataSystemDirectory:Ljava/lang/String;
    .end local v1           #fileObserverMask:I
    :cond_0
    return-void

    .restart local v0       #dataSystemDirectory:Ljava/lang/String;
    :cond_1
    move v2, v4

    .line 230
    goto :goto_0

    :cond_2
    move v3, v4

    .line 231
    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3
    .parameter "sb"
    .parameter "b"

    .prologue
    .line 1531
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1532
    return-void
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .locals 5
    .parameter "password"

    .prologue
    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, hasDigit:Z
    const/4 v1, 0x0

    .line 599
    .local v1, hasNonDigit:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 600
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 601
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 602
    const/4 v0, 0x1

    .line 600
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 604
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 608
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 609
    const/high16 v4, 0x5

    .line 617
    :goto_2
    return v4

    .line 611
    :cond_2
    if-eqz v1, :cond_3

    .line 612
    const/high16 v4, 0x4

    goto :goto_2

    .line 614
    :cond_3
    if-eqz v0, :cond_4

    .line 615
    const/high16 v4, 0x2

    goto :goto_2

    .line 617
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private finishBiometricWeak()V
    .locals 3

    .prologue
    .line 1211
    const-string v1, "lockscreen.biometricweakeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1216
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.SetupEndScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1218
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1219
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "secureSettingKey"
    .parameter "defaultValue"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1116
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private getEncryptionAdminManager()Lcom/motorola/android/internal/encryption/EncryptionAdminManager;
    .locals 2

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mEncryptionAdminManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    if-nez v0, :cond_0

    .line 1570
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "mot_encryption_admin"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mEncryptionAdminManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    .line 1573
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mEncryptionAdminManager:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    return-object v0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "secureSettingKey"
    .parameter "def"

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getPasswordHashString()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 1535
    const/4 v6, 0x0

    .line 1538
    .local v6, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    sget-object v10, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string v11, "r"

    invoke-direct {v7, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1539
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .local v7, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v10, v10

    new-array v8, v10, [B

    .line 1540
    .local v8, stored:[B
    const/4 v10, 0x0

    array-length v11, v8

    invoke-virtual {v7, v8, v10, v11}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v3

    .line 1541
    .local v3, got:I
    if-gtz v3, :cond_2

    .line 1556
    if-eqz v7, :cond_0

    .line 1558
    :try_start_2
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v6, v7

    .line 1561
    .end local v3           #got:I
    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .end local v8           #stored:[B
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return-object v9

    .line 1559
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #got:I
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    .restart local v8       #stored:[B
    :catch_0
    move-exception v1

    .line 1560
    .local v1, e:Ljava/io/IOException;
    const-string v10, "LockPatternUtils"

    const-string v11, "IO Exception 2"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1544
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v10, v8

    mul-int/lit8 v10, v10, 0x2

    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1545
    .local v0, convertedStringBuffer:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v10, v8

    if-ge v4, v10, :cond_3

    .line 1546
    aget-byte v10, v8, v4

    invoke-static {v0, v10}, Lcom/android/internal/widget/LockPatternUtils;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 1545
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1548
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v9

    .line 1556
    if-eqz v7, :cond_4

    .line 1558
    :try_start_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_3
    move-object v6, v7

    .line 1561
    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 1559
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v1

    .line 1560
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "LockPatternUtils"

    const-string v11, "IO Exception 2"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1549
    .end local v0           #convertedStringBuffer:Ljava/lang/StringBuffer;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #got:I
    .end local v4           #i:I
    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .end local v8           #stored:[B
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    .line 1550
    .local v2, fnfe:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    const-string v10, "LockPatternUtils"

    const-string v11, "file not found"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1556
    if-eqz v6, :cond_1

    .line 1558
    :try_start_6
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 1559
    :catch_3
    move-exception v1

    .line 1560
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "LockPatternUtils"

    const-string v11, "IO Exception 2"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1552
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fnfe:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v5

    .line 1553
    .local v5, ioe:Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v10, "LockPatternUtils"

    const-string v11, "IO Exception 1"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1556
    if-eqz v6, :cond_1

    .line 1558
    :try_start_8
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 1559
    :catch_5
    move-exception v1

    .line 1560
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "LockPatternUtils"

    const-string v11, "IO Exception 2"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1556
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v6, :cond_5

    .line 1558
    :try_start_9
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 1561
    :cond_5
    :goto_7
    throw v9

    .line 1559
    :catch_6
    move-exception v1

    .line 1560
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "LockPatternUtils"

    const-string v11, "IO Exception 2"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1556
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 1552
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v5

    move-object v6, v7

    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 1549
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #raf:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v2

    move-object v6, v7

    .end local v7           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4
.end method

.method private getSalt()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 879
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 880
    .local v1, salt:J
    cmp-long v3, v1, v4

    if-nez v3, :cond_0

    .line 882
    :try_start_0
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 883
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 884
    const-string v3, "LockPatternUtils"

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 885
    :catch_0
    move-exception v0

    .line 887
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "secureSettingKey"

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static patternToHash(Ljava/util/List;)[B
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 859
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 860
    const/4 v1, 0x0

    .line 874
    :goto_0
    return-object v1

    .line 863
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 864
    .local v5, patternSize:I
    new-array v6, v5, [B

    .line 865
    .local v6, res:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 866
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 867
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 865
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 870
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 871
    .local v3, md:Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 872
    .local v1, hash:[B
    goto :goto_0

    .line 873
    .end local v1           #hash:[B
    .end local v3           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .local v4, nsa:Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 874
    goto :goto_0
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 838
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 839
    const-string v4, ""

    .line 848
    :goto_0
    return-object v4

    .line 841
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 843
    .local v2, patternSize:I
    new-array v3, v2, [B

    .line 844
    .local v3, res:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 845
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 846
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 844
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 848
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 2
    .parameter "secureSettingKey"
    .parameter "enabled"

    .prologue
    .line 1122
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1124
    return-void

    .line 1122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setLong(Ljava/lang/String;J)V
    .locals 1
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1132
    return-void
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1140
    return-void
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 824
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 825
    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 826
    aget-byte v0, v1, v2

    .line 827
    .local v0, b:B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 829
    .end local v0           #b:B
    :cond_0
    return-object v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .parameter "ary"

    .prologue
    .line 918
    const-string v0, "0123456789ABCDEF"

    .line 919
    .local v0, hex:Ljava/lang/String;
    const-string v2, ""

    .line 920
    .local v2, ret:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 921
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 922
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 920
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 924
    :cond_0
    return-object v2
.end method

.method private updateEncryptionPassword(Ljava/lang/String;)V
    .locals 6
    .parameter "password"

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 623
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 639
    :goto_0
    return-void

    .line 627
    :cond_0
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 628
    .local v3, service:Landroid/os/IBinder;
    if-nez v3, :cond_1

    .line 629
    const-string v4, "LockPatternUtils"

    const-string v5, "Could not find the mount service to update the encryption password"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 633
    :cond_1
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 635
    .local v2, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->changeEncryptionPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 636
    :catch_0
    move-exception v1

    .line 637
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Error changing encryption password"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;)Z
    .locals 8
    .parameter "password"

    .prologue
    const/4 v5, 0x1

    .line 326
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string v7, "r"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v4, v6, [B

    .line 328
    .local v4, stored:[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 329
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 330
    if-gtz v1, :cond_0

    .line 338
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_0
    return v5

    .line 334
    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_0

    .line 335
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_0
    move-exception v0

    .line 336
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 337
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 338
    .local v2, ioe:Ljava/io/IOException;
    goto :goto_0
.end method

.method public checkPasswordHistory(Ljava/lang/String;)Z
    .locals 7
    .parameter "password"

    .prologue
    const/4 v5, 0x0

    .line 350
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 351
    .local v2, passwordHashString:Ljava/lang/String;
    const-string v6, "lockscreen.passwordhistory"

    invoke-direct {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, passwordHistory:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v5

    .line 356
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 357
    .local v1, passwordHashLength:I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v4

    .line 358
    .local v4, passwordHistoryLength:I
    if-eqz v4, :cond_0

    .line 361
    mul-int v6, v1, v4

    add-int/2addr v6, v4

    add-int/lit8 v0, v6, -0x1

    .line 363
    .local v0, neededPasswordHistoryLength:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_2

    .line 364
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 366
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_0
.end method

.method public checkPattern(Ljava/util/List;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v5, 0x1

    .line 301
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string v7, "r"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v4, v6, [B

    .line 303
    .local v4, stored:[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 304
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 305
    if-gtz v1, :cond_0

    .line 313
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_0
    return v5

    .line 309
    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_0

    .line 310
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_0
    move-exception v0

    .line 311
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 312
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 313
    .local v2, ioe:Ljava/io/IOException;
    goto :goto_0
.end method

.method public checkRecoveryPassword(Ljava/lang/String;)Z
    .locals 14
    .parameter "password"

    .prologue
    const/4 v11, 0x0

    .line 1365
    const/4 v8, 0x0

    .line 1367
    .local v8, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v9, Ljava/io/RandomAccessFile;

    sget-object v12, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    const-string v13, "rw"

    invoke-direct {v9, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1368
    .end local v8           #raf:Ljava/io/RandomAccessFile;
    .local v9, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 1369
    .local v0, fileLen:J
    const-wide/16 v12, 0x4

    cmp-long v12, v0, v12

    if-gtz v12, :cond_0

    .line 1370
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    move-object v8, v9

    .line 1405
    .end local v0           #fileLen:J
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v8       #raf:Ljava/io/RandomAccessFile;
    :goto_0
    return v11

    .line 1373
    .end local v8           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #fileLen:J
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    .line 1374
    .local v7, num:I
    if-ltz v7, :cond_1

    const/4 v12, 0x5

    if-le v7, v12, :cond_2

    .line 1375
    :cond_1
    const-string v12, "LockPatternUtils"

    const-string v13, "File has been corrupted"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const-wide/16 v12, 0x0

    invoke-virtual {v9, v12, v13}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 1377
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    move-object v8, v9

    .line 1378
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v8       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 1380
    .end local v8           #raf:Ljava/io/RandomAccessFile;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v3

    .line 1381
    .local v3, hash:[B
    const/4 v6, 0x0

    .line 1383
    .local v6, len:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v7, :cond_4

    .line 1384
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    .line 1385
    invoke-virtual {v9, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 1386
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    .line 1387
    new-array v10, v6, [B

    .line 1388
    .local v10, recoveryPassword:[B
    invoke-virtual {v9, v10}, Ljava/io/RandomAccessFile;->read([B)I

    .line 1389
    invoke-static {v10, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1390
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 1391
    const/4 v11, 0x1

    move-object v8, v9

    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v8       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 1383
    .end local v8           #raf:Ljava/io/RandomAccessFile;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1394
    .end local v10           #recoveryPassword:[B
    :cond_4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v8, v9

    .line 1395
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v8       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 1396
    .end local v0           #fileLen:J
    .end local v3           #hash:[B
    .end local v4           #i:I
    .end local v6           #len:I
    .end local v7           #num:I
    :catch_0
    move-exception v2

    .line 1397
    .local v2, fnfe:Ljava/io/FileNotFoundException;
    :goto_2
    const-string v12, "LockPatternUtils"

    const-string v13, "FileNotFoundException in checkRecoveryPassword"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1399
    .end local v2           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    .line 1400
    .local v5, ioe:Ljava/io/IOException;
    :goto_3
    const-string v12, "LockPatternUtils"

    const-string v13, "FileNotFoundException in checkRecoveryPassword"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :try_start_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1403
    :catch_2
    move-exception v12

    goto :goto_0

    .line 1399
    .end local v5           #ioe:Ljava/io/IOException;
    .end local v8           #raf:Ljava/io/RandomAccessFile;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v5

    move-object v8, v9

    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v8       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 1396
    .end local v8           #raf:Ljava/io/RandomAccessFile;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v2

    move-object v8, v9

    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v8       #raf:Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public clearLock(Z)V
    .locals 10
    .parameter "isFallback"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 455
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 456
    :cond_0
    const/high16 v2, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 457
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 458
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 459
    const-string v2, "lockscreen.password_type"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 460
    const-string v2, "lockscreen.password_type_alternate"

    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 462
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getMotDevicePolicyManager()Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v9

    .line 463
    .local v9, motdpm:Lcom/motorola/motepm/MotDevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 464
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/motorola/motepm/MotDevicePolicyManager;->setActivePasswordSimpleState(Z)V

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    .line 465
    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    .line 468
    invoke-virtual {v9, v1}, Lcom/motorola/motepm/MotDevicePolicyManager;->setActivePasswordComplexity(I)V

    .line 471
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "lock_type"

    invoke-static {v2, v3, v1}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 476
    return-void
.end method

.method public clearLockoutAttemptDeadline()V
    .locals 3

    .prologue
    .line 1062
    const-string v0, "lockscreen.lockoutattemptdeadline"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1063
    return-void
.end method

.method public computePasswordComplexity(Ljava/lang/String;)I
    .locals 11
    .parameter "password"

    .prologue
    .line 1445
    const/4 v1, 0x0

    .line 1446
    .local v1, complexity:I
    const/4 v3, 0x0

    .line 1447
    .local v3, hasDigit:Z
    const/4 v5, 0x0

    .line 1448
    .local v5, hasSymbol:Z
    const/4 v6, 0x0

    .line 1449
    .local v6, hasUpperAlpha:Z
    const/4 v4, 0x0

    .line 1451
    .local v4, hasLowerAlpha:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move v2, v1

    .line 1477
    .end local v1           #complexity:I
    .local v2, complexity:I
    :goto_0
    return v2

    .line 1455
    .end local v2           #complexity:I
    .restart local v1       #complexity:I
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 1456
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1458
    .local v0, c:C
    const/16 v8, 0x20

    if-le v0, v8, :cond_2

    const/16 v8, 0x7f

    if-le v0, v8, :cond_3

    .line 1459
    :cond_2
    const-string v8, "LockPatternUtils"

    const-string v9, "###Password contains illegal characters####"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_3
    const/16 v8, 0x30

    if-lt v0, v8, :cond_4

    const/16 v8, 0x39

    if-gt v0, v8, :cond_4

    .line 1462
    const/4 v3, 0x1

    .line 1455
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1463
    :cond_4
    const/16 v8, 0x41

    if-lt v0, v8, :cond_5

    const/16 v8, 0x5a

    if-gt v0, v8, :cond_5

    .line 1464
    const/4 v6, 0x1

    goto :goto_2

    .line 1465
    :cond_5
    const/16 v8, 0x61

    if-lt v0, v8, :cond_6

    const/16 v8, 0x7a

    if-gt v0, v8, :cond_6

    .line 1466
    const/4 v4, 0x1

    goto :goto_2

    .line 1468
    :cond_6
    const/4 v5, 0x1

    goto :goto_2

    .line 1471
    .end local v0           #c:C
    :cond_7
    if-eqz v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    .line 1472
    :cond_8
    if-eqz v6, :cond_9

    add-int/lit8 v1, v1, 0x1

    .line 1473
    :cond_9
    if-eqz v4, :cond_a

    add-int/lit8 v1, v1, 0x1

    .line 1474
    :cond_a
    if-eqz v5, :cond_b

    add-int/lit8 v1, v1, 0x1

    .line 1476
    :cond_b
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#### The password complexity is ####"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1477
    .end local v1           #complexity:I
    .restart local v2       #complexity:I
    goto :goto_0
.end method

.method public computePasswordSimple(Ljava/lang/String;)Z
    .locals 9
    .parameter "password"

    .prologue
    const/4 v4, 0x0

    .line 1412
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 1413
    :cond_0
    const/4 v4, 0x1

    .line 1439
    :cond_1
    :goto_0
    return v4

    .line 1416
    :cond_2
    const/4 v1, 0x0

    .line 1417
    .local v1, hasDigit:Z
    const/4 v2, 0x0

    .line 1418
    .local v2, hasNonDigit:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1419
    .local v5, len:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 1420
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1421
    const/4 v1, 0x1

    .line 1419
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1423
    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    .line 1426
    :cond_4
    if-eqz v2, :cond_5

    if-nez v1, :cond_1

    .line 1429
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1430
    .local v0, first:C
    const/4 v4, 0x1

    .line 1431
    .local v4, isSimple:Z
    const/4 v3, 0x1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 1432
    add-int/lit8 v8, v3, -0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1433
    .local v7, prev:C
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1434
    .local v6, next:C
    if-ne v6, v0, :cond_6

    if-eq v7, v6, :cond_7

    :cond_6
    sub-int v8, v6, v0

    if-eq v8, v3, :cond_7

    sub-int v8, v0, v6

    if-eq v8, v3, :cond_7

    .line 1435
    const/4 v4, 0x0

    .line 1436
    goto :goto_0

    .line 1431
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public createRecoveryPassword(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 23
    .parameter "className"
    .parameter "create"

    .prologue
    .line 1259
    if-nez p1, :cond_0

    .line 1260
    const/16 v16, 0x0

    .line 1360
    :goto_0
    return-object v16

    .line 1262
    :cond_0
    const/16 v16, 0x0

    .line 1263
    .local v16, password:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1264
    .local v10, hash:[B
    if-eqz p2, :cond_1

    .line 1265
    const/16 v21, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->generateRandomPassword(I)Ljava/lang/String;

    move-result-object v16

    .line 1266
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v10

    .line 1268
    :cond_1
    const/16 v17, 0x0

    .line 1270
    .local v17, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v18, Ljava/io/RandomAccessFile;

    sget-object v21, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    const-string v22, "rw"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1271
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .local v18, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    .line 1272
    .local v5, fileLen:J
    const/4 v15, 0x0

    .line 1273
    .local v15, num:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1274
    .local v3, classNameBytes:[B
    const-wide/16 v21, 0x4

    cmp-long v21, v5, v21

    if-lez v21, :cond_c

    .line 1275
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v15

    .line 1276
    if-ltz v15, :cond_2

    const/16 v21, 0x5

    move/from16 v0, v21

    if-le v15, v0, :cond_4

    .line 1277
    :cond_2
    const-string v21, "LockPatternUtils"

    const-string v22, "File has been corrupted"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const-wide/16 v21, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1280
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1281
    array-length v0, v3

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1282
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1283
    array-length v0, v10

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1284
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1285
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v21

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 1349
    :cond_3
    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1351
    .end local v3           #classNameBytes:[B
    .end local v5           #fileLen:J
    .end local v15           #num:I
    :catch_0
    move-exception v7

    move-object/from16 v17, v18

    .line 1352
    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .local v7, fnfe:Ljava/io/FileNotFoundException;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    :goto_2
    const-string v21, "LockPatternUtils"

    const-string v22, "FileNotFoundException in createRecoveryPassword"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1288
    .end local v7           #fnfe:Ljava/io/FileNotFoundException;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #classNameBytes:[B
    .restart local v5       #fileLen:J
    .restart local v15       #num:I
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :cond_4
    const-wide/16 v8, 0x4

    .line 1289
    .local v8, foundPos:J
    const/4 v13, 0x0

    .line 1290
    .local v13, len:I
    move v14, v15

    .line 1291
    .local v14, newNum:I
    const/4 v11, 0x0

    .line 1293
    .local v11, i:I
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_5

    .line 1294
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v13

    .line 1295
    new-array v4, v13, [B

    .line 1296
    .local v4, clsName:[B
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 1297
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v13

    .line 1298
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 1299
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 1305
    .end local v4           #clsName:[B
    :cond_5
    if-ne v11, v15, :cond_8

    .line 1307
    if-eqz p2, :cond_6

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ge v15, v0, :cond_6

    .line 1308
    array-length v0, v3

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1309
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1310
    array-length v0, v10

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1311
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1312
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v21

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 1313
    add-int/lit8 v14, v15, 0x1

    .line 1337
    :cond_6
    :goto_4
    const-wide/16 v21, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1338
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1354
    .end local v3           #classNameBytes:[B
    .end local v5           #fileLen:J
    .end local v8           #foundPos:J
    .end local v11           #i:I
    .end local v13           #len:I
    .end local v14           #newNum:I
    .end local v15           #num:I
    :catch_1
    move-exception v12

    move-object/from16 v17, v18

    .line 1355
    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .local v12, ioe:Ljava/io/IOException;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    :goto_5
    const-string v21, "LockPatternUtils"

    const-string v22, "IOException in createRecoveryPassword"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1360
    :goto_6
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1302
    .end local v12           #ioe:Ljava/io/IOException;
    .end local v17           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #classNameBytes:[B
    .restart local v4       #clsName:[B
    .restart local v5       #fileLen:J
    .restart local v8       #foundPos:J
    .restart local v11       #i:I
    .restart local v13       #len:I
    .restart local v14       #newNum:I
    .restart local v15       #num:I
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :cond_7
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    .line 1293
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1316
    .end local v4           #clsName:[B
    :cond_8
    const/16 v19, 0x0

    .line 1317
    .local v19, remainderBytes:[B
    add-int/lit8 v21, v15, -0x1

    move/from16 v0, v21

    if-ge v11, v0, :cond_9

    .line 1318
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v21

    sub-long v21, v5, v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v20, v0

    .line 1319
    .local v20, remainderLength:I
    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 1320
    invoke-virtual/range {v18 .. v19}, Ljava/io/RandomAccessFile;->read([B)I

    .line 1322
    .end local v20           #remainderLength:I
    :cond_9
    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1323
    if-eqz p2, :cond_b

    .line 1324
    array-length v0, v3

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1325
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1326
    array-length v0, v10

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1327
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1331
    :goto_7
    add-int/lit8 v21, v15, -0x1

    move/from16 v0, v21

    if-ge v11, v0, :cond_a

    .line 1332
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1333
    invoke-virtual/range {v18 .. v19}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1335
    :cond_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v21

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    goto/16 :goto_4

    .line 1329
    :cond_b
    add-int/lit8 v14, v15, -0x1

    goto :goto_7

    .line 1341
    .end local v8           #foundPos:J
    .end local v11           #i:I
    .end local v13           #len:I
    .end local v14           #newNum:I
    .end local v19           #remainderBytes:[B
    :cond_c
    if-eqz p2, :cond_3

    .line 1342
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1343
    array-length v0, v3

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1344
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1345
    array-length v0, v10

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1346
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 1358
    .end local v3           #classNameBytes:[B
    .end local v5           #fileLen:J
    .end local v15           #num:I
    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v12       #ioe:Ljava/io/IOException;
    .restart local v17       #raf:Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v21

    goto/16 :goto_6

    .line 1354
    .end local v12           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v12

    goto/16 :goto_5

    .line 1351
    :catch_4
    move-exception v7

    goto/16 :goto_2
.end method

.method deleteGallery()V
    .locals 4

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock"

    const-string v3, "com.android.facelock.SetupFaceLock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 516
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "deleteGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 517
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 519
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public deleteTempGallery()V
    .locals 4

    .prologue
    .line 503
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock"

    const-string v3, "com.android.facelock.SetupFaceLock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 505
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "deleteTempGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 506
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 507
    return-void
.end method

.method public fingerprintDeleteCredentialsUsingPassword()I
    .locals 13

    .prologue
    .line 1504
    const/4 v3, -0x1

    .line 1505
    .local v3, iResult:I
    const/4 v6, 0x0

    .line 1506
    .local v6, passwordString:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHashString()Ljava/lang/String;

    move-result-object v6

    .line 1509
    :try_start_0
    const-string v8, "com.authentec.amjni.AuthentecMobile"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1510
    .local v4, mAuthentecMobile:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1511
    .local v0, contextConstructor:Ljava/lang/reflect/Constructor;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1512
    .local v5, myObject:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "AMApplication_Database_FactoryReset"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1515
    .local v2, factoryResetMethod:Ljava/lang/reflect/Method;
    if-eqz v6, :cond_0

    .line 1516
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v2, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1521
    .local v7, resultObject:Ljava/lang/Object;
    :goto_0
    check-cast v7, Ljava/lang/Integer;

    .end local v7           #resultObject:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1527
    .end local v0           #contextConstructor:Ljava/lang/reflect/Constructor;
    .end local v2           #factoryResetMethod:Ljava/lang/reflect/Method;
    .end local v4           #mAuthentecMobile:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #myObject:Ljava/lang/Object;
    :goto_1
    return v3

    .line 1518
    .restart local v0       #contextConstructor:Ljava/lang/reflect/Constructor;
    .restart local v2       #factoryResetMethod:Ljava/lang/reflect/Method;
    .restart local v4       #mAuthentecMobile:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v5       #myObject:Ljava/lang/Object;
    :cond_0
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "EMPTY_PASSWORD_STRING"

    aput-object v10, v8, v9

    invoke-virtual {v2, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .restart local v7       #resultObject:Ljava/lang/Object;
    goto :goto_0

    .line 1523
    .end local v0           #contextConstructor:Ljava/lang/reflect/Constructor;
    .end local v2           #factoryResetMethod:Ljava/lang/reflect/Method;
    .end local v4           #mAuthentecMobile:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #myObject:Ljava/lang/Object;
    .end local v7           #resultObject:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1524
    .local v1, ex:Ljava/lang/Exception;
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public generateRandomPassword(I)Ljava/lang/String;
    .locals 6
    .parameter "length"

    .prologue
    .line 1240
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1241
    .local v0, buf:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 1242
    .local v3, random:Ljava/util/Random;
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v2

    .line 1243
    .local v2, passwordQuality:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1244
    const/high16 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 1245
    const-string v4, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%&*-=+/?"

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1243
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1247
    :cond_0
    const-string v4, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%&*-=+/?"

    sget v5, Lcom/android/internal/widget/LockPatternUtils;->ALLOWED_CHARS_STRING_LENGTH:I

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1250
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getActivePasswordQuality()I
    .locals 5

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 413
    .local v0, activePasswordQuality:I
    const-string v2, "lockscreen.password_type"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 415
    .local v1, quality:I
    sparse-switch v1, :sswitch_data_0

    .line 448
    :cond_0
    :goto_0
    return v0

    .line 417
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    const/high16 v0, 0x1

    goto :goto_0

    .line 422
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    const v0, 0x8000

    goto :goto_0

    .line 427
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    const/high16 v0, 0x2

    goto :goto_0

    .line 432
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    const/high16 v0, 0x4

    goto :goto_0

    .line 437
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    const/high16 v0, 0x5

    goto :goto_0

    .line 442
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    const/high16 v0, 0x6

    goto :goto_0

    .line 415
    :sswitch_data_0
    .sparse-switch
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_5
    .end sparse-switch
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 191
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 192
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 5

    .prologue
    const-wide/32 v3, 0x10000

    .line 795
    const-string v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 799
    .local v0, quality:I
    const v1, 0x8000

    if-ne v0, v1, :cond_0

    .line 800
    const-string v1, "lockscreen.password_type_alternate"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 804
    :cond_0
    return v0
.end method

.method public getLockoutAttemptDeadline()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 1048
    const-string v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1049
    .local v0, deadline:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1050
    .local v2, now:J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_0

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    :cond_0
    move-wide v0, v4

    .line 1053
    .end local v0           #deadline:J
    :cond_1
    return-wide v0
.end method

.method public getMotDevicePolicyManager()Lcom/motorola/motepm/MotDevicePolicyManager;
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMotDevicePolicyManager:Lcom/motorola/motepm/MotDevicePolicyManager;

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "mot_device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMotDevicePolicyManager:Lcom/motorola/motepm/MotDevicePolicyManager;

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMotDevicePolicyManager:Lcom/motorola/motepm/MotDevicePolicyManager;

    if-nez v0, :cond_0

    .line 205
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get MotDevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMotDevicePolicyManager:Lcom/motorola/motepm/MotDevicePolicyManager;

    return-object v0
.end method

.method public getNextAlarm()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1107
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1109
    .local v0, nextAlarm:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1110
    :cond_0
    const/4 v0, 0x0

    .line 1112
    .end local v0           #nextAlarm:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getPowerButtonInstantlyLocks()Z
    .locals 2

    .prologue
    .line 1227
    const-string v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordComplexity()I
    .locals 2

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getMotDevicePolicyManager()Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/motepm/MotDevicePolicyManager;->getPasswordMinimumComplexity(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordLength()I
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordHistoryLength()I
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters()I
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase()I
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter()I
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric()I
    .locals 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols()I
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase()I
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public isBiometricWeakEverChosen()Z
    .locals 2

    .prologue
    .line 402
    const-string v0, "lockscreen.biometricweakeverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 966
    const-string v4, "enable_facelock"

    const-string v5, "lockscreen.options"

    invoke-direct {p0, v5}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 987
    :cond_0
    :goto_0
    return v2

    .line 971
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 973
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.android.facelock"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    const-string v4, "android.hardware.camera.front"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 987
    goto :goto_0

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCallEnabledWhileSimLocked()Z
    .locals 2

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isFingerprintEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1488
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.motorola.hardware.fingerprint"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 1490
    .local v1, fingerprintHWSupported:I
    :goto_0
    if-ne v1, v2, :cond_2

    .line 1491
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "lock_fingerprint"

    invoke-static {v4, v5, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1495
    .local v0, fingerprint:I
    if-ne v0, v2, :cond_1

    .line 1497
    .end local v0           #fingerprint:I
    :goto_1
    return v2

    .end local v1           #fingerprintHWSupported:I
    :cond_0
    move v1, v3

    .line 1488
    goto :goto_0

    .restart local v0       #fingerprint:I
    .restart local v1       #fingerprintHWSupported:I
    :cond_1
    move v2, v3

    .line 1495
    goto :goto_1

    .end local v0           #fingerprint:I
    :cond_2
    move v2, v3

    .line 1497
    goto :goto_1
.end method

.method public isLockPasswordEnabled()Z
    .locals 15

    .prologue
    const-wide/32 v13, 0x40000

    const-wide/32 v11, 0x20000

    const-wide/16 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 931
    const-string v8, "lockscreen.password_type"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 932
    .local v3, mode:J
    const-string v8, "lockscreen.password_type_alternate"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 933
    .local v1, backupMode:J
    cmp-long v8, v3, v13

    if-eqz v8, :cond_0

    cmp-long v8, v3, v11

    if-eqz v8, :cond_0

    const-wide/32 v8, 0x50000

    cmp-long v8, v3, v8

    if-eqz v8, :cond_0

    const-wide/32 v8, 0x60000

    cmp-long v8, v3, v8

    if-nez v8, :cond_3

    :cond_0
    move v5, v7

    .line 937
    .local v5, passwordEnabled:Z
    :goto_0
    cmp-long v8, v1, v13

    if-eqz v8, :cond_1

    cmp-long v8, v1, v11

    if-eqz v8, :cond_1

    const-wide/32 v8, 0x50000

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    const-wide/32 v8, 0x60000

    cmp-long v8, v1, v8

    if-nez v8, :cond_4

    :cond_1
    move v0, v7

    .line 942
    .local v0, backupEnabled:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v0, :cond_5

    :cond_2
    :goto_2
    return v7

    .end local v0           #backupEnabled:Z
    .end local v5           #passwordEnabled:Z
    :cond_3
    move v5, v6

    .line 933
    goto :goto_0

    .restart local v5       #passwordEnabled:Z
    :cond_4
    move v0, v6

    .line 937
    goto :goto_1

    .restart local v0       #backupEnabled:Z
    :cond_5
    move v7, v6

    .line 942
    goto :goto_2
.end method

.method public isLockPatternEnabled()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/32 v5, 0x10000

    .line 950
    const-string v3, "lockscreen.password_type_alternate"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    move v0, v1

    .line 954
    .local v0, backupEnabled:Z
    :goto_0
    const-string v3, "lock_pattern_autolock"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "lockscreen.password_type"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return v1

    .end local v0           #backupEnabled:Z
    :cond_1
    move v0, v2

    .line 950
    goto :goto_0

    .restart local v0       #backupEnabled:Z
    :cond_2
    move v1, v2

    .line 954
    goto :goto_1
.end method

.method public isLockScreenDisabled()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 495
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lockscreen.disabled"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPatternEverChosen()Z
    .locals 2

    .prologue
    .line 392
    const-string v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked()Z
    .locals 2

    .prologue
    .line 1072
    const-string v0, "lockscreen.lockedoutpermanently"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPukUnlockScreenEnable()Z
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1143
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v6

    int-to-long v2, v6

    .line 1144
    .local v2, mode:J
    const-wide/32 v6, 0x10000

    cmp-long v6, v2, v6

    if-nez v6, :cond_3

    move v1, v4

    .line 1145
    .local v1, isPattern:Z
    :goto_0
    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    :cond_0
    move v0, v4

    .line 1149
    .local v0, isPassword:Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1151
    .local v4, secure:Z
    :cond_2
    :goto_2
    return v4

    .end local v0           #isPassword:Z
    .end local v1           #isPattern:Z
    .end local v4           #secure:Z
    :cond_3
    move v1, v5

    .line 1144
    goto :goto_0

    .restart local v1       #isPattern:Z
    :cond_4
    move v0, v5

    .line 1145
    goto :goto_1

    .restart local v0       #isPassword:Z
    :cond_5
    move v4, v5

    .line 1149
    goto :goto_2
.end method

.method public isTablet()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1579
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 1581
    .local v1, wm:Landroid/view/IWindowManager;
    const/4 v0, 0x0

    .line 1583
    .local v0, status:Z
    if-eqz v1, :cond_0

    .line 1584
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->canStatusBarHide()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1587
    :cond_0
    :goto_0
    if-ne v0, v2, :cond_1

    .line 1588
    const/4 v2, 0x0

    .line 1590
    :cond_1
    return v2

    .line 1586
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 2

    .prologue
    .line 1021
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVisiblePatternEnabled()Z
    .locals 2

    .prologue
    .line 1007
    const-string v0, "lock_pattern_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;)[B
    .locals 9
    .parameter "password"

    .prologue
    .line 901
    if-nez p1, :cond_0

    .line 902
    const/4 v2, 0x0

    .line 914
    :goto_0
    return-object v2

    .line 904
    :cond_0
    const/4 v0, 0x0

    .line 905
    .local v0, algo:Ljava/lang/String;
    const/4 v2, 0x0

    .line 907
    .local v2, hashed:[B
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 908
    .local v4, saltedPassword:[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 909
    .local v5, sha1:[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 910
    .local v3, md5:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 911
    .end local v3           #md5:[B
    .end local v4           #saltedPassword:[B
    .end local v5           #sha1:[B
    :catch_0
    move-exception v1

    .line 912
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportFailedPasswordAttempt()V
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt()V

    .line 286
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt()V

    .line 290
    return-void
.end method

.method public resumeCall()Z
    .locals 2

    .prologue
    .line 1199
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1201
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1202
    const/4 v1, 0x1

    .line 1207
    :goto_0
    return v1

    .line 1204
    :catch_0
    move-exception v1

    .line 1207
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .locals 1
    .parameter "password"
    .parameter "quality"

    .prologue
    .line 649
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZ)V

    .line 650
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZ)V
    .locals 34
    .parameter "password"
    .parameter "quality"
    .parameter "isFallback"

    .prologue
    .line 662
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v26

    .line 665
    .local v26, hash:[B
    :try_start_0
    new-instance v33, Ljava/io/RandomAccessFile;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string v4, "rw"

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    .local v33, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_0

    .line 668
    const-wide/16 v3, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 672
    :goto_0
    invoke-virtual/range {v33 .. v33}, Ljava/io/RandomAccessFile;->close()V

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 675
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getMotDevicePolicyManager()Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v30

    .line 676
    .local v30, motdpm:Lcom/motorola/motepm/MotDevicePolicyManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v29

    .line 677
    .local v29, keyStore:Landroid/security/KeyStore;
    if-eqz p1, :cond_a

    .line 679
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(Ljava/lang/String;)V

    .line 681
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 683
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v23

    .line 684
    .local v23, computedQuality:I
    if-nez p3, :cond_8

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 686
    const-string v3, "lockscreen.password_type"

    move/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v11, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 688
    invoke-virtual/range {v30 .. v30}, Lcom/motorola/motepm/MotDevicePolicyManager;->reportPasswordChanged()V

    .line 689
    if-eqz v23, :cond_7

    .line 690
    const/4 v5, 0x0

    .line 691
    .local v5, letters:I
    const/4 v6, 0x0

    .line 692
    .local v6, uppercase:I
    const/4 v7, 0x0

    .line 693
    .local v7, lowercase:I
    const/4 v8, 0x0

    .line 694
    .local v8, numbers:I
    const/4 v9, 0x0

    .line 695
    .local v9, symbols:I
    const/4 v10, 0x0

    .line 696
    .local v10, nonletter:I
    const/16 v27, 0x0

    .local v27, i:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v27

    if-ge v0, v3, :cond_5

    .line 697
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    .line 698
    .local v20, c:C
    const/16 v3, 0x41

    move/from16 v0, v20

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    move/from16 v0, v20

    if-gt v0, v3, :cond_2

    .line 699
    add-int/lit8 v5, v5, 0x1

    .line 700
    add-int/lit8 v6, v6, 0x1

    .line 696
    :goto_2
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 670
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v5           #letters:I
    .end local v6           #uppercase:I
    .end local v7           #lowercase:I
    .end local v8           #numbers:I
    .end local v9           #symbols:I
    .end local v10           #nonletter:I
    .end local v20           #c:C
    .end local v23           #computedQuality:I
    .end local v27           #i:I
    .end local v29           #keyStore:Landroid/security/KeyStore;
    .end local v30           #motdpm:Lcom/motorola/motepm/MotDevicePolicyManager;
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, v26

    array-length v4, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 779
    .end local v33           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v25

    .line 781
    .local v25, fnfe:Ljava/io/FileNotFoundException;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to save lock pattern to "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v11, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    .end local v25           #fnfe:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    return-void

    .line 701
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v5       #letters:I
    .restart local v6       #uppercase:I
    .restart local v7       #lowercase:I
    .restart local v8       #numbers:I
    .restart local v9       #symbols:I
    .restart local v10       #nonletter:I
    .restart local v20       #c:C
    .restart local v23       #computedQuality:I
    .restart local v27       #i:I
    .restart local v29       #keyStore:Landroid/security/KeyStore;
    .restart local v30       #motdpm:Lcom/motorola/motepm/MotDevicePolicyManager;
    .restart local v33       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    const/16 v3, 0x61

    move/from16 v0, v20

    if-lt v0, v3, :cond_3

    const/16 v3, 0x7a

    move/from16 v0, v20

    if-gt v0, v3, :cond_3

    .line 702
    add-int/lit8 v5, v5, 0x1

    .line 703
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 704
    :cond_3
    const/16 v3, 0x30

    move/from16 v0, v20

    if-lt v0, v3, :cond_4

    const/16 v3, 0x39

    move/from16 v0, v20

    if-gt v0, v3, :cond_4

    .line 705
    add-int/lit8 v8, v8, 0x1

    .line 706
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 708
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 709
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 712
    .end local v20           #c:C
    :cond_5
    :try_start_1
    move/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {v2 .. v10}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    .line 716
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordSimple(Ljava/lang/String;)Z

    move-result v22

    .line 717
    .local v22, computedPasswordSimple:Z
    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/motepm/MotDevicePolicyManager;->setActivePasswordSimpleState(Z)V

    .line 719
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordComplexity(Ljava/lang/String;)I

    move-result v21

    .line 720
    .local v21, computedPasswordComplexity:I
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/motorola/motepm/MotDevicePolicyManager;->setActivePasswordComplexity(I)V

    .line 741
    .end local v5           #letters:I
    .end local v6           #uppercase:I
    .end local v7           #lowercase:I
    .end local v8           #numbers:I
    .end local v9           #symbols:I
    .end local v10           #nonletter:I
    .end local v21           #computedPasswordComplexity:I
    .end local v22           #computedPasswordSimple:Z
    .end local v27           #i:I
    :goto_4
    const-string v3, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 742
    .local v31, passwordHistory:Ljava/lang/String;
    if-nez v31, :cond_6

    .line 743
    new-instance v31, Ljava/lang/String;

    .end local v31           #passwordHistory:Ljava/lang/String;
    invoke-direct/range {v31 .. v31}, Ljava/lang/String;-><init>()V

    .line 745
    .restart local v31       #passwordHistory:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v32

    .line 746
    .local v32, passwordHistoryLength:I
    if-nez v32, :cond_9

    .line 747
    const-string v31, ""

    .line 756
    :goto_5
    const-string v3, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "lock_type"

    const/4 v11, 0x2

    invoke-static {v3, v4, v11}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 774
    .end local v23           #computedQuality:I
    .end local v31           #passwordHistory:Ljava/lang/String;
    .end local v32           #passwordHistoryLength:I
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getEncryptionAdminManager()Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    move-result-object v24

    .line 775
    .local v24, encAdmin:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;
    if-eqz v24, :cond_1

    .line 776
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->onNewPasswordSaved(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 782
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v24           #encAdmin:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;
    .end local v29           #keyStore:Landroid/security/KeyStore;
    .end local v30           #motdpm:Lcom/motorola/motepm/MotDevicePolicyManager;
    .end local v33           #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v28

    .line 784
    .local v28, ioe:Ljava/io/IOException;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to save lock pattern to "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v11, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 723
    .end local v28           #ioe:Ljava/io/IOException;
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v23       #computedQuality:I
    .restart local v29       #keyStore:Landroid/security/KeyStore;
    .restart local v30       #motdpm:Lcom/motorola/motepm/MotDevicePolicyManager;
    .restart local v33       #raf:Ljava/io/RandomAccessFile;
    :cond_7
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    :try_start_2
    invoke-virtual/range {v11 .. v19}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    .line 726
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/motorola/motepm/MotDevicePolicyManager;->setActivePasswordSimpleState(Z)V

    .line 728
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/motorola/motepm/MotDevicePolicyManager;->setActivePasswordComplexity(I)V

    goto :goto_4

    .line 732
    :cond_8
    const-string v3, "lockscreen.password_type"

    const-wide/32 v11, 0x8000

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 733
    const-string v3, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v11, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 734
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V

    .line 735
    const v12, 0x8000

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    invoke-virtual/range {v11 .. v19}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    goto/16 :goto_4

    .line 749
    .restart local v31       #passwordHistory:Ljava/lang/String;
    .restart local v32       #passwordHistoryLength:I
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 752
    const/4 v3, 0x0

    move-object/from16 v0, v26

    array-length v4, v0

    mul-int v4, v4, v32

    add-int v4, v4, v32

    add-int/lit8 v4, v4, -0x1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_5

    .line 767
    .end local v23           #computedQuality:I
    .end local v31           #passwordHistory:Ljava/lang/String;
    .end local v32           #passwordHistoryLength:I
    :cond_a
    invoke-virtual/range {v29 .. v29}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 768
    invoke-virtual/range {v29 .. v29}, Landroid/security/KeyStore;->reset()Z

    .line 770
    :cond_b
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    invoke-virtual/range {v11 .. v19}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 526
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 527
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Z)V
    .locals 15
    .parameter
    .parameter "isFallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 536
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v10

    .line 539
    .local v10, hash:[B
    :try_start_0
    new-instance v14, Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string v2, "rw"

    invoke-direct {v14, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .local v14, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_0

    .line 542
    const-wide/16 v1, 0x0

    invoke-virtual {v14, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 546
    :goto_0
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 547
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 548
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v12

    .line 550
    .local v12, keyStore:Landroid/security/KeyStore;
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getMotDevicePolicyManager()Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v13

    .line 551
    .local v13, motdpm:Lcom/motorola/motepm/MotDevicePolicyManager;
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lcom/motorola/motepm/MotDevicePolicyManager;->setActivePasswordSimpleState(Z)V

    .line 552
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lcom/motorola/motepm/MotDevicePolicyManager;->setActivePasswordComplexity(I)V

    .line 553
    if-eqz p1, :cond_2

    .line 554
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 555
    const-string v1, "lockscreen.patterneverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 556
    if-nez p2, :cond_1

    .line 557
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 558
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 559
    const/high16 v1, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    .line 571
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "lock_type"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 591
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v12           #keyStore:Landroid/security/KeyStore;
    .end local v13           #motdpm:Lcom/motorola/motepm/MotDevicePolicyManager;
    .end local v14           #raf:Ljava/io/RandomAccessFile;
    :goto_2
    return-void

    .line 544
    .restart local v14       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    const/4 v1, 0x0

    array-length v2, v10

    invoke-virtual {v14, v10, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 583
    .end local v14           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v9

    .line 586
    .local v9, fnfe:Ljava/io/FileNotFoundException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock pattern to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 562
    .end local v9           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v12       #keyStore:Landroid/security/KeyStore;
    .restart local v13       #motdpm:Lcom/motorola/motepm/MotDevicePolicyManager;
    .restart local v14       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    :try_start_1
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x8000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 563
    const-string v1, "lockscreen.password_type_alternate"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 565
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V

    .line 566
    const v1, 0x8000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 587
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v12           #keyStore:Landroid/security/KeyStore;
    .end local v13           #motdpm:Lcom/motorola/motepm/MotDevicePolicyManager;
    .end local v14           #raf:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v11

    .line 589
    .local v11, ioe:Ljava/io/IOException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock pattern to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 577
    .end local v11           #ioe:Ljava/io/IOException;
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v12       #keyStore:Landroid/security/KeyStore;
    .restart local v13       #motdpm:Lcom/motorola/motepm/MotDevicePolicyManager;
    .restart local v14       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    :try_start_2
    invoke-virtual {v12}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 578
    invoke-virtual {v12}, Landroid/security/KeyStore;->reset()Z

    .line 580
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public savedPasswordExists()Z
    .locals 1

    .prologue
    .line 382
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public savedPatternExists()Z
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setLockPatternEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1000
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1001
    return-void
.end method

.method public setLockScreenDisabled(Z)V
    .locals 3
    .parameter "disable"

    .prologue
    .line 485
    const-string v2, "lockscreen.disabled"

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 486
    return-void

    .line 485
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setLockoutAttemptDeadline()J
    .locals 6

    .prologue
    .line 1037
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .line 1038
    .local v0, deadline:J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1039
    return-wide v0
.end method

.method public setPermanentlyLocked(Z)V
    .locals 1
    .parameter "locked"

    .prologue
    .line 1084
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1085
    return-void
.end method

.method public setPowerButtonInstantlyLocks(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1222
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1223
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1028
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1029
    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1014
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1015
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V
    .locals 5
    .parameter "button"
    .parameter "phoneState"
    .parameter "shown"

    .prologue
    const/4 v4, 0x0

    .line 1169
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 1170
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1177
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 1179
    const v2, 0x10402f8

    .line 1181
    .local v2, textId:I
    const v1, 0x108063c

    .line 1183
    .local v1, phoneCallIcon:I
    invoke-virtual {p1, v1, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1189
    .end local v1           #phoneCallIcon:I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 1190
    .end local v2           #textId:I
    :goto_1
    return-void

    .line 1172
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 1185
    :cond_1
    const v2, 0x10402f7

    .line 1186
    .restart local v2       #textId:I
    const v0, 0x10802cf

    .line 1187
    .local v0, emergencyIcon:I
    invoke-virtual {p1, v0, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public usingBiometricWeak()Z
    .locals 4

    .prologue
    .line 811
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 813
    .local v0, quality:I
    const v1, 0x8000

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
