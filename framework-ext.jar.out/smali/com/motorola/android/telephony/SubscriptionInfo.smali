.class public Lcom/motorola/android/telephony/SubscriptionInfo;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/android/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBSCRIPTION_TYPE_ICC:I = 0x0

.field public static final SUBSCRIPTION_TYPE_NV:I = 0x1


# instance fields
.field public iccCardInfo:Lcom/motorola/android/telephony/IccCardInfo;

.field private subscriptionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/motorola/android/telephony/SubscriptionInfo$1;

    invoke-direct {v0}, Lcom/motorola/android/telephony/SubscriptionInfo$1;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "subType"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/motorola/android/telephony/SubscriptionInfo;->subscriptionType:I

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/SubscriptionInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/telephony/SubscriptionInfo;->subscriptionType:I

    .line 56
    iget v0, p0, Lcom/motorola/android/telephony/SubscriptionInfo;->subscriptionType:I

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/motorola/android/telephony/IccCardInfo;

    invoke-direct {v0, p1}, Lcom/motorola/android/telephony/IccCardInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/SubscriptionInfo;->iccCardInfo:Lcom/motorola/android/telephony/IccCardInfo;

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getSubscriptionType()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/motorola/android/telephony/SubscriptionInfo;->subscriptionType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 48
    iget v0, p0, Lcom/motorola/android/telephony/SubscriptionInfo;->subscriptionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Lcom/motorola/android/telephony/SubscriptionInfo;->subscriptionType:I

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/motorola/android/telephony/SubscriptionInfo;->iccCardInfo:Lcom/motorola/android/telephony/IccCardInfo;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/android/telephony/IccCardInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 52
    :cond_0
    return-void
.end method
