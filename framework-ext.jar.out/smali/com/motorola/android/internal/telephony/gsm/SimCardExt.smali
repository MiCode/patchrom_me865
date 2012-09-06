.class public Lcom/motorola/android/internal/telephony/gsm/SimCardExt;
.super Ljava/lang/Object;
.source "SimCardExt.java"

# interfaces
.implements Lcom/motorola/android/internal/telephony/IccCardExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/gsm/SimCardExt$2;
    }
.end annotation


# static fields
.field private static final EVENT_GET_ICCLOCK_RETRY_DONE:I = 0x1


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "ci"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/gsm/SimCardExt$1;-><init>(Lcom/motorola/android/internal/telephony/gsm/SimCardExt;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->myHandler:Landroid/os/Handler;

    .line 33
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/gsm/SimCardExt$1;-><init>(Lcom/motorola/android/internal/telephony/gsm/SimCardExt;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->myHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 30
    return-void
.end method

.method private getPhoneType()I
    .locals 6

    .prologue
    .line 114
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v4, :cond_1

    .line 115
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v1

    .line 116
    .local v1, modemConfigManager:Lcom/motorola/android/internal/telephony/ModemConfigManager;
    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfos()[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v3

    .line 118
    .local v3, modemInfos:[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    if-eqz v3, :cond_1

    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 120
    aget-object v2, v3, v0

    .line 121
    .local v2, modemInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getRIL()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-ne v4, v5, :cond_0

    .line 122
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getActivePhoneType()I

    move-result v4

    .line 128
    .end local v0           #i:I
    .end local v1           #modemConfigManager:Lcom/motorola/android/internal/telephony/ModemConfigManager;
    .end local v2           #modemInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .end local v3           #modemInfos:[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :goto_1
    return v4

    .line 119
    .restart local v0       #i:I
    .restart local v1       #modemConfigManager:Lcom/motorola/android/internal/telephony/ModemConfigManager;
    .restart local v2       #modemInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .restart local v3       #modemInfos:[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v0           #i:I
    .end local v1           #modemConfigManager:Lcom/motorola/android/internal/telephony/ModemConfigManager;
    .end local v2           #modemInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .end local v3           #modemInfos:[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getIccLockRetryAttemps(Lcom/android/internal/telephony/IccCard$PinType;Landroid/os/Message;)V
    .locals 7
    .parameter "type"
    .parameter "result"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 37
    const/4 v2, 0x1

    .line 38
    .local v2, valid_req:Z
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 39
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->getPhoneType()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 40
    const v3, 0x20a0005

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 44
    :goto_0
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 45
    sget-object v3, Lcom/motorola/android/internal/telephony/gsm/SimCardExt$2;->$SwitchMap$com$android$internal$telephony$IccCard$PinType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$PinType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 65
    const/4 v2, 0x0

    .line 69
    :goto_1
    if-eqz v2, :cond_3

    .line 70
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->myHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 71
    .local v1, callback:Landroid/os/Message;
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_2

    .line 72
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 81
    .end local v1           #callback:Landroid/os/Message;
    :cond_0
    :goto_2
    return-void

    .line 42
    :cond_1
    const v3, 0x10a0005

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 47
    :pswitch_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 50
    :pswitch_1
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 53
    :pswitch_2
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 56
    :pswitch_3
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 59
    :pswitch_4
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 62
    :pswitch_5
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 73
    .restart local v1       #callback:Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_2

    .line 77
    .end local v1           #callback:Landroid/os/Message;
    :cond_3
    const/4 v3, 0x0

    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 79
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 45
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
