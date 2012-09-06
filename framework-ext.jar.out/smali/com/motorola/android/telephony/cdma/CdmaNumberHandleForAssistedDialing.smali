.class public final Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;
.super Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;
.source "CdmaNumberHandleForAssistedDialing.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "slotId"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;-><init>(I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getLastNBPCDStatus()Z
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->getLastNBPCDStatus()Z

    move-result v0

    return v0
.end method

.method protected isNBPCDAllowed()Z
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed()Z

    move-result v0

    return v0
.end method
