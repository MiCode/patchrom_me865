.class public abstract Landroid/content/ContentProviderNative;
.super Landroid/os/Binder;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentProvider"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {p0, p0, v0}, Landroid/content/ContentProviderNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .locals 2
    .parameter "obj"

    .prologue
    .line 57
    if-nez p0, :cond_1

    .line 58
    const/4 v0, 0x0

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    const-string v1, "android.content.IContentProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    .line 62
    .local v0, in:Landroid/content/IContentProvider;
    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/content/ContentProviderProxy;

    .end local v0           #in:Landroid/content/IContentProvider;
    invoke-direct {v0, p0}, Landroid/content/ContentProviderProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 312
    return-object p0
.end method

.method public abstract getProviderName()Ljava/lang/String;
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 36
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
    .line 80
    packed-switch p1, :pswitch_data_0

    .line 307
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 83
    :pswitch_1
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 88
    .local v4, url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 89
    .local v22, num:I
    const/4 v5, 0x0

    .line 90
    .local v5, projection:[Ljava/lang/String;
    if-lez v22, :cond_0

    .line 91
    move/from16 v0, v22

    new-array v5, v0, [Ljava/lang/String;

    .line 92
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v16

    .line 92
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 98
    .end local v16           #i:I
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, selection:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 100
    const/4 v7, 0x0

    .line 101
    .local v7, selectionArgs:[Ljava/lang/String;
    if-lez v22, :cond_1

    .line 102
    move/from16 v0, v22

    new-array v7, v0, [Ljava/lang/String;

    .line 103
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v16

    .line 103
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 108
    .end local v16           #i:I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, sortOrder:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v24

    .line 111
    .local v24, observer:Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .local v31, token:I
    move-object/from16 v3, p0

    .line 113
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderNative;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 114
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_3

    .line 115
    new-instance v9, Landroid/database/CursorToBulkCursorAdaptor;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderNative;->getProviderName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-direct {v9, v13, v0, v1, v3}, Landroid/database/CursorToBulkCursorAdaptor;-><init>(Landroid/database/Cursor;Landroid/database/IContentObserver;ILjava/lang/String;)V

    .line 119
    .local v9, adaptor:Landroid/database/CursorToBulkCursorAdaptor;
    invoke-virtual {v9}, Landroid/database/CursorToBulkCursorAdaptor;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 120
    .local v11, binder:Landroid/os/IBinder;
    invoke-virtual {v9}, Landroid/database/CursorToBulkCursorAdaptor;->count()I

    move-result v12

    .line 121
    .local v12, count:I
    invoke-virtual {v9}, Landroid/database/CursorToBulkCursorAdaptor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/database/BulkCursorToCursorAdaptor;->findRowIdColumnIndex([Ljava/lang/String;)I

    move-result v17

    .line 123
    .local v17, index:I
    invoke-virtual {v9}, Landroid/database/CursorToBulkCursorAdaptor;->getWantsAllOnMoveCalls()Z

    move-result v35

    .line 125
    .local v35, wantsAllOnMoveCalls:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 127
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    if-eqz v35, :cond_2

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    .end local v9           #adaptor:Landroid/database/CursorToBulkCursorAdaptor;
    .end local v11           #binder:Landroid/os/IBinder;
    .end local v12           #count:I
    .end local v17           #index:I
    .end local v35           #wantsAllOnMoveCalls:Z
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 129
    .restart local v9       #adaptor:Landroid/database/CursorToBulkCursorAdaptor;
    .restart local v11       #binder:Landroid/os/IBinder;
    .restart local v12       #count:I
    .restart local v17       #index:I
    .restart local v35       #wantsAllOnMoveCalls:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 131
    .end local v9           #adaptor:Landroid/database/CursorToBulkCursorAdaptor;
    .end local v11           #binder:Landroid/os/IBinder;
    .end local v12           #count:I
    .end local v17           #index:I
    .end local v35           #wantsAllOnMoveCalls:Z
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 302
    .end local v4           #url:Landroid/net/Uri;
    .end local v5           #projection:[Ljava/lang/String;
    .end local v6           #selection:Ljava/lang/String;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v8           #sortOrder:Ljava/lang/String;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v22           #num:I
    .end local v24           #observer:Landroid/database/IContentObserver;
    .end local v31           #token:I
    :catch_0
    move-exception v14

    .line 303
    .local v14, e:Ljava/lang/Exception;
    move-object/from16 v0, p3

    invoke-static {v0, v14}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 304
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 140
    .end local v14           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    const-string v3, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 142
    .restart local v4       #url:Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/ContentProviderNative;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v32

    .line 143
    .local v32, type:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 151
    .end local v4           #url:Landroid/net/Uri;
    .end local v32           #type:Ljava/lang/String;
    :pswitch_3
    const-string v3, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 153
    .restart local v4       #url:Landroid/net/Uri;
    sget-object v3, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/ContentValues;

    .line 155
    .local v34, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentProviderNative;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v27

    .line 156
    .local v27, out:Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 158
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 163
    .end local v4           #url:Landroid/net/Uri;
    .end local v27           #out:Landroid/net/Uri;
    .end local v34           #values:Landroid/content/ContentValues;
    :pswitch_4
    const-string v3, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 165
    .restart local v4       #url:Landroid/net/Uri;
    sget-object v3, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [Landroid/content/ContentValues;

    .line 167
    .local v34, values:[Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentProviderNative;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v12

    .line 168
    .restart local v12       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 175
    .end local v4           #url:Landroid/net/Uri;
    .end local v12           #count:I
    .end local v34           #values:[Landroid/content/ContentValues;
    :pswitch_5
    const-string v3, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 177
    .local v23, numOperations:I
    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    .local v25, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 180
    sget-object v3, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 179
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 182
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderNative;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v29

    .line 183
    .local v29, results:[Landroid/content/ContentProviderResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 185
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 190
    .end local v16           #i:I
    .end local v23           #numOperations:I
    .end local v25           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v29           #results:[Landroid/content/ContentProviderResult;
    :pswitch_6
    const-string v3, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 192
    .restart local v4       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 193
    .restart local v6       #selection:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 195
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/ContentProviderNative;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 197
    .restart local v12       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 204
    .end local v4           #url:Landroid/net/Uri;
    .end local v6           #selection:Ljava/lang/String;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v12           #count:I
    :pswitch_7
    const-string v3, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 206
    .restart local v4       #url:Landroid/net/Uri;
    sget-object v3, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/ContentValues;

    .line 207
    .local v34, values:Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 208
    .restart local v6       #selection:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 210
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1, v6, v7}, Landroid/content/ContentProviderNative;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 212
    .restart local v12       #count:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 219
    .end local v4           #url:Landroid/net/Uri;
    .end local v6           #selection:Ljava/lang/String;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v12           #count:I
    .end local v34           #values:Landroid/content/ContentValues;
    :pswitch_8
    const-string v3, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 221
    .restart local v4       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 224
    .local v21, mode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentProviderNative;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 225
    .local v15, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v15, :cond_5

    .line 227
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 233
    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 231
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 238
    .end local v4           #url:Landroid/net/Uri;
    .end local v15           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v21           #mode:Ljava/lang/String;
    :pswitch_9
    const-string v3, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 240
    .restart local v4       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 243
    .restart local v21       #mode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentProviderNative;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v15

    .line 244
    .local v15, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v15, :cond_6

    .line 246
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v3}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 252
    :goto_7
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 250
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 257
    .end local v4           #url:Landroid/net/Uri;
    .end local v15           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v21           #mode:Ljava/lang/String;
    :pswitch_a
    const-string v3, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 260
    .local v18, method:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 261
    .local v30, stringArg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v10

    .line 263
    .local v10, args:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2, v10}, Landroid/content/ContentProviderNative;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v28

    .line 265
    .local v28, responseBundle:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 267
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 272
    .end local v10           #args:Landroid/os/Bundle;
    .end local v18           #method:Ljava/lang/String;
    .end local v28           #responseBundle:Landroid/os/Bundle;
    .end local v30           #stringArg:Ljava/lang/String;
    :pswitch_b
    const-string v3, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 274
    .restart local v4       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 275
    .local v20, mimeTypeFilter:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentProviderNative;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 276
    .local v33, types:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 279
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 284
    .end local v4           #url:Landroid/net/Uri;
    .end local v20           #mimeTypeFilter:Ljava/lang/String;
    .end local v33           #types:[Ljava/lang/String;
    :pswitch_c
    const-string v3, "android.content.IContentProvider"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 286
    .restart local v4       #url:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 287
    .local v19, mimeType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v26

    .line 290
    .local v26, opts:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v26

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/ContentProviderNative;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v15

    .line 291
    .restart local v15       #fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v15, :cond_7

    .line 293
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v3}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 299
    :goto_8
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 297
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
