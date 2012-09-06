.class public abstract Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;
.super Landroid/os/Binder;
.source "ISoundRecorderService.java"

# interfaces
.implements Lcom/motorola/soundrecorder/ISoundRecorderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/soundrecorder/ISoundRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/soundrecorder/ISoundRecorderService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.soundrecorder.ISoundRecorderService"

.field static final TRANSACTION_currentLowerLimit:I = 0xa

.field static final TRANSACTION_diskSpaceAvailable:I = 0x9

.field static final TRANSACTION_getMaxAmplitude:I = 0x7

.field static final TRANSACTION_getProgress:I = 0x5

.field static final TRANSACTION_getRemainingTime:I = 0x8

.field static final TRANSACTION_getSamplePath:I = 0xb

.field static final TRANSACTION_getState:I = 0x6

.field static final TRANSACTION_pauseRecording:I = 0x2

.field static final TRANSACTION_resumeRecording:I = 0x3

.field static final TRANSACTION_startRecording:I = 0x1

.field static final TRANSACTION_stopRecording:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/soundrecorder/ISoundRecorderService;
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
    const-string v1, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/soundrecorder/ISoundRecorderService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/motorola/soundrecorder/ISoundRecorderService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v9, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 42
    :sswitch_0
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 55
    .local v3, _arg2:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 57
    .local v5, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 58
    invoke-virtual/range {v0 .. v6}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->startRecording(ILjava/lang/String;JILjava/lang/String;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:J
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->pauseRecording()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 71
    :sswitch_3
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->resumeRecording()V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    :sswitch_4
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->stopRecording()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    :sswitch_5
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->getProgress()J

    move-result-wide v7

    .line 87
    .local v7, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 93
    .end local v7           #_result:J
    :sswitch_6
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->getState()I

    move-result v7

    .line 95
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v7           #_result:I
    :sswitch_7
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->getMaxAmplitude()I

    move-result v7

    .line 103
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 109
    .end local v7           #_result:I
    :sswitch_8
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->getRemainingTime(Ljava/lang/String;)J

    move-result-wide v7

    .line 113
    .local v7, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 119
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:J
    :sswitch_9
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->diskSpaceAvailable(Ljava/lang/String;)Z

    move-result v7

    .line 123
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v7, :cond_0

    move v0, v9

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 129
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_a
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->currentLowerLimit()I

    move-result v7

    .line 131
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v7           #_result:I
    :sswitch_b
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->getSamplePath()Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
