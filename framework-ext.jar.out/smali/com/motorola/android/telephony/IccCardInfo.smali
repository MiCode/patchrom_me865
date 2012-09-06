.class public final Lcom/motorola/android/telephony/IccCardInfo;
.super Lcom/android/internal/telephony/IccCardStatus;
.source "IccCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/IccCardInfo$2;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/android/telephony/IccCardInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public iccid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/motorola/android/telephony/IccCardInfo$1;

    invoke-direct {v0}, Lcom/motorola/android/telephony/IccCardInfo$1;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/IccCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/motorola/android/telephony/IccCardInfo;->iccid:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/motorola/android/telephony/IccCardInfo;->iccid:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/motorola/android/telephony/IccCardInfo;->iccid:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/motorola/android/telephony/IccCardInfo;->iccid:Ljava/lang/String;

    .line 68
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/IccCardInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/motorola/android/telephony/IccCardInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .line 15
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/android/telephony/IccCardInfo;->iccid:Ljava/lang/String;

    .line 72
    iget-object v3, p1, Lcom/motorola/android/telephony/IccCardInfo;->iccid:Ljava/lang/String;

    iput-object v3, p0, Lcom/motorola/android/telephony/IccCardInfo;->iccid:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lcom/motorola/android/telephony/IccCardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/IccCardInfo;->setCardState(Lcom/android/internal/telephony/IccCardStatus$CardState;)V

    .line 74
    invoke-virtual {p1}, Lcom/motorola/android/telephony/IccCardInfo;->getUniversalPinState()Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/IccCardInfo;->setUniversalPinState(Lcom/android/internal/telephony/IccCardStatus$PinState;)V

    .line 75
    invoke-virtual {p1}, Lcom/motorola/android/telephony/IccCardInfo;->getCdmaSubscriptionAppIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/IccCardInfo;->setCdmaSubscriptionAppIndex(I)V

    .line 76
    invoke-virtual {p1}, Lcom/motorola/android/telephony/IccCardInfo;->getGsmUmtsSubscriptionAppIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/IccCardInfo;->setGsmUmtsSubscriptionAppIndex(I)V

    .line 77
    invoke-virtual {p1}, Lcom/motorola/android/telephony/IccCardInfo;->getImsSubscriptionAppIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/IccCardInfo;->setImsSubscriptionAppIndex(I)V

    .line 78
    invoke-virtual {p1}, Lcom/motorola/android/telephony/IccCardInfo;->getNumApplications()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/IccCardInfo;->setNumApplications(I)V

    .line 79
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IccCardInfo;->getNumApplications()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 80
    invoke-virtual {p1, v1}, Lcom/motorola/android/telephony/IccCardInfo;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/telephony/IccCardAppInfo;

    move-object v0, v3

    check-cast v0, Lcom/motorola/android/telephony/IccCardAppInfo;

    .line 81
    .local v0, appInfo:Lcom/motorola/android/telephony/IccCardAppInfo;
    new-instance v2, Lcom/motorola/android/telephony/IccCardAppInfo;

    invoke-direct {v2}, Lcom/motorola/android/telephony/IccCardAppInfo;-><init>()V

    .line 82
    .local v2, newAppInfo:Lcom/motorola/android/telephony/IccCardAppInfo;
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    iput-object v3, v2, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 83
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    iput-object v3, v2, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 84
    iget v3, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    iput v3, v2, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    .line 85
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v3, v2, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 86
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v3, v2, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 87
    iget-object v3, v0, Lcom/motorola/android/telephony/IccCardAppInfo;->imsi:Ljava/lang/String;

    iput-object v3, v2, Lcom/motorola/android/telephony/IccCardAppInfo;->imsi:Ljava/lang/String;

    .line 88
    iget-object v3, v0, Lcom/motorola/android/telephony/IccCardAppInfo;->operatorNumeric:Ljava/lang/String;

    iput-object v3, v2, Lcom/motorola/android/telephony/IccCardAppInfo;->operatorNumeric:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, v2}, Lcom/motorola/android/telephony/IccCardInfo;->addApplication(Lcom/android/internal/telephony/IccCardApplication;)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v0           #appInfo:Lcom/motorola/android/telephony/IccCardAppInfo;
    .end local v2           #newAppInfo:Lcom/motorola/android/telephony/IccCardAppInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public CardStateToInt(Lcom/android/internal/telephony/IccCardStatus$CardState;)I
    .locals 3
    .parameter "state"

    .prologue
    .line 17
    if-nez p1, :cond_0

    .line 18
    const-string v1, "CARDINFO"

    const-string v2, "oops! null state!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/4 v0, 0x2

    .line 29
    :goto_0
    return v0

    .line 22
    :cond_0
    sget-object v1, Lcom/motorola/android/telephony/IccCardInfo$2;->$SwitchMap$com$android$internal$telephony$IccCardStatus$CardState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus$CardState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 27
    const/4 v0, 0x2

    .local v0, iState:I
    goto :goto_0

    .line 23
    .end local v0           #iState:I
    :pswitch_0
    const/4 v0, 0x0

    .restart local v0       #iState:I
    goto :goto_0

    .line 24
    .end local v0           #iState:I
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0       #iState:I
    goto :goto_0

    .line 25
    .end local v0           #iState:I
    :pswitch_2
    const/4 v0, 0x2

    .restart local v0       #iState:I
    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public PinStateToInt(Lcom/android/internal/telephony/IccCardStatus$PinState;)I
    .locals 4
    .parameter "pinstate"

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    const-string v1, "CARDINFO"

    const-string v2, "oops! null pinstate!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0

    .line 39
    :cond_0
    sget-object v1, Lcom/motorola/android/telephony/IccCardInfo$2;->$SwitchMap$com$android$internal$telephony$IccCardStatus$PinState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus$PinState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 47
    const-string v1, "CARDINFO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use pinstate default: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    .local v0, iPinState:I
    goto :goto_0

    .line 40
    .end local v0           #iPinState:I
    :pswitch_0
    const/4 v0, 0x0

    .restart local v0       #iPinState:I
    goto :goto_0

    .line 41
    .end local v0           #iPinState:I
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0       #iPinState:I
    goto :goto_0

    .line 42
    .end local v0           #iPinState:I
    :pswitch_2
    const/4 v0, 0x2

    .restart local v0       #iPinState:I
    goto :goto_0

    .line 43
    .end local v0           #iPinState:I
    :pswitch_3
    const/4 v0, 0x3

    .restart local v0       #iPinState:I
    goto :goto_0

    .line 44
    .end local v0           #iPinState:I
    :pswitch_4
    const/4 v0, 0x4

    .restart local v0       #iPinState:I
    goto :goto_0

    .line 45
    .end local v0           #iPinState:I
    :pswitch_5
    const/4 v0, 0x5

    .restart local v0       #iPinState:I
    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/telephony/IccCardInfo;->iccid:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/telephony/IccCardInfo;->setCardState(I)V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/telephony/IccCardInfo;->setUniversalPinState(I)V

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/telephony/IccCardInfo;->setCdmaSubscriptionAppIndex(I)V

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/telephony/IccCardInfo;->setGsmUmtsSubscriptionAppIndex(I)V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/telephony/IccCardInfo;->setImsSubscriptionAppIndex(I)V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/telephony/IccCardInfo;->setNumApplications(I)V

    .line 121
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IccCardInfo;->getNumApplications()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 122
    new-instance v0, Lcom/motorola/android/telephony/IccCardAppInfo;

    invoke-direct {v0}, Lcom/motorola/android/telephony/IccCardAppInfo;-><init>()V

    .line 123
    .local v0, appInfo:Lcom/motorola/android/telephony/IccCardAppInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/motorola/android/telephony/IccCardAppInfo;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/motorola/android/telephony/IccCardAppInfo;->AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppState;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/motorola/android/telephony/IccCardAppInfo;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/motorola/android/telephony/IccCardAppInfo;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/android/telephony/IccCardAppInfo;->imsi:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/android/telephony/IccCardAppInfo;->operatorNumeric:Ljava/lang/String;

    .line 130
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IccCardInfo;->addApplication(Lcom/android/internal/telephony/IccCardApplication;)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0           #appInfo:Lcom/motorola/android/telephony/IccCardAppInfo;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 94
    iget-object v2, p0, Lcom/motorola/android/telephony/IccCardInfo;->iccid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IccCardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/telephony/IccCardInfo;->CardStateToInt(Lcom/android/internal/telephony/IccCardStatus$CardState;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IccCardInfo;->getUniversalPinState()Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/telephony/IccCardInfo;->PinStateToInt(Lcom/android/internal/telephony/IccCardStatus$PinState;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IccCardInfo;->getCdmaSubscriptionAppIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IccCardInfo;->getGsmUmtsSubscriptionAppIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IccCardInfo;->getImsSubscriptionAppIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IccCardInfo;->getNumApplications()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IccCardInfo;->getNumApplications()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 102
    invoke-virtual {p0, v1}, Lcom/motorola/android/telephony/IccCardInfo;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/telephony/IccCardAppInfo;

    move-object v0, v2

    check-cast v0, Lcom/motorola/android/telephony/IccCardAppInfo;

    .line 103
    .local v0, appInfo:Lcom/motorola/android/telephony/IccCardAppInfo;
    iget-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v2}, Lcom/motorola/android/telephony/IccCardAppInfo;->AppTypeToInt(Lcom/android/internal/telephony/IccCardApplication$AppType;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v0, v2}, Lcom/motorola/android/telephony/IccCardAppInfo;->AppStateToInt(Lcom/android/internal/telephony/IccCardApplication$AppState;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v2, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {p0, v2}, Lcom/motorola/android/telephony/IccCardInfo;->PinStateToInt(Lcom/android/internal/telephony/IccCardStatus$PinState;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {p0, v2}, Lcom/motorola/android/telephony/IccCardInfo;->PinStateToInt(Lcom/android/internal/telephony/IccCardStatus$PinState;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v2, v0, Lcom/motorola/android/telephony/IccCardAppInfo;->imsi:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v2, v0, Lcom/motorola/android/telephony/IccCardAppInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v0           #appInfo:Lcom/motorola/android/telephony/IccCardAppInfo;
    :cond_0
    return-void
.end method
