.class public abstract Landroid/telephony/CellLocation;
.super Ljava/lang/Object;
.source "CellLocation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmpty()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/telephony/CellLocation;->getEmpty(Z)Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public static getEmpty(Z)Landroid/telephony/CellLocation;
    .locals 2
    .parameter "isDefault"

    .prologue
    .line 128
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getDefault(Z)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 129
    .local v0, manager:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 135
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 129
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    goto :goto_0

    .line 131
    :pswitch_0
    new-instance v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v1}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    goto :goto_1

    .line 133
    :pswitch_1
    new-instance v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v1}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    goto :goto_1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;Z)Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;Z)Landroid/telephony/CellLocation;
    .locals 2
    .parameter "bundle"
    .parameter "isDefault"

    .prologue
    .line 89
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getDefault(Z)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 90
    .local v0, manager:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 96
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 90
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    goto :goto_0

    .line 92
    :pswitch_0
    new-instance v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v1, p0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    .line 94
    :pswitch_1
    new-instance v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v1, p0}, Landroid/telephony/gsm/GsmCellLocation;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static requestLocationUpdate()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/telephony/CellLocation;->requestLocationUpdate(Z)V

    .line 43
    return-void
.end method

.method public static requestLocationUpdate(Z)V
    .locals 2
    .parameter "isDefault"

    .prologue
    .line 53
    if-eqz p0, :cond_1

    :try_start_0
    const-string v1, "phone"

    :goto_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 55
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V

    .line 61
    .end local v0           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_1
    return-void

    .line 53
    :cond_1
    const-string v1, "phone2"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public abstract fillInNotifierBundle(Landroid/os/Bundle;)V
.end method

.method public abstract isEmpty()Z
.end method
