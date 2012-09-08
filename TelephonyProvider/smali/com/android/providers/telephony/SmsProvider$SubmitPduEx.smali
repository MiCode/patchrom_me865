.class public Lcom/android/providers/telephony/SmsProvider$SubmitPduEx;
.super Landroid/telephony/SmsMessage$SubmitPdu;
.source "SmsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/SmsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitPduEx"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V
    .locals 0
    .parameter "spb"

    .prologue
    .line 1764
    invoke-direct {p0, p1}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    .line 1765
    return-void
.end method


# virtual methods
.method public getSubmitPdu()Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 0

    .prologue
    .line 1767
    return-object p0
.end method
