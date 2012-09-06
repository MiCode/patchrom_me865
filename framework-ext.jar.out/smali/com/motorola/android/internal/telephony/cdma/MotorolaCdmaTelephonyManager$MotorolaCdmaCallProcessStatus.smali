.class Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;
.super Ljava/lang/Object;
.source "MotorolaCdmaTelephonyManager.java"

# interfaces
.implements Lcom/motorola/android/telephony/cdma/CdmaCallProcessStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MotorolaCdmaCallProcessStatus"
.end annotation


# instance fields
.field activePilotCount:I

.field band:I

.field bestActivePilot:I

.field bestActiveStrength:I

.field bestNeighborPilot:I

.field bestNeighborStrength:I

.field callCounter:I

.field candPilotCount:I

.field channel:I

.field cpState:I

.field droppedCallCounter:I

.field fer:I

.field is2000System:B

.field lastCallIndicator:I

.field lnaStatus:I

.field neighborPilotCount:I

.field nid:I

.field rssi:I

.field sCallCounter:I

.field serviceOption:I

.field sid:I

.field txPower:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 360
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivePilotCount()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->activePilotCount:I

    return v0
.end method

.method public getBestActivePilot()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->bestActivePilot:I

    return v0
.end method

.method public getBestActiveStrength()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->bestActiveStrength:I

    return v0
.end method

.method public getBestNeighborPilot()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->bestNeighborPilot:I

    return v0
.end method

.method public getBestNeighborStrength()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->bestNeighborStrength:I

    return v0
.end method

.method public getCandPilotCount()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->candPilotCount:I

    return v0
.end method

.method public getFer()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->fer:I

    return v0
.end method

.method public getNeighborPilotCount()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->neighborPilotCount:I

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->nid:I

    return v0
.end method

.method public getRfChannel()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->channel:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->rssi:I

    return v0
.end method

.method public getSystemId()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->sid:I

    return v0
.end method

.method public getTxPower()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->txPower:I

    return v0
.end method
