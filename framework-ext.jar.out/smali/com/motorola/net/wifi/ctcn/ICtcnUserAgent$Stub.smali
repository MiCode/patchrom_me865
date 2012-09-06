.class public abstract Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent$Stub;
.super Landroid/os/Binder;
.source "ICtcnUserAgent.java"

# interfaces
.implements Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.net.wifi.ctcn.ICtcnUserAgent"

.field static final TRANSACTION_bye:I = 0x5

.field static final TRANSACTION_deregister:I = 0x6

.field static final TRANSACTION_getRegistrationInfo:I = 0x8

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_invite:I = 0x4

.field static final TRANSACTION_register:I = 0x3

.field static final TRANSACTION_setAccessNetInfo:I = 0x7

.field static final TRANSACTION_terminate:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.motorola.net.wifi.ctcn.ICtcnUserAgent"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.motorola.net.wifi.ctcn.ICtcnUserAgent"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "com.motorola.net.wifi.ctcn.ICtcnUserAgent"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.motorola.net.wifi.ctcn.ICtcnUserAgent"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    .line 56
    sget-object v7, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;

    .line 61
    .local v3, _arg3:Lcom/motorola/net/wifi/ctcn/AccessNetInfo;
    :goto_1
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent$Stub;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/net/wifi/ctcn/AccessNetInfo;)Z

    move-result v4

    .line 62
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 59
    .end local v3           #_arg3:Lcom/motorola/net/wifi/ctcn/AccessNetInfo;
    .end local v4           #_result:Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #_arg3:Lcom/motorola/net/wifi/ctcn/AccessNetInfo;
    goto :goto_1

    .line 68
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Lcom/motorola/net/wifi/ctcn/AccessNetInfo;
    :sswitch_2
    const-string v7, "com.motorola.net.wifi.ctcn.ICtcnUserAgent"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent$Stub;->terminate()Z

    move-result v4

    .line 70
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v4, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v4           #_result:Z
    :sswitch_3
    const-string v7, "com.motorola.net.wifi.ctcn.ICtcnUserAgent"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent$Stub;->register(Ljava/lang/String;)Z

    move-result v4

    .line 80
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v4, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_4
    const-string v7, "com.motorola.net.wifi.ctcn.ICtcnUserAgent"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent$Stub;->invite(Ljava/lang/String;)Z

    move-result v4

    .line 90
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v4, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_5
    const-string v7, "com.motorola.net.wifi.ctcn.ICtcnUserAgent"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent$Stub;->bye()Z

    move-result v4

    .line 98
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v4, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 104
    .end local v4           #_result:Z
    :sswitch_6
    const-string v7, "com.motorola.net.wifi.ctcn.ICtcnUserAgent"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent$Stub;->deregister()Z

    move-result v4

    .line 106
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v4, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v4           #_result:Z
    :sswitch_7
    const-string v5, "com.motorola.net.wifi.ctcn.ICtcnUserAgent"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 115
    sget-object v5, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;

    .line 120
    .local v0, _arg0:Lcom/motorola/net/wifi/ctcn/AccessNetInfo;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent$Stub;->setAccessNetInfo(Lcom/motorola/net/wifi/ctcn/AccessNetInfo;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 118
    .end local v0           #_arg0:Lcom/motorola/net/wifi/ctcn/AccessNetInfo;
    :cond_7
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/motorola/net/wifi/ctcn/AccessNetInfo;
    goto :goto_2

    .line 126
    .end local v0           #_arg0:Lcom/motorola/net/wifi/ctcn/AccessNetInfo;
    :sswitch_8
    const-string v7, "com.motorola.net.wifi.ctcn.ICtcnUserAgent"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent$Stub;->getRegistrationInfo()Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    move-result-object v4

    .line 128
    .local v4, _result:Lcom/motorola/net/wifi/ctcn/RegistrationInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v4, :cond_8

    .line 130
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    invoke-virtual {v4, p3, v6}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 134
    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
