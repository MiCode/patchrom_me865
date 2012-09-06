.class Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;
.super Ljava/lang/Object;
.source "CtcnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/net/wifi/ctcn/CtcnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Apn"
.end annotation


# instance fields
.field public apn:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public port:Ljava/lang/String;

.field public proxy:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

.field public types:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 966
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 967
    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->apn:Ljava/lang/String;

    .line 968
    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->user:Ljava/lang/String;

    .line 969
    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->password:Ljava/lang/String;

    .line 970
    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->proxy:Ljava/lang/String;

    .line 971
    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->port:Ljava/lang/String;

    .line 972
    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->types:Ljava/lang/String;

    .line 973
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 989
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    if-nez v2, :cond_1

    .line 993
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 992
    check-cast v0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    .line 993
    .local v0, other:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->apn:Ljava/lang/String;

    iget-object v3, v0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->apn:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->user:Ljava/lang/String;

    iget-object v3, v0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->user:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->password:Ljava/lang/String;

    iget-object v3, v0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->password:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->proxy:Ljava/lang/String;

    iget-object v3, v0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->proxy:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->port:Ljava/lang/String;

    iget-object v3, v0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->port:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->types:Ljava/lang/String;

    iget-object v3, v0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->types:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 977
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 978
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "apn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", password:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", proxy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->proxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->port:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", types:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->types:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 984
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
