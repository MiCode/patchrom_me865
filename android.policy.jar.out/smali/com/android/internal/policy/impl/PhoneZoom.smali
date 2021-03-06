.class public Lcom/android/internal/policy/impl/PhoneZoom;
.super Ljava/lang/Object;
.source "PhoneZoom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;,
        Lcom/android/internal/policy/impl/PhoneZoom$DisplayPanel;
    }
.end annotation


# static fields
.field private static final ASPECT_RATIO:F = 0.92f

.field private static final HEIGHT_REAL_ESTATE:F = 0.52f

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneZoomFeature"

.field private static MAGNIFIER_HEIGHT:I = 0x0

.field private static MAGNIFIER_HEIGHT_LAND:I = 0x0

.field private static MAGNIFIER_HEIGHT_PORT:I = 0x0

.field private static MAGNIFIER_WIDTH:I = 0x0

.field private static MAGNIFIER_WIDTH_LAND:I = 0x0

.field private static MAGNIFIER_WIDTH_PORT:I = 0x0

.field private static final ZOOM_FACTOR:F = 2.0f

.field private static initialized:Z

.field private static mContext:Landroid/content/Context;

.field private static mHandleHeight:I

.field private static mHandleWidth:I

.field private static mOrientation:I

.field private static mPhoneZoomSingleton:Lcom/android/internal/policy/impl/PhoneZoom;

.field private static mScreenHeight:I

.field private static mScreenHeightLand:I

.field private static mScreenHeightPort:I

.field private static mScreenWidth:I

.field private static mScreenWidthLand:I

.field private static mScreenWidthPort:I

.field private static mStatusBarHeight:I


# instance fields
.field private mActive:Z

.field private mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mMagnifier:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    sput-object v1, Lcom/android/internal/policy/impl/PhoneZoom;->mContext:Landroid/content/Context;

    .line 63
    const/16 v0, 0x140

    sput v0, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT:I

    .line 67
    const/16 v0, 0x1e0

    sput v0, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH:I

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneZoom;->initialized:Z

    .line 73
    sput-object v1, Lcom/android/internal/policy/impl/PhoneZoom;->mPhoneZoomSingleton:Lcom/android/internal/policy/impl/PhoneZoom;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mActive:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mMagnifier:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mHandler:Landroid/os/Handler;

    .line 260
    new-instance v0, Lcom/android/internal/policy/impl/PhoneZoom$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneZoom$5;-><init>(Lcom/android/internal/policy/impl/PhoneZoom;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeightPort:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput p0, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH:I

    return p0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH_PORT:I

    return v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput p0, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT:I

    return p0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT_PORT:I

    return v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidthLand:I

    return v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeightLand:I

    return v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH_LAND:I

    return v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT_LAND:I

    return v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/policy/impl/PhoneZoom;->mHandleWidth:I

    return v0
.end method

.method static synthetic access$1902(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput p0, Lcom/android/internal/policy/impl/PhoneZoom;->mHandleWidth:I

    return p0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/internal/policy/impl/PhoneZoom;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PhoneZoom;)Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mMagnifier:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    return-object v0
.end method

.method static synthetic access$2300()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/policy/impl/PhoneZoom;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/policy/impl/PhoneZoom;->mHandleHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneZoom;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneZoom;->startZoomWindow(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneZoom;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneZoom;->stopZoomWindow()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneZoom;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mActive:Z

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/policy/impl/PhoneZoom;->mOrientation:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput p0, Lcom/android/internal/policy/impl/PhoneZoom;->mOrientation:I

    return p0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput p0, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidth:I

    return p0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidthPort:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput p0, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeight:I

    return p0
.end method

.method private computeMagLongSide(II)I
    .locals 3
    .parameter "screenLongSide"
    .parameter "handleHeight"

    .prologue
    .line 235
    int-to-float v1, p1

    const v2, 0x3f051eb8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v2, p2, 0x2

    sub-int v0, v1, v2

    .line 238
    .local v0, value:I
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 239
    add-int/lit8 v0, v0, 0x1

    .line 241
    :cond_0
    return v0
.end method

.method private computeMagShortSide(IIZ)I
    .locals 3
    .parameter "magLongSide"
    .parameter "handleHeight"
    .parameter "isPortrait"

    .prologue
    const v2, 0x3f6b851f

    .line 247
    if-eqz p3, :cond_1

    .line 248
    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v1, p1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 254
    .local v0, value:I
    :goto_0
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 255
    add-int/lit8 v0, v0, 0x1

    .line 257
    :cond_0
    return v0

    .line 250
    .end local v0           #value:I
    :cond_1
    int-to-float v1, p1

    mul-float/2addr v1, v2

    mul-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .restart local v0       #value:I
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/PhoneZoom;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/internal/policy/impl/PhoneZoom;->mPhoneZoomSingleton:Lcom/android/internal/policy/impl/PhoneZoom;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/internal/policy/impl/PhoneZoom;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/PhoneZoom;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneZoom;->mPhoneZoomSingleton:Lcom/android/internal/policy/impl/PhoneZoom;

    .line 82
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/PhoneZoom;->mPhoneZoomSingleton:Lcom/android/internal/policy/impl/PhoneZoom;

    return-object v0
.end method

.method private startZoomWindow(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const v7, 0x105000a

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 92
    sget-object v2, Lcom/android/internal/policy/impl/PhoneZoom;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 93
    sput-object p1, Lcom/android/internal/policy/impl/PhoneZoom;->mContext:Landroid/content/Context;

    .line 97
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    sget-object v2, Lcom/android/internal/policy/impl/PhoneZoom;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mOrientation:I

    .line 102
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneZoom;->initialized:Z

    if-nez v2, :cond_2

    .line 103
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 106
    .local v0, d:Landroid/view/Display;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mStatusBarHeight:I

    .line 109
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mStatusBarHeight:I

    add-int/lit8 v2, v2, 0x3

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mStatusBarHeight:I

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mHandleHeight:I

    .line 114
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidth:I

    .line 115
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeight:I

    .line 116
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mOrientation:I

    if-ne v2, v5, :cond_1

    .line 117
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeight:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeightPort:I

    .line 118
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidth:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidthPort:I

    .line 119
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidth:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeightLand:I

    .line 120
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeight:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidthLand:I

    .line 121
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeightPort:I

    sget v3, Lcom/android/internal/policy/impl/PhoneZoom;->mHandleHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneZoom;->computeMagLongSide(II)I

    move-result v2

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT_PORT:I

    .line 122
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT_PORT:I

    sget v3, Lcom/android/internal/policy/impl/PhoneZoom;->mHandleHeight:I

    invoke-direct {p0, v2, v3, v5}, Lcom/android/internal/policy/impl/PhoneZoom;->computeMagShortSide(IIZ)I

    move-result v2

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH_PORT:I

    .line 123
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidthLand:I

    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/PhoneZoom;->computeMagLongSide(II)I

    move-result v2

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH_LAND:I

    .line 124
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH_LAND:I

    sget v3, Lcom/android/internal/policy/impl/PhoneZoom;->mHandleHeight:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneZoom;->computeMagShortSide(IIZ)I

    move-result v2

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT_LAND:I

    .line 125
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT_PORT:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT:I

    .line 126
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH_PORT:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH:I

    .line 140
    :goto_0
    sput-boolean v5, Lcom/android/internal/policy/impl/PhoneZoom;->initialized:Z

    .line 155
    .end local v0           #d:Landroid/view/Display;
    :goto_1
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mHandleWidth:I

    .line 157
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mActive:Z

    if-eqz v2, :cond_4

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneZoom;->stop()V

    .line 173
    :goto_2
    return-void

    .line 129
    .restart local v0       #d:Landroid/view/Display;
    :cond_1
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidth:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeightPort:I

    .line 130
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeight:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidthPort:I

    .line 131
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeight:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeightLand:I

    .line 132
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidth:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidthLand:I

    .line 133
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeightPort:I

    sget v3, Lcom/android/internal/policy/impl/PhoneZoom;->mHandleHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneZoom;->computeMagLongSide(II)I

    move-result v2

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT_PORT:I

    .line 134
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT_PORT:I

    sget v3, Lcom/android/internal/policy/impl/PhoneZoom;->mHandleHeight:I

    invoke-direct {p0, v2, v3, v5}, Lcom/android/internal/policy/impl/PhoneZoom;->computeMagShortSide(IIZ)I

    move-result v2

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH_PORT:I

    .line 135
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidthLand:I

    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/PhoneZoom;->computeMagLongSide(II)I

    move-result v2

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH_LAND:I

    .line 136
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH_LAND:I

    sget v3, Lcom/android/internal/policy/impl/PhoneZoom;->mHandleHeight:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneZoom;->computeMagShortSide(IIZ)I

    move-result v2

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT_LAND:I

    .line 137
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT_LAND:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT:I

    .line 138
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH_LAND:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH:I

    goto :goto_0

    .line 142
    .end local v0           #d:Landroid/view/Display;
    :cond_2
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mOrientation:I

    if-ne v2, v5, :cond_3

    .line 143
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidthPort:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidth:I

    .line 144
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeightPort:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeight:I

    .line 145
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH_PORT:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH:I

    .line 146
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT_PORT:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT:I

    goto :goto_1

    .line 148
    :cond_3
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidthLand:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenWidth:I

    .line 149
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeightLand:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->mScreenHeight:I

    .line 150
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH_LAND:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH:I

    .line 151
    sget v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT_LAND:I

    sput v2, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT:I

    goto :goto_1

    .line 162
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mMagnifier:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    if-nez v2, :cond_5

    .line 163
    new-instance v2, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;-><init>(Lcom/android/internal/policy/impl/PhoneZoom;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mMagnifier:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    .line 164
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mMagnifier:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->setZoom(F)V

    .line 169
    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mMagnifier:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    sget v3, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH:I

    sget v4, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->setSize(II)V

    .line 170
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mMagnifier:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    #calls: Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->moveBy(FF)V
    invoke-static {v2, v6, v6}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->access$100(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;FF)V

    .line 171
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mMagnifier:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->show()V

    .line 172
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mActive:Z

    goto/16 :goto_2

    .line 167
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mMagnifier:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    sget v3, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_WIDTH:I

    sget v4, Lcom/android/internal/policy/impl/PhoneZoom;->MAGNIFIER_HEIGHT:I

    #calls: Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->adjustParams(II)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->access$000(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;II)V

    goto :goto_3
.end method

.method private stopZoomWindow()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mMagnifier:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mMagnifier:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->hide()V

    .line 226
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/PhoneZoom;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 227
    sget-object v0, Lcom/android/internal/policy/impl/PhoneZoom;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneZoom;->mContext:Landroid/content/Context;

    .line 230
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mActive:Z

    .line 231
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "PhoneZoom"

    const-string v1, "pause!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mActive:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneZoom$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneZoom$2;-><init>(Lcom/android/internal/policy/impl/PhoneZoom;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    :cond_0
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 200
    const-string v0, "PhoneZoom"

    const-string v1, "resume!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mActive:Z

    if-nez v0, :cond_0

    .line 202
    sput-object p1, Lcom/android/internal/policy/impl/PhoneZoom;->mContext:Landroid/content/Context;

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneZoom$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneZoom$3;-><init>(Lcom/android/internal/policy/impl/PhoneZoom;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    :cond_0
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 177
    const-string v0, "PhoneZoom"

    const-string v1, "start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mActive:Z

    if-nez v0, :cond_0

    .line 179
    sput-object p1, Lcom/android/internal/policy/impl/PhoneZoom;->mContext:Landroid/content/Context;

    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneZoom$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneZoom$1;-><init>(Lcom/android/internal/policy/impl/PhoneZoom;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 212
    const-string v0, "PhoneZoom"

    const-string v1, "stop!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mActive:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneZoom;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneZoom$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneZoom$4;-><init>(Lcom/android/internal/policy/impl/PhoneZoom;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    :cond_0
    return-void
.end method
