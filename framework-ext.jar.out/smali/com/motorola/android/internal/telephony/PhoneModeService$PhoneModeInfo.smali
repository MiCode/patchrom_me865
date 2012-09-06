.class Lcom/motorola/android/internal/telephony/PhoneModeService$PhoneModeInfo;
.super Lcom/motorola/android/internal/telephony/IPhoneModeInfo$Stub;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/PhoneModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneModeInfo"
.end annotation


# instance fields
.field private mService:Lcom/motorola/android/internal/telephony/PhoneModeService;

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/PhoneModeService;Lcom/motorola/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .parameter
    .parameter "service"

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$PhoneModeInfo;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo$Stub;-><init>()V

    .line 1085
    iput-object p2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$PhoneModeInfo;->mService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    .line 1086
    return-void
.end method


# virtual methods
.method public getAllModemIds()[I
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$PhoneModeInfo;->mService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->getAllModemIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getDefaultModemId()I
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$PhoneModeInfo;->mService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->getDefaultModemId()I

    move-result v0

    return v0
.end method

.method public getDefaultPhoneType()I
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$PhoneModeInfo;->mService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->getDefaultPhoneType()I

    move-result v0

    return v0
.end method

.method public getModemIdBySlot(I)I
    .locals 1
    .parameter "slot"

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$PhoneModeInfo;->mService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->getModemIdBySlot(I)I

    move-result v0

    return v0
.end method

.method public getPhoneTypeByModemId(I)I
    .locals 2
    .parameter "modem"

    .prologue
    .line 1120
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$PhoneModeInfo;->mService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->getPhoneByModemId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1121
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 1122
    const/4 v1, 0x0

    .line 1124
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    goto :goto_0
.end method

.method public getSlotByModemId(I)I
    .locals 1
    .parameter "modem"

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$PhoneModeInfo;->mService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->getSlotByModemId(I)I

    move-result v0

    return v0
.end method

.method public getSubscriptionInfo(I)Lcom/motorola/android/telephony/SubscriptionInfo;
    .locals 3
    .parameter "modem"

    .prologue
    .line 1130
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$1900()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$PhoneModeInfo;->this$0:Lcom/motorola/android/internal/telephony/PhoneModeService;

    const/16 v1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #calls: Lcom/motorola/android/internal/telephony/PhoneModeService;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->access$2000(Lcom/motorola/android/internal/telephony/PhoneModeService;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/telephony/SubscriptionInfo;

    .line 1134
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$PhoneModeInfo;->mService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->getSubscriptionInfo(I)Lcom/motorola/android/telephony/SubscriptionInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public isDefaultModemId(I)Z
    .locals 1
    .parameter "modem"

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$PhoneModeInfo;->mService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->isDefaultModemId(I)Z

    move-result v0

    return v0
.end method

.method public isModemEnabled(I)Z
    .locals 1
    .parameter "modem"

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService$PhoneModeInfo;->mService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->isModemEnabled(I)Z

    move-result v0

    return v0
.end method
