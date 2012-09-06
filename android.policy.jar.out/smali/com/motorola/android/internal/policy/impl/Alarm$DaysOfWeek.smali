.class final Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;
.super Ljava/lang/Object;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/policy/impl/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DaysOfWeek"
.end annotation


# instance fields
.field private mDays:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "days"

    .prologue
    .line 253
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput p1, p0, Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    .line 255
    return-void
.end method

.method private isSet(I)Z
    .locals 3
    .parameter "day"

    .prologue
    const/4 v0, 0x1

    .line 266
    iget v1, p0, Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCoded()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    return v0
.end method

.method public getNextAlarm(Ljava/util/Calendar;)I
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x7

    .line 270
    iget v3, p0, Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    if-nez v3, :cond_1

    .line 271
    const/4 v1, -0x1

    .line 284
    :cond_0
    return v1

    .line 274
    :cond_1
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x7

    .line 276
    .local v2, today:I
    const/4 v0, 0x0

    .line 277
    .local v0, day:I
    const/4 v1, 0x0

    .line 278
    .local v1, dayCount:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 279
    add-int v3, v2, v1

    rem-int/lit8 v0, v3, 0x7

    .line 280
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isRepeatSet()Z
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
