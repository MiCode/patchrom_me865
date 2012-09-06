.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# static fields
.field public static final CDMA:I = 0x1

.field public static final GSM:I = 0x0

.field public static final INTERNAL_FAILURE_IMS_NOT_INITIALIZED:I = 0x1

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_INTERNAL_FAILURE:I = 0x101

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field private static final RESULT_ERROR_MOT_BEGIN:I = 0xff

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final RESULT_ERROR_SMS_RESTRICTION:I = 0x100

.field public static final RESULT_ERROR_TEMPORARY_FAILURE:I = 0xff

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SmsManager"

.field private static final sInstance:Landroid/telephony/SmsManager;

.field private static sSecondaryInstance:Landroid/telephony/SmsManager;


# instance fields
.field private mIsDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Landroid/telephony/SmsManager;

    invoke-direct {v0}, Landroid/telephony/SmsManager;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SmsManager;->mIsDefault:Z

    .line 846
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "isDefault"

    .prologue
    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SmsManager;->mIsDefault:Z

    .line 849
    iput-boolean p1, p0, Landroid/telephony/SmsManager;->mIsDefault:Z

    .line 850
    return-void
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter "isDefault"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1141
    .local p0, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_1

    .line 1143
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1144
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1145
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 1147
    .local v1, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 1148
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6, p1}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BZ)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1150
    .local v4, sms:Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 1151
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    .end local v4           #sms:Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1156
    .end local v0           #count:I
    .end local v1           #data:Lcom/android/internal/telephony/SmsRawData;
    .end local v2           #i:I
    :cond_1
    return-object v3
.end method

.method public static getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 954
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getAllMessagesFromIcc(Z)Ljava/util/ArrayList;
    .locals 10
    .parameter "isDefault"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 959
    const/4 v5, 0x0

    .line 962
    .local v5, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    if-eqz p0, :cond_1

    :try_start_0
    const-string v7, "isms"

    :goto_0
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v4

    .line 964
    .local v4, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v4, :cond_2

    .line 965
    invoke-interface {v4}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf()Ljava/util/List;

    move-result-object v5

    .line 969
    if-eqz v5, :cond_2

    .line 971
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 973
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 974
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsRawData;

    .line 977
    .local v2, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v2, :cond_0

    .line 978
    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v0

    .line 980
    .local v0, ba:[B
    if-eqz v0, :cond_0

    .line 982
    const/4 v7, 0x0

    aget-byte v7, v0, v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 984
    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-byte v8, v0, v7

    .line 987
    const/16 v7, 0xaf

    new-array v6, v7, [B

    .line 991
    .local v6, temp:[B
    const/4 v7, 0x1

    const/4 v8, 0x0

    array-length v9, v6

    invoke-static {v0, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 993
    add-int/lit8 v7, v3, 0x1

    const/4 v8, 0x1

    invoke-interface {v4, v7, v8, v6}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z

    .line 973
    .end local v0           #ba:[B
    .end local v6           #temp:[B
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 962
    .end local v1           #count:I
    .end local v2           #data:Lcom/android/internal/telephony/SmsRawData;
    .end local v3           #i:I
    .end local v4           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_1
    const-string v7, "isms2"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1003
    :catch_0
    move-exception v7

    .line 1007
    :cond_2
    invoke-static {v5, p0}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v7

    return-object v7
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 819
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method public static getDefault(Z)Landroid/telephony/SmsManager;
    .locals 3
    .parameter "isDefault"

    .prologue
    .line 830
    if-eqz p0, :cond_0

    .line 831
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    .line 840
    :goto_0
    return-object v0

    .line 833
    :cond_0
    sget-object v0, Landroid/telephony/SmsManager;->sSecondaryInstance:Landroid/telephony/SmsManager;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 834
    const-class v1, Landroid/telephony/SmsManager;

    monitor-enter v1

    .line 835
    :try_start_0
    sget-object v0, Landroid/telephony/SmsManager;->sSecondaryInstance:Landroid/telephony/SmsManager;

    if-nez v0, :cond_1

    .line 836
    new-instance v0, Landroid/telephony/SmsManager;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/telephony/SmsManager;-><init>(Z)V

    sput-object v0, Landroid/telephony/SmsManager;->sSecondaryInstance:Landroid/telephony/SmsManager;

    .line 838
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    :cond_2
    sget-object v0, Landroid/telephony/SmsManager;->sSecondaryInstance:Landroid/telephony/SmsManager;

    goto :goto_0

    .line 838
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final getISms()Lcom/android/internal/telephony/ISms;
    .locals 1

    .prologue
    .line 1297
    iget-boolean v0, p0, Landroid/telephony/SmsManager;->mIsDefault:Z

    if-eqz v0, :cond_0

    const-string v0, "isms"

    :goto_0
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "isms2"

    goto :goto_0
.end method


# virtual methods
.method public SendSMSTPDU(Ljava/lang/String;[BILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "smsc"
    .parameter "tpdu"
    .parameter "tpduType"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 93
    if-nez p2, :cond_0

    .line 94
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid tpdu body"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 98
    :cond_0
    if-nez p3, :cond_2

    .line 100
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getISms()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 101
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_2

    .line 103
    const/4 v3, 0x0

    .line 104
    .local v3, smscAddr:[B
    if-eqz p1, :cond_1

    .line 105
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v3

    .line 107
    :cond_1
    invoke-interface {v1, v3, p2, p4, p5}, Lcom/android/internal/telephony/ISms;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    .end local v3           #smscAddr:[B
    :cond_2
    :goto_0
    const/4 v4, 0x1

    if-ne p3, v4, :cond_4

    .line 114
    invoke-static {p2}, Landroid/telephony/SmsMessage;->createFromRawCdmaPdu([B)[B

    move-result-object v2

    .line 116
    .local v2, privateCdmaPdu:[B
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getISms()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 117
    .restart local v1       #iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_4

    .line 119
    const/4 v3, 0x0

    .line 120
    .restart local v3       #smscAddr:[B
    if-eqz p1, :cond_3

    .line 121
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v3

    .line 123
    :cond_3
    invoke-interface {v1, v3, v2, p4, p5}, Lcom/android/internal/telephony/ISms;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    .end local v2           #privateCdmaPdu:[B
    .end local v3           #smscAddr:[B
    :cond_4
    :goto_1
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "SmsManager"

    const-string v5, "Failed to send the gsm messsage"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 125
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v2       #privateCdmaPdu:[B
    :catch_1
    move-exception v0

    .line 126
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v4, "SmsManager"

    const-string v5, "Failed to send the cdma messsage"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public SendStkSms(Ljava/lang/String;[BILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "smsc"
    .parameter "tpdu"
    .parameter "tpduType"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 163
    if-nez p2, :cond_0

    .line 164
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid tpdu body"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 167
    :cond_0
    if-nez p3, :cond_2

    .line 169
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getISms()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 170
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_2

    .line 171
    const/4 v2, 0x0

    .line 172
    .local v2, smscAddr:[B
    if-eqz p1, :cond_1

    .line 173
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    .line 174
    :cond_1
    invoke-interface {v1, v2, p2, p4, p5}, Lcom/android/internal/telephony/ISms;->sendStkSms([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    .end local v2           #smscAddr:[B
    :cond_2
    :goto_0
    const/4 v3, 0x1

    if-ne p3, v3, :cond_4

    .line 183
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getISms()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 184
    .restart local v1       #iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_4

    .line 185
    const/4 v2, 0x0

    .line 186
    .restart local v2       #smscAddr:[B
    if-eqz p1, :cond_3

    .line 187
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    .line 189
    :cond_3
    invoke-interface {v1, v2, p2, p4, p5}, Lcom/android/internal/telephony/ISms;->sendRawCdmaPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    .end local v2           #smscAddr:[B
    :cond_4
    :goto_1
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "SmsManager"

    const-string v4, "Failed to send the gsm messsage"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 191
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 192
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v3, "SmsManager"

    const-string v4, "Failed to send the cdma messsage"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public copyMessageToIcc([B[BI)Z
    .locals 4
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 866
    const/4 v1, 0x0

    .line 869
    .local v1, success:Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getISms()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 870
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 871
    invoke-interface {v0, p3, p2, p1}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEf(I[B[B)Z

    move-result v1

    .line 874
    if-nez v1, :cond_0

    .line 875
    const-string v2, "SmsManager"

    const-string v3, "copyMessageToIcc - failed "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 880
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 4
    .parameter "messageIndex"

    .prologue
    .line 899
    const/4 v2, 0x0

    .line 900
    .local v2, success:Z
    const/16 v3, 0xaf

    new-array v1, v3, [B

    .line 901
    .local v1, pdu:[B
    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 904
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getISms()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 905
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 906
    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, v1}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 912
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 908
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public disableCellBroadcast(I)Z
    .locals 3
    .parameter "messageIdentifier"

    .prologue
    .line 1056
    const/4 v1, 0x0

    .line 1059
    .local v1, success:Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getISms()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1060
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1061
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->disableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1067
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1063
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 3
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 1118
    const/4 v1, 0x0

    .line 1121
    .local v1, success:Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getISms()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1122
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1123
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1129
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1125
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    iget-boolean v0, p0, Landroid/telephony/SmsManager;->mIsDefault:Z

    invoke-static {p1, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    iget-boolean v0, p0, Landroid/telephony/SmsManager;->mIsDefault:Z

    invoke-static {p1, p2, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessage(Ljava/lang/String;ZZZLjava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "text"
    .parameter "ifSupportNationalTable"
    .parameter "ifSupportLockingShiftTable"
    .parameter "useOnly7bit"
    .parameter "language"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    iget-boolean v5, p0, Landroid/telephony/SmsManager;->mIsDefault:Z

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;ZZZLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public enableCellBroadcast(I)Z
    .locals 3
    .parameter "messageIdentifier"

    .prologue
    .line 1026
    const/4 v1, 0x0

    .line 1029
    .local v1, success:Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getISms()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1030
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1031
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->enableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1037
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1033
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 3
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 1087
    const/4 v1, 0x0

    .line 1090
    .local v1, success:Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getISms()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1091
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1092
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1098
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1094
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getMessagesCapacityFromIcc()I
    .locals 4

    .prologue
    .line 1280
    const/4 v2, 0x0

    .line 1281
    .local v2, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    const/4 v0, 0x0

    .line 1284
    .local v0, count:I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getISms()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1285
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1286
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf()Ljava/util/List;

    move-result-object v2

    .line 1287
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1291
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1289
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;BBBB[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "firstOctet"
    .parameter "cmdType"
    .parameter "protocolId"
    .parameter "msgNumber"
    .parameter "cmdData"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 1269
    return-void
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "originationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const v2, 0xffff

    .line 792
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 796
    :cond_0
    if-eqz p5, :cond_1

    array-length v1, p5

    if-nez v1, :cond_2

    .line 797
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 801
    :cond_2
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getISms()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 802
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 803
    and-int v3, p3, v2

    and-int v4, p4, v2

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendDataFromPort(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 806
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 737
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 741
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_2

    .line 742
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 746
    :cond_2
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getISms()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 747
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 748
    const v1, 0xffff

    and-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 751
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    .line 416
    .local v6, cbNumber:Ljava/lang/String;
    const/4 v7, 0x0

    .line 418
    .local v7, priority:I
    const/4 v8, -0x1

    .line 419
    .local v8, encodingMethod:I
    const/4 v9, 0x0

    .local v9, language:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 420
    invoke-virtual/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)V

    .line 422
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 10
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "cbNumber"
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v8, -0x1

    .line 460
    .local v8, encodingMethod:I
    const/4 v9, 0x0

    .local v9, language:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 461
    invoke-virtual/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)V

    .line 463
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)V
    .locals 21
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "cbNumber"
    .parameter "priority"
    .parameter "encodingMethod"
    .parameter "language"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 509
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 510
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 512
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 513
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 524
    :cond_2
    const-string v2, "ro.telephony.gsm-routes-us-smsc"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/telephony/SmsManager;->mIsDefault:Z

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getDefault(Z)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/telephony/SmsManager;->mIsDefault:Z

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getDefault(Z)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/telephony/SmsManager;->mIsDefault:Z

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getDefault(Z)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "20404"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 529
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_6

    .line 533
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 534
    .local v20, part:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v19, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 536
    new-instance v5, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 537
    .local v5, newParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    const/4 v6, 0x0

    .line 540
    .local v6, newsentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 541
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #newsentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v2, 0x1

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 542
    .restart local v6       #newsentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_3
    const/4 v7, 0x0

    .line 545
    .local v7, newdeliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 546
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #newdeliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v2, 0x1

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 547
    .restart local v7       #newdeliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    .line 549
    invoke-virtual/range {v2 .. v11}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;IILjava/lang/String;)V

    .line 529
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 559
    .end local v5           #newParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #newsentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v7           #newdeliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v19           #i:I
    .end local v20           #part:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    .line 561
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/telephony/SmsManager;->getISms()Lcom/android/internal/telephony/ISms;

    move-result-object v8

    .line 562
    .local v8, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v8, :cond_6

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move-object/from16 v17, p9

    .line 565
    invoke-interface/range {v8 .. v17}, Lcom/android/internal/telephony/ISms;->sendMultipartTextWithSenderData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    .end local v8           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_6
    :goto_1
    return-void

    .line 574
    :cond_7
    const/4 v13, 0x0

    .line 575
    .local v13, sentIntent:Landroid/app/PendingIntent;
    const/4 v14, 0x0

    .line 576
    .local v14, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_8

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 577
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    check-cast v13, Landroid/app/PendingIntent;

    .line 579
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    :cond_8
    if-eqz p5, :cond_9

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 580
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 584
    .restart local v14       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move-object/from16 v18, p9

    invoke-virtual/range {v9 .. v18}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_1

    .line 570
    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 230
    const/4 v6, 0x0

    .line 231
    .local v6, cbNumber:Ljava/lang/String;
    const/4 v7, 0x0

    .line 233
    .local v7, priority:I
    const/4 v8, -0x1

    .line 234
    .local v8, encodingMethod:I
    const/4 v9, 0x0

    .local v9, language:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 235
    invoke-virtual/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;)V

    .line 237
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 10
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    .line 267
    const/4 v8, -0x1

    .line 268
    .local v8, encodingMethod:I
    const/4 v9, 0x0

    .local v9, language:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 269
    invoke-virtual/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;)V

    .line 271
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;)V
    .locals 11
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "cbNumber"
    .parameter "priority"
    .parameter "encodingMethod"
    .parameter "language"

    .prologue
    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getISms()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 318
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 320
    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ISms;->sendTextWithSenderData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v10

    .line 327
    .local v10, ex:Landroid/os/RemoteException;
    const-string v1, "SmsManager"

    const-string v2, "Failed to send the messsage"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendTextMessageMore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 10
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    .line 631
    const/4 v8, -0x1

    .line 632
    .local v8, encodingMethod:I
    const/4 v9, 0x0

    .local v9, language:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 634
    invoke-virtual/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendTextMessageMore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;)V

    .line 637
    return-void
.end method

.method public sendTextMessageMore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;)V
    .locals 11
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "cbNumber"
    .parameter "priority"
    .parameter "encodingMethod"
    .parameter "language"

    .prologue
    .line 684
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 687
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 693
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getISms()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 694
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 695
    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ISms;->sendTextMore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 699
    :catch_0
    move-exception v10

    .line 700
    .local v10, ex:Landroid/os/RemoteException;
    const-string v1, "SmsManager"

    const-string v2, "exception:"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 3
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    .line 930
    const/4 v1, 0x0

    .line 933
    .local v1, success:Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getISms()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 934
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 935
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 941
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 937
    :catch_0
    move-exception v2

    goto :goto_0
.end method
