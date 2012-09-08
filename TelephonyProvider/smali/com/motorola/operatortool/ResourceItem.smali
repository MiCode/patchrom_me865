.class public Lcom/motorola/operatortool/ResourceItem;
.super Ljava/lang/Object;
.source "ResourceItem.java"


# instance fields
.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "name"

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/motorola/operatortool/ResourceItem;->mId:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/motorola/operatortool/ResourceItem;->mName:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/motorola/operatortool/ResourceItem;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/motorola/operatortool/ResourceItem;->mName:Ljava/lang/String;

    return-object v0
.end method
