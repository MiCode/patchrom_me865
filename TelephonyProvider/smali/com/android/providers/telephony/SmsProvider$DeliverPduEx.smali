.class public Lcom/android/providers/telephony/SmsProvider$DeliverPduEx;
.super Landroid/telephony/SmsMessage$DeliverPdu;
.source "SmsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/SmsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeliverPduEx"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;)V
    .locals 0
    .parameter "spb"

    .prologue
    .line 1729
    invoke-direct {p0, p1}, Landroid/telephony/SmsMessage$DeliverPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;)V

    .line 1730
    return-void
.end method


# virtual methods
.method public getDeliverPdu()Landroid/telephony/SmsMessage$DeliverPdu;
    .locals 0

    .prologue
    .line 1732
    return-object p0
.end method
