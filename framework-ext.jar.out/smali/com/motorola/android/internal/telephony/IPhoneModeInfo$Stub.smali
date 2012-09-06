.class public abstract Lcom/motorola/android/internal/telephony/IPhoneModeInfo$Stub;
.super Landroid/os/Binder;
.source "IPhoneModeInfo.java"

# interfaces
.implements Lcom/motorola/android/internal/telephony/IPhoneModeInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/IPhoneModeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/IPhoneModeInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.internal.telephony.IPhoneModeInfo"

.field static final TRANSACTION_getAllModemIds:I = 0x1

.field static final TRANSACTION_getDefaultModemId:I = 0x2

.field static final TRANSACTION_getDefaultPhoneType:I = 0x3

.field static final TRANSACTION_getModemIdBySlot:I = 0x5

.field static final TRANSACTION_getPhoneTypeByModemId:I = 0x7

.field static final TRANSACTION_getSlotByModemId:I = 0x6

.field static final TRANSACTION_getSubscriptionInfo:I = 0x8

.field static final TRANSACTION_isDefaultModemId:I = 0x4

.field static final TRANSACTION_isModemEnabled:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.motorola.android.internal.telephony.IPhoneModeInfo"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/internal/telephony/IPhoneModeInfo;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.motorola.android.internal.telephony.IPhoneModeInfo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/internal/telephony/IPhoneModeInfo;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/motorola/android/internal/telephony/IPhoneModeInfo;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/motorola/android/internal/telephony/IPhoneModeInfo$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 47
    :sswitch_0
    const-string v2, "com.motorola.android.internal.telephony.IPhoneModeInfo"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "com.motorola.android.internal.telephony.IPhoneModeInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo$Stub;->getAllModemIds()[I

    move-result-object v1

    .line 54
    .local v1, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 60
    .end local v1           #_result:[I
    :sswitch_2
    const-string v2, "com.motorola.android.internal.telephony.IPhoneModeInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo$Stub;->getDefaultModemId()I

    move-result v1

    .line 62
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v1           #_result:I
    :sswitch_3
    const-string v2, "com.motorola.android.internal.telephony.IPhoneModeInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo$Stub;->getDefaultPhoneType()I

    move-result v1

    .line 70
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v1           #_result:I
    :sswitch_4
    const-string v4, "com.motorola.android.internal.telephony.IPhoneModeInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo$Stub;->isDefaultModemId(I)Z

    move-result v1

    .line 80
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_5
    const-string v2, "com.motorola.android.internal.telephony.IPhoneModeInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo$Stub;->getModemIdBySlot(I)I

    move-result v1

    .line 90
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_6
    const-string v2, "com.motorola.android.internal.telephony.IPhoneModeInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo$Stub;->getSlotByModemId(I)I

    move-result v1

    .line 100
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_7
    const-string v2, "com.motorola.android.internal.telephony.IPhoneModeInfo"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo$Stub;->getPhoneTypeByModemId(I)I

    move-result v1

    .line 110
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_8
    const-string v4, "com.motorola.android.internal.telephony.IPhoneModeInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo$Stub;->getSubscriptionInfo(I)Lcom/motorola/android/telephony/SubscriptionInfo;

    move-result-object v1

    .line 120
    .local v1, _result:Lcom/motorola/android/telephony/SubscriptionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {v1, p3, v3}, Lcom/motorola/android/telephony/SubscriptionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 126
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 132
    .end local v0           #_arg0:I
    .end local v1           #_result:Lcom/motorola/android/telephony/SubscriptionInfo;
    :sswitch_9
    const-string v4, "com.motorola.android.internal.telephony.IPhoneModeInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo$Stub;->isModemEnabled(I)Z

    move-result v1

    .line 136
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
