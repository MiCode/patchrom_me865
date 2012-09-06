.class public Lcom/motorola/android/provider/GsmOperator;
.super Ljava/lang/Object;
.source "GsmOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/provider/GsmOperator$GsmOperatorInfoTable;,
        Lcom/motorola/android/provider/GsmOperator$MccMnc;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "gsm_operator"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final mOperatorCoulumns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const-string v0, "content://gsm_operator"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/GsmOperator;->CONTENT_URI:Landroid/net/Uri;

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OPERATOR_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "OPERATOR_LONG_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LANGUAGE_SUPPORT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IGNORE_SPN"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "INTERNATIONAL_ROAMING_CALLBACK"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ROAMING_SPN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ROAMING_OPERATOR_ID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method
