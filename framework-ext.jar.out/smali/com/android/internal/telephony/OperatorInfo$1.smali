.class final Lcom/android/internal/telephony/OperatorInfo$1;
.super Ljava/lang/Object;
.source "OperatorInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/OperatorInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/OperatorInfo;
    .locals 6
    .parameter "in"

    .prologue
    const/4 v4, 0x1

    .line 152
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v4, :cond_0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/OperatorInfo$State;)V

    .line 158
    .local v0, opInfo:Lcom/android/internal/telephony/OperatorInfo;
    return-object v0

    .line 152
    .end local v0           #opInfo:Lcom/android/internal/telephony/OperatorInfo;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/OperatorInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/OperatorInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 162
    new-array v0, p1, [Lcom/android/internal/telephony/OperatorInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/OperatorInfo$1;->newArray(I)[Lcom/android/internal/telephony/OperatorInfo;

    move-result-object v0

    return-object v0
.end method
