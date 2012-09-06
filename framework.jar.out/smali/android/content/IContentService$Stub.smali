.class public abstract Landroid/content/IContentService$Stub;
.super Landroid/os/Binder;
.source "IContentService.java"

# interfaces
.implements Landroid/content/IContentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IContentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IContentService"

.field static final TRANSACTION_addPeriodicSync:I = 0x9

.field static final TRANSACTION_addStatusChangeListener:I = 0x14

.field static final TRANSACTION_cancelSync:I = 0x5

.field static final TRANSACTION_getCurrentSyncs:I = 0x10

.field static final TRANSACTION_getIsSyncable:I = 0xb

.field static final TRANSACTION_getMasterSyncAutomatically:I = 0xe

.field static final TRANSACTION_getPeriodicSyncs:I = 0x8

.field static final TRANSACTION_getSyncAdapterTypes:I = 0x11

.field static final TRANSACTION_getSyncAutomatically:I = 0x6

.field static final TRANSACTION_getSyncStatus:I = 0x12

.field static final TRANSACTION_isSyncActive:I = 0xf

.field static final TRANSACTION_isSyncPending:I = 0x13

.field static final TRANSACTION_notifyChange:I = 0x3

.field static final TRANSACTION_registerContentObserver:I = 0x1

.field static final TRANSACTION_removePeriodicSync:I = 0xa

.field static final TRANSACTION_removeStatusChangeListener:I = 0x15

.field static final TRANSACTION_requestSync:I = 0x4

.field static final TRANSACTION_setIsSyncable:I = 0xc

.field static final TRANSACTION_setMasterSyncAutomatically:I = 0xd

.field static final TRANSACTION_setSyncAutomatically:I = 0x7

.field static final TRANSACTION_unregisterContentObserver:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.IContentService"

    invoke-virtual {p0, p0, v0}, Landroid/content/IContentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.content.IContentService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/IContentService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/content/IContentService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/content/IContentService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/IContentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 386
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 59
    .local v2, _arg0:Landroid/net/Uri;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 61
    .local v3, _arg1:Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v4

    .line 63
    .local v4, _arg2:Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 64
    .local v5, _arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/IContentService$Stub;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/4 v1, 0x1

    goto :goto_0

    .line 56
    .end local v2           #_arg0:Landroid/net/Uri;
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Landroid/database/IContentObserver;
    .end local v5           #_arg3:I
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/net/Uri;
    goto :goto_1

    .line 59
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 70
    .end local v2           #_arg0:Landroid/net/Uri;
    :sswitch_2
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v2

    .line 74
    .local v2, _arg0:Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 75
    .local v3, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->unregisterContentObserver(Landroid/database/IContentObserver;I)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    const/4 v1, 0x1

    goto :goto_0

    .line 81
    .end local v2           #_arg0:Landroid/database/IContentObserver;
    .end local v3           #_arg1:I
    :sswitch_3
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 90
    .local v2, _arg0:Landroid/net/Uri;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v3

    .line 92
    .local v3, _arg1:Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    .line 94
    .local v4, _arg2:Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v5, 0x1

    .line 96
    .local v5, _arg3:Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg4:I
    move-object/from16 v1, p0

    .line 97
    invoke-virtual/range {v1 .. v6}, Landroid/content/IContentService$Stub;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZI)V

    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 87
    .end local v2           #_arg0:Landroid/net/Uri;
    .end local v3           #_arg1:Landroid/database/IContentObserver;
    .end local v4           #_arg2:Z
    .end local v5           #_arg3:Z
    .end local v6           #_arg4:I
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/net/Uri;
    goto :goto_3

    .line 92
    .restart local v3       #_arg1:Landroid/database/IContentObserver;
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 94
    .restart local v4       #_arg2:Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    .line 103
    .end local v2           #_arg0:Landroid/net/Uri;
    .end local v3           #_arg1:Landroid/database/IContentObserver;
    .end local v4           #_arg2:Z
    :sswitch_4
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 106
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 112
    .local v2, _arg0:Landroid/accounts/Account;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 115
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 120
    .local v4, _arg2:Landroid/os/Bundle;
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/IContentService$Stub;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 109
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Landroid/os/Bundle;
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_6

    .line 118
    .restart local v3       #_arg1:Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    .restart local v4       #_arg2:Landroid/os/Bundle;
    goto :goto_7

    .line 126
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Landroid/os/Bundle;
    :sswitch_5
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 129
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 135
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .restart local v3       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 132
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_8

    .line 142
    .end local v2           #_arg0:Landroid/accounts/Account;
    :sswitch_6
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 145
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 151
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 152
    .restart local v3       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    .line 153
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v13, :cond_9

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 148
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:Z
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_9

    .line 154
    .restart local v3       #_arg1:Ljava/lang/String;
    .restart local v13       #_result:Z
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 159
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:Z
    :sswitch_7
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 162
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 168
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 170
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v4, 0x1

    .line 171
    .local v4, _arg2:Z
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/IContentService$Stub;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 165
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Z
    :cond_a
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_b

    .line 170
    .restart local v3       #_arg1:Ljava/lang/String;
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 177
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_8
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 180
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 186
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .restart local v3       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 188
    .local v14, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 190
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 183
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v14           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/PeriodicSync;>;"
    :cond_c
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_d

    .line 194
    .end local v2           #_arg0:Landroid/accounts/Account;
    :sswitch_9
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 197
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 203
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 205
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 206
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 212
    .local v4, _arg2:Landroid/os/Bundle;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .local v11, _arg3:J
    move-object/from16 v7, p0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    .line 213
    invoke-virtual/range {v7 .. v12}, Landroid/content/IContentService$Stub;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 200
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Landroid/os/Bundle;
    .end local v11           #_arg3:J
    :cond_d
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_e

    .line 209
    .restart local v3       #_arg1:Ljava/lang/String;
    :cond_e
    const/4 v4, 0x0

    .restart local v4       #_arg2:Landroid/os/Bundle;
    goto :goto_f

    .line 219
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Landroid/os/Bundle;
    :sswitch_a
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 222
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 228
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 230
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 231
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 236
    .restart local v4       #_arg2:Landroid/os/Bundle;
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/IContentService$Stub;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 225
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Landroid/os/Bundle;
    :cond_f
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_10

    .line 234
    .restart local v3       #_arg1:Ljava/lang/String;
    :cond_10
    const/4 v4, 0x0

    .restart local v4       #_arg2:Landroid/os/Bundle;
    goto :goto_11

    .line 242
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Landroid/os/Bundle;
    :sswitch_b
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 245
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 251
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 252
    .restart local v3       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v13

    .line 253
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 248
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:I
    :cond_11
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_12

    .line 259
    .end local v2           #_arg0:Landroid/accounts/Account;
    :sswitch_c
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 262
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 268
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 270
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 271
    .local v4, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/IContentService$Stub;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 265
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    :cond_12
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_13

    .line 277
    .end local v2           #_arg0:Landroid/accounts/Account;
    :sswitch_d
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v2, 0x1

    .line 280
    .local v2, _arg0:Z
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/IContentService$Stub;->setMasterSyncAutomatically(Z)V

    .line 281
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 279
    .end local v2           #_arg0:Z
    :cond_13
    const/4 v2, 0x0

    goto :goto_14

    .line 286
    :sswitch_e
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getMasterSyncAutomatically()Z

    move-result v13

    .line 288
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    if-eqz v13, :cond_14

    const/4 v1, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 289
    :cond_14
    const/4 v1, 0x0

    goto :goto_15

    .line 294
    .end local v13           #_result:Z
    :sswitch_f
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    .line 297
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 303
    .local v2, _arg0:Landroid/accounts/Account;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 304
    .restart local v3       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    .line 305
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    if-eqz v13, :cond_16

    const/4 v1, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 300
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:Z
    :cond_15
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_16

    .line 306
    .restart local v3       #_arg1:Ljava/lang/String;
    .restart local v13       #_result:Z
    :cond_16
    const/4 v1, 0x0

    goto :goto_17

    .line 311
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:Z
    :sswitch_10
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getCurrentSyncs()Ljava/util/List;

    move-result-object v15

    .line 313
    .local v15, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 315
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 319
    .end local v15           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    :sswitch_11
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v13

    .line 321
    .local v13, _result:[Landroid/content/SyncAdapterType;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 323
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 327
    .end local v13           #_result:[Landroid/content/SyncAdapterType;
    :sswitch_12
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    .line 330
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 336
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 337
    .restart local v3       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v13

    .line 338
    .local v13, _result:Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    if-eqz v13, :cond_18

    .line 340
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 346
    :goto_19
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 333
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:Landroid/content/SyncStatusInfo;
    :cond_17
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_18

    .line 344
    .restart local v3       #_arg1:Ljava/lang/String;
    .restart local v13       #_result:Landroid/content/SyncStatusInfo;
    :cond_18
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 350
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:Landroid/content/SyncStatusInfo;
    :sswitch_13
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    .line 353
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 359
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 360
    .restart local v3       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    .line 361
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v13, :cond_1a

    const/4 v1, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 356
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:Z
    :cond_19
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_1a

    .line 362
    .restart local v3       #_arg1:Ljava/lang/String;
    .restart local v13       #_result:Z
    :cond_1a
    const/4 v1, 0x0

    goto :goto_1b

    .line 367
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:Z
    :sswitch_14
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 371
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v3

    .line 372
    .local v3, _arg1:Landroid/content/ISyncStatusObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 378
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ISyncStatusObserver;
    :sswitch_15
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v2

    .line 381
    .local v2, _arg0:Landroid/content/ISyncStatusObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/IContentService$Stub;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V

    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 41
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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
