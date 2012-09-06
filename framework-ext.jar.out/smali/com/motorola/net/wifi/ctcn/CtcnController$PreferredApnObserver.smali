.class Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;
.super Landroid/database/ContentObserver;
.source "CtcnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/net/wifi/ctcn/CtcnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferredApnObserver"
.end annotation


# instance fields
.field mLastId:I

.field final synthetic this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;


# direct methods
.method public constructor <init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V
    .locals 1
    .parameter

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    .line 1049
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1050
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;->getPreferredApnId()I

    move-result v0

    iput v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;->mLastId:I

    .line 1051
    return-void
.end method

.method private getPreferredApnId()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1072
    const-string v0, "Ctrler"

    const-string v1, "getPreferredApnId()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const/4 v8, -0x1

    .line 1075
    .local v8, id:I
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    #getter for: Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->access$400(Lcom/motorola/net/wifi/ctcn/CtcnController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/motorola/net/wifi/ctcn/CtcnController;->access$300()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1078
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1079
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1081
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1086
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 1087
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1089
    :cond_1
    return v8

    .line 1082
    :catch_0
    move-exception v7

    .line 1083
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "Ctrler"

    const-string v1, "read apn db fail"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 1055
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/motorola/net/wifi/ctcn/CtcnController;->mMMSApnRequested:Z

    .line 1056
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;->getPreferredApnId()I

    move-result v0

    .line 1057
    .local v0, id:I
    const-string v1, "Ctrler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreferredApnObserver.onChange() last ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;->mLastId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selfChange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;->mLastId:I

    if-eq v0, v1, :cond_0

    .line 1060
    iput v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;->mLastId:I

    .line 1066
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDefaultDataNetworkChanged:Z

    .line 1067
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const/16 v2, 0x7d5

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->sendEmptyMessage(I)Z

    .line 1069
    :cond_0
    return-void
.end method
