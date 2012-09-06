.class public Lcom/motorola/android/telephony/IccCardAppInfo;
.super Lcom/android/internal/telephony/IccCardApplication;
.source "IccCardAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/IccCardAppInfo$1;
    }
.end annotation


# instance fields
.field public imsi:Ljava/lang/String;

.field public operatorNumeric:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardApplication;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/motorola/android/telephony/IccCardAppInfo;->imsi:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/motorola/android/telephony/IccCardAppInfo;->operatorNumeric:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public AppStateToInt(Lcom/android/internal/telephony/IccCardApplication$AppState;)I
    .locals 3
    .parameter "state"

    .prologue
    .line 26
    sget-object v1, Lcom/motorola/android/telephony/IccCardAppInfo$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, iState:I
    :goto_0
    return v0

    .line 27
    .end local v0           #iState:I
    :pswitch_0
    const/4 v0, 0x0

    .restart local v0       #iState:I
    goto :goto_0

    .line 28
    .end local v0           #iState:I
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0       #iState:I
    goto :goto_0

    .line 29
    .end local v0           #iState:I
    :pswitch_2
    const/4 v0, 0x2

    .restart local v0       #iState:I
    goto :goto_0

    .line 30
    .end local v0           #iState:I
    :pswitch_3
    const/4 v0, 0x3

    .restart local v0       #iState:I
    goto :goto_0

    .line 31
    .end local v0           #iState:I
    :pswitch_4
    const/4 v0, 0x4

    .restart local v0       #iState:I
    goto :goto_0

    .line 32
    .end local v0           #iState:I
    :pswitch_5
    const/4 v0, 0x5

    .restart local v0       #iState:I
    goto :goto_0

    .line 26
    nop

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

.method public AppTypeToInt(Lcom/android/internal/telephony/IccCardApplication$AppType;)I
    .locals 3
    .parameter "type"

    .prologue
    .line 11
    sget-object v1, Lcom/motorola/android/telephony/IccCardAppInfo$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 19
    const/4 v0, 0x0

    .line 21
    .local v0, iType:I
    :goto_0
    return v0

    .line 12
    .end local v0           #iType:I
    :pswitch_0
    const/4 v0, 0x0

    .restart local v0       #iType:I
    goto :goto_0

    .line 13
    .end local v0           #iType:I
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0       #iType:I
    goto :goto_0

    .line 14
    .end local v0           #iType:I
    :pswitch_2
    const/4 v0, 0x2

    .restart local v0       #iType:I
    goto :goto_0

    .line 15
    .end local v0           #iType:I
    :pswitch_3
    const/4 v0, 0x3

    .restart local v0       #iType:I
    goto :goto_0

    .line 16
    .end local v0           #iType:I
    :pswitch_4
    const/4 v0, 0x4

    .restart local v0       #iType:I
    goto :goto_0

    .line 17
    .end local v0           #iType:I
    :pswitch_5
    const/4 v0, 0x5

    .restart local v0       #iType:I
    goto :goto_0

    .line 11
    nop

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
