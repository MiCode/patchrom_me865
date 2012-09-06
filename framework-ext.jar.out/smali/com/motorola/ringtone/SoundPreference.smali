.class public Lcom/motorola/ringtone/SoundPreference;
.super Landroid/preference/ListPreference;
.source "SoundPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/ringtone/SoundPreference$OnSoundChangedListener;
    }
.end annotation


# static fields
.field public static SOUND:[Ljava/lang/String; = null

.field public static final TYPE_IGNORE:I = 0x5

.field public static final TYPE_MUSIC:I = 0x2

.field public static final TYPE_RINGTONE_ALARM:I = 0x1

.field public static final TYPE_RINGTONE_CALL:I = 0x0

.field public static final TYPE_VIBRATE:I = 0x4

.field public static final TYPE_VIDEO:I = 0x3

.field public static final res:[I


# instance fields
.field private mIsAlarm:Ljava/lang/Boolean;

.field private mPreSound:Ljava/lang/String;

.field private mSoundChangedListener:Lcom/motorola/ringtone/SoundPreference$OnSoundChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/ringtone/SoundPreference;->res:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xd8t 0x6t 0x4t 0x1t
        0xd8t 0x6t 0x4t 0x1t
        0xd9t 0x6t 0x4t 0x1t
        0xdat 0x6t 0x4t 0x1t
        0xdbt 0x6t 0x4t 0x1t
        0xdct 0x6t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    sget-object v1, Lcom/motorola/ringtone/SoundPreference;->res:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/motorola/ringtone/SoundPreference;->SOUND:[Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/motorola/ringtone/SoundPreference;->res:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 48
    sget-object v1, Lcom/motorola/ringtone/SoundPreference;->SOUND:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/motorola/ringtone/SoundPreference;->res:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    const v1, 0x10802cb

    invoke-virtual {p0, v1}, Lcom/motorola/ringtone/SoundPreference;->setDialogIcon(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public getType(Ljava/lang/String;)I
    .locals 2
    .parameter "sound"

    .prologue
    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/motorola/ringtone/SoundPreference;->SOUND:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 80
    sget-object v1, Lcom/motorola/ringtone/SoundPreference;->SOUND:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    if-nez v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/motorola/ringtone/SoundPreference;->mIsAlarm:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    const/4 v0, 0x0

    .line 92
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v0

    .line 85
    .restart local v0       #i:I
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 79
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/motorola/ringtone/SoundPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/ringtone/SoundPreference;->mPreSound:Ljava/lang/String;

    .line 60
    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    .line 61
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/motorola/ringtone/SoundPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, selectedSound:Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/ringtone/SoundPreference;->mPreSound:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/motorola/ringtone/SoundPreference;->setValue(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/motorola/ringtone/SoundPreference;->mSoundChangedListener:Lcom/motorola/ringtone/SoundPreference$OnSoundChangedListener;

    invoke-virtual {p0, v0}, Lcom/motorola/ringtone/SoundPreference;->getType(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/motorola/ringtone/SoundPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/motorola/ringtone/SoundPreference$OnSoundChangedListener;->onSoundChanged(ILjava/lang/String;)V

    .line 72
    .end local v0           #selectedSound:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setIsAlarm(Z)V
    .locals 1
    .parameter "isAlarm"

    .prologue
    .line 75
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/ringtone/SoundPreference;->mIsAlarm:Ljava/lang/Boolean;

    .line 76
    return-void
.end method

.method public setOnSoundChangedListener(Lcom/motorola/ringtone/SoundPreference$OnSoundChangedListener;)V
    .locals 0
    .parameter "soundChangedListener"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/motorola/ringtone/SoundPreference;->mSoundChangedListener:Lcom/motorola/ringtone/SoundPreference$OnSoundChangedListener;

    .line 55
    return-void
.end method
