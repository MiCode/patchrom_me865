.class Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;
.super Landroid/database/AbstractCursor;
.source "OperatorDatabaseProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/OperatorDatabaseProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OperatorCursor"
.end annotation


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mRows:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/providers/telephony/OperatorDatabaseProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/telephony/OperatorDatabaseProvider;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter "columnNames"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p3, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    iput-object p1, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->this$0:Lcom/android/providers/telephony/OperatorDatabaseProvider;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 186
    array-length v0, p2

    .line 187
    .local v0, colCount:I
    iput-object p2, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mColumnNames:[Ljava/lang/String;

    .line 189
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 190
    .local v2, rowCount:I
    new-array v3, v2, [Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mRows:[Ljava/util/ArrayList;

    .line 192
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 193
    iget-object v4, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mRows:[Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    aput-object v3, v4, v1

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method public getBlob(I)[B
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mRows:[Ljava/util/ArrayList;

    array-length v0, v0

    return v0
.end method

.method public getDouble(I)D
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 245
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public getFloat(I)F
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 239
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    return v1
.end method

.method public getInt(I)I
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 227
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1
.end method

.method public getLong(I)J
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 233
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getShort(I)S
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 221
    .local v0, num:Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    return v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 215
    .local v0, cell:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
