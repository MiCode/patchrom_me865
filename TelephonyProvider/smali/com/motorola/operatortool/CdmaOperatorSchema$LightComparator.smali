.class Lcom/motorola/operatortool/CdmaOperatorSchema$LightComparator;
.super Ljava/lang/Object;
.source "CdmaOperatorSchema.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/operatortool/CdmaOperatorSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/operatortool/CdmaOperatorSchema;


# direct methods
.method private constructor <init>(Lcom/motorola/operatortool/CdmaOperatorSchema;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/motorola/operatortool/CdmaOperatorSchema$LightComparator;->this$0:Lcom/motorola/operatortool/CdmaOperatorSchema;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/operatortool/CdmaOperatorSchema;Lcom/motorola/operatortool/CdmaOperatorSchema$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/motorola/operatortool/CdmaOperatorSchema$LightComparator;-><init>(Lcom/motorola/operatortool/CdmaOperatorSchema;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v3, 0x1

    .line 329
    check-cast p1, [Ljava/lang/String;

    .end local p1
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 330
    .local v0, strs1:[Ljava/lang/String;
    check-cast p2, [Ljava/lang/String;

    .end local p2
    move-object v1, p2

    check-cast v1, [Ljava/lang/String;

    .line 331
    .local v1, strs2:[Ljava/lang/String;
    aget-object v2, v0, v3

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method
