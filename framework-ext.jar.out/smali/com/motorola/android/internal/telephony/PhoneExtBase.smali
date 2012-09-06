.class public abstract Lcom/motorola/android/internal/telephony/PhoneExtBase;
.super Ljava/lang/Object;
.source "PhoneExtBase.java"

# interfaces
.implements Lcom/motorola/android/internal/telephony/PhoneExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/PhoneExtBase$SubsidyLockStatusObserver;
    }
.end annotation


# instance fields
.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private mSubsidyObserver:Lcom/motorola/android/internal/telephony/PhoneExtBase$SubsidyLockStatusObserver;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/PhoneExtBase;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/telephony/PhoneExtBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/PhoneExtBase;->handleSubsidyLockStatusChanged()V

    return-void
.end method

.method private handleSubsidyLockStatusChanged()V
    .locals 5

    .prologue
    .line 105
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneExtBase;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "modem_subsidy_lock"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 107
    .local v1, enabled:I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 108
    :cond_0
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 109
    .local v0, buf:Ljava/nio/ByteBuffer;
    const v2, 0xa0003

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 110
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 111
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 112
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneExtBase;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 114
    .end local v0           #buf:Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneExtBase;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "modem_subsidy_lock"

    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneExtBase;->mSubsidyObserver:Lcom/motorola/android/internal/telephony/PhoneExtBase$SubsidyLockStatusObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 51
    return-void
.end method

.method public activateIcc(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 88
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 89
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/PhoneExtBase;->getMsgCategory()I

    move-result v1

    const v2, 0xa0002

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 92
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneExtBase;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 93
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneExtBase;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneExtBase;->mSubsidyObserver:Lcom/motorola/android/internal/telephony/PhoneExtBase$SubsidyLockStatusObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 56
    return-void
.end method

.method public deactivateIcc(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 97
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/PhoneExtBase;->getMsgCategory()I

    move-result v1

    const v2, 0xa0001

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 99
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 101
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneExtBase;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 102
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/PhoneExtBase;->deactivate()V

    .line 40
    return-void
.end method

.method protected abstract getMsgCategory()I
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 60
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 62
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 63
    return-void
.end method

.method protected init(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 43
    new-instance v0, Lcom/motorola/android/internal/telephony/PhoneExtBase$SubsidyLockStatusObserver;

    invoke-direct {v0, p0, p1}, Lcom/motorola/android/internal/telephony/PhoneExtBase$SubsidyLockStatusObserver;-><init>(Lcom/motorola/android/internal/telephony/PhoneExtBase;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneExtBase;->mSubsidyObserver:Lcom/motorola/android/internal/telephony/PhoneExtBase$SubsidyLockStatusObserver;

    .line 44
    return-void
.end method

.method public isEsnChanged()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public selectNetwork(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .parameter "mode"
    .parameter "oper"
    .parameter "act"
    .parameter "response"

    .prologue
    .line 74
    invoke-static {p4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 76
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 77
    return-void
.end method

.method public setPreferredNetworkInfo(Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;Landroid/os/Message;)V
    .locals 3
    .parameter "info"
    .parameter "response"

    .prologue
    .line 67
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 69
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 70
    return-void
.end method
