.class final Lcom/motorola/android/telephony/SubscriptionInfo$1;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/SubscriptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/motorola/android/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/telephony/SubscriptionInfo;
    .locals 1
    .parameter "in"

    .prologue
    .line 64
    new-instance v0, Lcom/motorola/android/telephony/SubscriptionInfo;

    invoke-direct {v0, p1}, Lcom/motorola/android/telephony/SubscriptionInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/SubscriptionInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/android/telephony/SubscriptionInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 69
    new-array v0, p1, [Lcom/motorola/android/telephony/SubscriptionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/SubscriptionInfo$1;->newArray(I)[Lcom/motorola/android/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method
