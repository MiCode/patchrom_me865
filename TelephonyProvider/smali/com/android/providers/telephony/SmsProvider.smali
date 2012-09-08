.class public Lcom/android/providers/telephony/SmsProvider;
.super Landroid/content/ContentProvider;
.source "SmsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/SmsProvider$SubmitPduEx;,
        Lcom/android/providers/telephony/SmsProvider$DeliverPduEx;
    }
.end annotation


# static fields
.field private static final CONTACT_QUERY_PROJECTION:[Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final ICC1_INDEX:I = 0x1

.field private static final ICC1_URI:Landroid/net/Uri; = null

.field private static final ICC2_INDEX:I = 0x2

.field private static final ICC2_URI:Landroid/net/Uri; = null

.field private static final ICC_CAPACITY_COLUMNS:[Ljava/lang/String; = null

.field private static final ICC_COLUMNS:[Ljava/lang/String; = null

.field private static final NOTIFICATION_URI:Landroid/net/Uri; = null

.field private static final ONE:Ljava/lang/Integer; = null

.field private static final PERSON_ID_COLUMN:I = 0x0

.field private static final SMS_ALL:I = 0x0

.field private static final SMS_ALL_ICC:I = 0x16

.field private static final SMS_ALL_ICC2:I = 0x1f

.field private static final SMS_ALL_ID:I = 0x1

.field private static final SMS_ATTACHMENT:I = 0x10

.field private static final SMS_ATTACHMENT_ID:I = 0x11

.field private static final SMS_CONVERSATIONS:I = 0xa

.field private static final SMS_CONVERSATIONS_ID:I = 0xb

.field private static final SMS_DRAFT:I = 0x6

.field private static final SMS_DRAFT_ID:I = 0x7

.field private static final SMS_FAILED:I = 0x18

.field private static final SMS_FAILED_ID:I = 0x19

.field private static final SMS_ICC:I = 0x17

.field private static final SMS_ICC2:I = 0x20

.field private static final SMS_ICC_CAPACITY:I = 0x1e

.field private static final SMS_INBOX:I = 0x2

.field private static final SMS_INBOX_ID:I = 0x3

.field private static final SMS_NEW_THREAD_ID:I = 0x12

.field private static final SMS_OUTBOX:I = 0x8

.field private static final SMS_OUTBOX_ID:I = 0x9

.field private static final SMS_QUERY_THREAD_ID:I = 0x13

.field private static final SMS_QUEUED:I = 0x1a

.field private static final SMS_RAW2_MESSAGE:I = 0x21

.field private static final SMS_RAW_MESSAGE:I = 0xf

.field private static final SMS_RETRY_PENDING:I = 0x1c

.field private static final SMS_RETRY_PENDING_ID:I = 0x1d

.field private static final SMS_SENT:I = 0x4

.field private static final SMS_SENT_ID:I = 0x5

.field private static final SMS_STATUS_ID:I = 0x14

.field private static final SMS_STATUS_PENDING:I = 0x15

.field private static final SMS_UNDELIVERED:I = 0x1b

.field private static final TABLE_MESSAGE_PENDING:Ljava/lang/String; = "message_pending"

.field private static final TABLE_RAW:Ljava/lang/String; = "raw"

.field private static final TABLE_RAW2:Ljava/lang/String; = "raw2"

.field static final TABLE_SMS:Ljava/lang/String; = "sms"

.field private static final TABLE_SR_PENDING:Ljava/lang/String; = "sr_pending"

.field private static final TABLE_WORDS:Ljava/lang/String; = "words"

.field private static final TAG:Ljava/lang/String; = "SmsProvider"

.field private static final VND_ANDROID_DIR_SMS:Ljava/lang/String; = "vnd.android.cursor.dir/sms"

.field private static final VND_ANDROID_SMS:Ljava/lang/String; = "vnd.android.cursor.item/sms"

.field private static final VND_ANDROID_SMSCHAT:Ljava/lang/String; = "vnd.android.cursor.item/sms-chat"

.field private static final sConversationProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIDProjection:[Ljava/lang/String;

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 76
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->NOTIFICATION_URI:Landroid/net/Uri;

    .line 78
    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ICC1_URI:Landroid/net/Uri;

    .line 79
    const-string v0, "content://sms/icc2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ICC2_URI:Landroid/net/Uri;

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ONE:Ljava/lang/Integer;

    .line 102
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "person"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->CONTACT_QUERY_PROJECTION:[Ljava/lang/String;

    .line 107
    const-string v0, "1"

    const-string v1, "debug.mot.extwmlog"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    .line 115
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "service_center_address"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "message_class"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "index_on_icc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_status_report"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "stack_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ICC_COLUMNS:[Ljava/lang/String;

    .line 139
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "capacity"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ICC_CAPACITY_COLUMNS:[Ljava/lang/String;

    .line 1595
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    .line 1597
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sIDProjection:[Ljava/lang/String;

    .line 1641
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 1645
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1646
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1647
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "inbox"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1648
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "inbox/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1649
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "sent"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1650
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "sent/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1651
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "draft"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1652
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "draft/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1653
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "outbox"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1654
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "outbox/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1655
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "undelivered"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1656
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "failed"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1657
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "failed/#"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1658
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "queued"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1659
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "conversations"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1660
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "conversations/*"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1661
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "raw"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1663
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "raw2"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1665
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "attachments"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1666
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "attachments/#"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1667
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "threadID"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1668
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "threadID/*"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1669
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "status/#"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1670
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "sr_pending"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1673
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "message_pending"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1674
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "message_pending/#"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1677
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "icc"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1678
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "icc/#"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1680
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "icc2"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1681
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "icc2/#"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1684
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "sim"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1685
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "sim/#"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1688
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v2, "icccapacity"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1692
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "snippet"

    const-string v2, "sms.body AS snippet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "thread_id"

    const-string v2, "sms.thread_id AS thread_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "msg_count"

    const-string v2, "groups.msg_count AS msg_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "delta"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 1762
    return-void
.end method

.method private constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V
    .locals 2
    .parameter "qb"
    .parameter "type"

    .prologue
    .line 527
    const-string v0, "sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 529
    if-eqz p2, :cond_0

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 532
    :cond_0
    return-void
.end method

.method private constructQueryForUndelivered(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 1
    .parameter "qb"

    .prologue
    .line 535
    const-string v0, "sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 537
    const-string v0, "(type=4 OR type=5 OR type=6)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 540
    return-void
.end method

.method private convertIccToSms(Landroid/telephony/SmsMessage;I)[Ljava/lang/Object;
    .locals 9
    .parameter "message"
    .parameter "id"

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x9

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 359
    const/16 v1, 0xe

    new-array v0, v1, [Ljava/lang/Object;

    .line 361
    .local v0, row:[Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 368
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatusOnSim()I

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatusOnSim()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 370
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 378
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 379
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 400
    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 404
    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatusOnSim()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 409
    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getIndexOnIcc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 410
    const/4 v1, 0x7

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isStatusReportMessage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 411
    const/16 v1, 0x8

    const-string v2, "sms"

    aput-object v2, v0, v1

    .line 416
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatusOnSim()I

    move-result v1

    if-eq v1, v4, :cond_1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatusOnSim()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 418
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    .line 426
    :goto_1
    const/16 v1, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 427
    const/16 v1, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 428
    const/16 v1, 0xc

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 432
    const/16 v1, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 436
    return-object v0

    .line 374
    :cond_2
    iget-object v1, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsMessageBase;->getRecipientAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0

    .line 419
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatusOnSim()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    .line 420
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    goto :goto_1

    .line 422
    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    goto :goto_1
.end method

.method private deleteMessageFromIcc(Ljava/lang/String;I)I
    .locals 8
    .parameter "messageIndexString"
    .parameter "cardIndex"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1404
    if-ne p2, v3, :cond_3

    .line 1405
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 1421
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1424
    .local v0, cr:Landroid/content/ContentResolver;
    if-ne p2, v3, :cond_2

    .line 1425
    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->ICC1_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1430
    :cond_1
    :goto_0
    return v2

    .line 1426
    :cond_2
    if-ne p2, v7, :cond_1

    .line 1427
    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->ICC2_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1408
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_3
    if-ne p2, v7, :cond_6

    .line 1410
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4}, Landroid/telephony/SmsManager;->getDefault(Z)Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 1421
    :cond_4
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1424
    .restart local v0       #cr:Landroid/content/ContentResolver;
    if-ne p2, v3, :cond_5

    .line 1425
    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->ICC1_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1426
    :cond_5
    if-ne p2, v7, :cond_1

    .line 1427
    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->ICC2_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1421
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_6
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1424
    .restart local v0       #cr:Landroid/content/ContentResolver;
    if-ne p2, v3, :cond_7

    .line 1425
    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->ICC1_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1426
    :cond_7
    if-ne p2, v7, :cond_1

    .line 1427
    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->ICC2_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1417
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 1418
    .local v1, exception:Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad SMS ICC ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1421
    .end local v1           #exception:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1424
    .restart local v0       #cr:Landroid/content/ContentResolver;
    if-ne p2, v3, :cond_9

    .line 1425
    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->ICC1_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1430
    :cond_8
    :goto_1
    throw v2

    .line 1426
    :cond_9
    if-ne p2, v7, :cond_8

    .line 1427
    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->ICC2_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method private getAllMessagesFromIcc(I)Landroid/database/Cursor;
    .locals 6
    .parameter "cardIndex"

    .prologue
    .line 480
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v4, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    .line 485
    invoke-static {}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v4

    .line 493
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 494
    .local v0, count:I
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/providers/telephony/SmsProvider;->ICC_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 495
    .local v1, cursor:Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 496
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SmsMessage;

    .line 497
    .local v3, message:Landroid/telephony/SmsMessage;
    if-eqz v3, :cond_1

    .line 498
    invoke-direct {p0, v3, v2}, Lcom/android/providers/telephony/SmsProvider;->convertIccToSms(Landroid/telephony/SmsMessage;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 495
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 486
    .end local v0           #count:I
    .end local v1           #cursor:Landroid/database/MatrixCursor;
    .end local v2           #i:I
    .end local v3           #message:Landroid/telephony/SmsMessage;
    :cond_2
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 488
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc(Z)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    .line 502
    .restart local v0       #count:I
    .restart local v1       #cursor:Landroid/database/MatrixCursor;
    .restart local v2       #i:I
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/android/providers/telephony/SmsProvider;->withIccNotificationUri(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v5

    return-object v5
.end method

.method private static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;Z)Landroid/telephony/SmsMessage$DeliverPdu;
    .locals 6
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"
    .parameter "isDefault"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1706
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 1707
    .local v0, defaultPhoneType:I
    if-eqz p4, :cond_2

    if-ne v5, v0, :cond_1

    .line 1711
    .local v1, isCdma:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 1712
    const-string v3, "SmsProvider"

    const-string v4, "getDeliverPdu cdma"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;

    move-result-object v2

    .line 1720
    .local v2, spb:Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
    :goto_1
    if-nez v2, :cond_4

    .line 1721
    const/4 v3, 0x0

    .line 1723
    :goto_2
    return-object v3

    .end local v1           #isCdma:Z
    .end local v2           #spb:Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
    :cond_1
    move v1, v3

    .line 1707
    goto :goto_0

    :cond_2
    if-ne v5, v0, :cond_0

    move v1, v3

    goto :goto_0

    .line 1716
    .restart local v1       #isCdma:Z
    :cond_3
    const-string v3, "SmsProvider"

    const-string v4, "getDeliverPdu gsm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v2

    .restart local v2       #spb:Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
    goto :goto_1

    .line 1723
    :cond_4
    new-instance v3, Lcom/android/providers/telephony/SmsProvider$DeliverPduEx;

    invoke-direct {v3, v2}, Lcom/android/providers/telephony/SmsProvider$DeliverPduEx;-><init>(Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;)V

    invoke-virtual {v3}, Lcom/android/providers/telephony/SmsProvider$DeliverPduEx;->getDeliverPdu()Landroid/telephony/SmsMessage$DeliverPdu;

    move-result-object v3

    goto :goto_2
.end method

.method private getMessagesCapacityFromIcc()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 507
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 508
    .local v1, smsManager:Landroid/telephony/SmsManager;
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->ICC_CAPACITY_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 509
    .local v0, c:Landroid/database/MatrixCursor;
    new-array v2, v4, [Ljava/lang/Object;

    .line 510
    .local v2, values:[Ljava/lang/Object;
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getMessagesCapacityFromIcc()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    .line 511
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 512
    return-object v0
.end method

.method private getSingleMessageFromIcc(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .parameter "messageIndexString"
    .parameter "cardIndex"

    .prologue
    const/4 v5, 0x1

    .line 446
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 447
    .local v3, messageIndex:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v4, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-ne p2, v5, :cond_1

    .line 451
    invoke-static {}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v4

    .line 459
    :cond_0
    :goto_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SmsMessage;

    .line 460
    .local v2, message:Landroid/telephony/SmsMessage;
    if-nez v2, :cond_2

    .line 461
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Message not retrieved. ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v2           #message:Landroid/telephony/SmsMessage;
    .end local v3           #messageIndex:I
    .end local v4           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    :catch_0
    move-exception v1

    .line 470
    .local v1, exception:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad SMS ICC ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 452
    .end local v1           #exception:Ljava/lang/NumberFormatException;
    .restart local v3       #messageIndex:I
    .restart local v4       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    :cond_1
    const/4 v5, 0x2

    if-ne p2, v5, :cond_0

    .line 454
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v5}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc(Z)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    .line 464
    .restart local v2       #message:Landroid/telephony/SmsMessage;
    :cond_2
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/providers/telephony/SmsProvider;->ICC_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 465
    .local v0, cursor:Landroid/database/MatrixCursor;
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lcom/android/providers/telephony/SmsProvider;->convertIccToSms(Landroid/telephony/SmsMessage;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 467
    invoke-direct {p0, v0, p2}, Lcom/android/providers/telephony/SmsProvider;->withIccNotificationUri(Landroid/database/Cursor;I)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5
.end method

.method private static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/text/format/Time;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "timeStamp"
    .parameter "isDefault"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 1740
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    .line 1741
    .local v6, defaultPhoneType:I
    if-eqz p5, :cond_2

    if-ne v2, v6, :cond_1

    .line 1745
    .local v7, isCdma:Z
    :cond_0
    :goto_0
    if-eqz v7, :cond_3

    .line 1746
    const-string v0, "SmsProvider"

    const-string v1, "getSubmitPdu cdma"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 1747
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 1755
    .local v8, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_1
    if-nez v8, :cond_4

    .line 1758
    :goto_2
    return-object v4

    .end local v7           #isCdma:Z
    .end local v8           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_1
    move v7, v0

    .line 1741
    goto :goto_0

    :cond_2
    if-ne v2, v6, :cond_0

    move v7, v0

    goto :goto_0

    .line 1751
    .restart local v7       #isCdma:Z
    :cond_3
    const-string v0, "SmsProvider"

    const-string v1, "getSubmitPdu gsm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v8

    .restart local v8       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_1

    .line 1758
    :cond_4
    new-instance v0, Lcom/android/providers/telephony/SmsProvider$SubmitPduEx;

    invoke-direct {v0, v8}, Lcom/android/providers/telephony/SmsProvider$SubmitPduEx;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    invoke-virtual {v0}, Lcom/android/providers/telephony/SmsProvider$SubmitPduEx;->getSubmitPdu()Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v4

    goto :goto_2
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 1578
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1579
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1580
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1581
    const-string v1, "content://mms-sms/conversations/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1582
    return-void
.end method

.method private queryRelatedThreadIdOfSms(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;
    .locals 5
    .parameter "db"
    .parameter "where"
    .parameter "whereArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1210
    if-nez p2, :cond_0

    .line 1211
    const-string p2, ""

    .line 1216
    :goto_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1217
    .local v2, thread_ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT _id FROM threads WHERE _id IN (SELECT DISTINCT thread_id FROM sms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1219
    .local v1, query:Ljava/lang/String;
    invoke-virtual {p1, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1220
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 1221
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1222
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1213
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #query:Ljava/lang/String;
    .end local v2           #thread_ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WHERE ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1224
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #query:Ljava/lang/String;
    .restart local v2       #thread_ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1227
    :cond_2
    return-object v2
.end method

.method private withIccNotificationUri(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 2
    .parameter "cursor"
    .parameter "cardIndex"

    .prologue
    .line 517
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 518
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/SmsProvider;->ICC1_URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 522
    :cond_0
    :goto_0
    return-object p1

    .line 519
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/SmsProvider;->ICC2_URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 38
    .parameter "url"
    .parameter "values"

    .prologue
    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkConsistency()V

    .line 998
    sget-object v33, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 1000
    .local v18, match:I
    if-eqz v18, :cond_1

    .line 1001
    invoke-super/range {p0 .. p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v25

    .line 1204
    :cond_0
    :goto_0
    return v25

    .line 1006
    :cond_1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    .line 1007
    .local v20, numValues:I
    const/16 v25, 0x0

    .line 1009
    .local v25, succeeded:I
    if-lez v20, :cond_16

    .line 1010
    const/16 v30, 0x0

    .line 1012
    .local v30, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 1014
    .local v12, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v26, "sms"

    .line 1016
    .local v26, table:Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1017
    .local v10, cv:Landroid/content/ContentValues;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1018
    .local v11, cv2:Landroid/content/ContentValues;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    .local v15, insertedSmsList:Ljava/util/ArrayList;
    move-object/from16 v8, p2

    .local v8, arr$:[Landroid/content/ContentValues;
    array-length v0, v8

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    move/from16 v0, v17

    if-ge v13, v0, :cond_14

    aget-object v14, v8, v13

    .line 1021
    .local v14, initialValues:Landroid/content/ContentValues;
    const-string v33, "type"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v31

    .line 1022
    .local v31, typeObj:Ljava/lang/Integer;
    if-eqz v31, :cond_12

    .line 1023
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v30

    .line 1028
    :goto_2
    const/4 v5, 0x0

    .line 1029
    .local v5, addDate:Z
    const/4 v6, 0x0

    .line 1030
    .local v6, addType:Z
    const/4 v4, 0x0

    .line 1032
    .local v4, addCallback:Z
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 1033
    invoke-virtual {v10, v14}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1034
    const-string v33, "date"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_2

    .line 1035
    const/4 v5, 0x1

    .line 1038
    :cond_2
    const-string v33, "type"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_3

    .line 1039
    const/4 v6, 0x1

    .line 1042
    :cond_3
    const-string v33, "callback_number"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_4

    .line 1043
    const/4 v4, 0x1

    .line 1046
    :cond_4
    if-eqz v5, :cond_5

    .line 1047
    const-string v33, "date"

    new-instance v34, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    invoke-direct/range {v34 .. v36}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1050
    :cond_5
    if-eqz v6, :cond_6

    if-eqz v30, :cond_6

    .line 1051
    const-string v33, "type"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1054
    :cond_6
    const-string v33, "thread_id"

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v28

    .line 1055
    .local v28, threadId:Ljava/lang/Long;
    const-string v33, "address"

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1057
    .local v7, address:Ljava/lang/String;
    if-eqz v28, :cond_7

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    const-wide/16 v35, 0x0

    cmp-long v33, v33, v35

    if-nez v33, :cond_8

    :cond_7
    if-eqz v7, :cond_8

    .line 1058
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v0, v7}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .line 1059
    const-string v33, "thread_id"

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1066
    :cond_8
    const-string v33, "type"

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_a

    .line 1069
    sget-boolean v33, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v33, :cond_9

    .line 1070
    const-string v33, "SmsProvider"

    const-string v34, "bulkInsert mid, replacing draft thread"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_9
    const-string v33, "sms"

    const-string v34, "thread_id=? AND type=?"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "thread_id"

    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const/16 v37, 0x3

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v12, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1079
    :cond_a
    if-eqz v4, :cond_d

    if-eqz v28, :cond_b

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    const-wide/16 v35, 0x0

    cmp-long v33, v33, v35

    if-nez v33, :cond_d

    .line 1080
    :cond_b
    const-string v33, "callback_number"

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1081
    .local v9, callbackAddress:Ljava/lang/String;
    if-eqz v9, :cond_d

    .line 1083
    sget-boolean v33, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v33, :cond_c

    .line 1084
    const-string v33, "SmsProvider"

    const-string v34, "bulkInsert mid, getOrCreateThreadId"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v0, v9}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .line 1088
    const-string v33, "thread_id"

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1092
    .end local v9           #callbackAddress:Ljava/lang/String;
    :cond_d
    const/16 v33, 0x1

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_13

    .line 1128
    :goto_3
    :try_start_0
    const-string v33, "sort_index"

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_e

    .line 1129
    const-string v33, "sort_index"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1132
    :cond_e
    const-string v33, "body"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v12, v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v21

    .line 1134
    .local v21, rowID:J
    const-wide/16 v33, 0x0

    cmp-long v33, v21, v33

    if-lez v33, :cond_11

    .line 1135
    add-int/lit8 v25, v25, 0x1

    .line 1138
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 1139
    const-string v33, "_id"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1140
    const-string v33, "index_text"

    const-string v34, "body"

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const-string v33, "source_id"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1144
    const-string v33, "m_id"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1146
    const-string v33, "table_to_use"

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1147
    const-string v33, "words"

    const-string v34, "index_text"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v12, v0, v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1149
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "content://"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    .line 1151
    .local v32, uri:Landroid/net/Uri;
    const-string v33, "SmsProvider"

    const/16 v34, 0x2

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v33

    if-eqz v33, :cond_f

    .line 1152
    const-string v33, "SmsProvider"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "bulkInsert "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " succeeded"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_f
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 1158
    .local v19, msg:Landroid/os/Bundle;
    const-string v33, "_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1160
    const-string v33, "thread_id"

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v29

    .line 1161
    .local v29, tid:Ljava/lang/Long;
    if-eqz v29, :cond_10

    .line 1162
    const-string v33, "thread_id"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1165
    :cond_10
    const-string v33, "type"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1166
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    sget-boolean v33, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v33, :cond_11

    .line 1169
    const-string v33, "SmsProvider"

    const-string v34, "bulkInsert one sms end"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1020
    .end local v19           #msg:Landroid/os/Bundle;
    .end local v21           #rowID:J
    .end local v29           #tid:Ljava/lang/Long;
    .end local v32           #uri:Landroid/net/Uri;
    :cond_11
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 1026
    .end local v4           #addCallback:Z
    .end local v5           #addDate:Z
    .end local v6           #addType:Z
    .end local v7           #address:Ljava/lang/String;
    .end local v28           #threadId:Ljava/lang/Long;
    :cond_12
    const/16 v30, 0x1

    goto/16 :goto_2

    .line 1124
    .restart local v4       #addCallback:Z
    .restart local v5       #addDate:Z
    .restart local v6       #addType:Z
    .restart local v7       #address:Ljava/lang/String;
    .restart local v28       #threadId:Ljava/lang/Long;
    :cond_13
    const-string v33, "read"

    sget-object v34, Lcom/android/providers/telephony/SmsProvider;->ONE:Ljava/lang/Integer;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 1172
    :catch_0
    move-exception v24

    .line 1173
    .local v24, sqlfullex:Landroid/database/sqlite/SQLiteFullException;
    const-string v33, "SmsProvider"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "SmsProvider.bulkInsert: failed! "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v24 .. v24}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    new-instance v27, Landroid/content/Intent;

    const-string v33, "android.provider.Telephony.PHONE_SMS_FULL"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1176
    .local v27, theintent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1184
    .end local v4           #addCallback:Z
    .end local v5           #addDate:Z
    .end local v6           #addType:Z
    .end local v7           #address:Ljava/lang/String;
    .end local v14           #initialValues:Landroid/content/ContentValues;
    .end local v24           #sqlfullex:Landroid/database/sqlite/SQLiteFullException;
    .end local v27           #theintent:Landroid/content/Intent;
    .end local v28           #threadId:Ljava/lang/Long;
    .end local v31           #typeObj:Ljava/lang/Integer;
    :cond_14
    if-lez v25, :cond_16

    .line 1185
    new-instance v16, Landroid/content/Intent;

    const-string v33, "com.motorola.android.intent.action.SMS_INSERTED"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1186
    .local v16, intent:Landroid/content/Intent;
    const-string v33, "inserted_sms_list"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1187
    sget-boolean v33, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v33, :cond_15

    .line 1188
    const-string v33, "SmsProvider"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Broadcasting intent: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1192
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v15, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->notifyTmSmsChange(Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    .line 1196
    sget-object v33, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 1200
    .end local v8           #arr$:[Landroid/content/ContentValues;
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v11           #cv2:Landroid/content/ContentValues;
    .end local v12           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v13           #i$:I
    .end local v15           #insertedSmsList:Ljava/util/ArrayList;
    .end local v16           #intent:Landroid/content/Intent;
    .end local v17           #len$:I
    .end local v26           #table:Ljava/lang/String;
    .end local v30           #type:I
    :cond_16
    sget-boolean v33, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v33, :cond_0

    .line 1201
    const-string v33, "SmsProvider"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "bulkInsert end, succeeded="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1179
    .restart local v4       #addCallback:Z
    .restart local v5       #addDate:Z
    .restart local v6       #addType:Z
    .restart local v7       #address:Ljava/lang/String;
    .restart local v8       #arr$:[Landroid/content/ContentValues;
    .restart local v10       #cv:Landroid/content/ContentValues;
    .restart local v11       #cv2:Landroid/content/ContentValues;
    .restart local v12       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v13       #i$:I
    .restart local v14       #initialValues:Landroid/content/ContentValues;
    .restart local v15       #insertedSmsList:Ljava/util/ArrayList;
    .restart local v17       #len$:I
    .restart local v26       #table:Ljava/lang/String;
    .restart local v28       #threadId:Ljava/lang/Long;
    .restart local v30       #type:I
    .restart local v31       #typeObj:Ljava/lang/Integer;
    :catch_1
    move-exception v23

    .line 1180
    .local v23, sqlex:Landroid/database/SQLException;
    const-string v33, "SmsProvider"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "SmsProvider.bulkInsert: failed! "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v23 .. v23}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 20
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkConsistency()V

    .line 1237
    sget-object v16, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 1238
    .local v11, match:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1241
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v16, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v16, :cond_0

    .line 1242
    const-string v16, "SmsProvider"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "delete start, url="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " match="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_0
    const/4 v6, 0x0

    .line 1247
    .local v6, deletedSmsList:Ljava/util/ArrayList;
    sparse-switch v11, :sswitch_data_0

    .line 1345
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Unknown URL"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1251
    :sswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v5, v1, v2}, Lcom/android/providers/telephony/SmsProvider;->queryRelatedThreadIdOfSms(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v15

    .line 1253
    .local v15, thread_ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v5, v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getDeletedSmsList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1258
    const-string v17, "sms"

    if-nez p2, :cond_7

    const-string v16, "1"

    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1259
    .local v4, count:I
    if-eqz v4, :cond_1

    .line 1260
    invoke-static {v5, v15}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    .line 1348
    .end local v15           #thread_ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    if-lez v4, :cond_4

    .line 1351
    if-eqz v6, :cond_3

    .line 1352
    new-instance v10, Landroid/content/Intent;

    const-string v16, "com.motorola.android.intent.action.SMS_DELETED"

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1353
    .local v10, intent:Landroid/content/Intent;
    const-string v16, "deleted_sms_list"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1354
    sget-boolean v16, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v16, :cond_2

    .line 1355
    const-string v16, "SmsProvider"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Broadcasting intent: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1359
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->notifyTmSmsChange(Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    .line 1364
    .end local v10           #intent:Landroid/content/Intent;
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 1373
    :cond_4
    :try_start_0
    sget-boolean v16, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v16, :cond_5

    .line 1374
    const-string v16, "SmsProvider"

    const-string v17, "delete mid, moto table sync"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "content://com.motorola.atcmd.plugin.atcmdsettingsprovider/csmp_values"

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v19}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1384
    :goto_2
    sget-boolean v16, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v16, :cond_6

    .line 1385
    const-string v16, "SmsProvider"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "delete end, url="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " match="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    .end local v4           #count:I
    :cond_6
    :goto_3
    return v4

    .restart local v15       #thread_ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_7
    move-object/from16 v16, p2

    .line 1258
    goto/16 :goto_0

    .line 1266
    .end local v15           #thread_ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :sswitch_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1268
    .local v13, message_id:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "_id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getDeletedSmsList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1270
    invoke-static {v5, v13}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteOneSms(Landroid/database/sqlite/SQLiteDatabase;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .restart local v4       #count:I
    goto/16 :goto_1

    .line 1271
    .end local v4           #count:I
    .end local v13           #message_id:I
    :catch_0
    move-exception v7

    .line 1272
    .local v7, e:Ljava/lang/Exception;
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Bad message id: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1281
    .end local v7           #e:Ljava/lang/Exception;
    :sswitch_2
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v14

    .line 1289
    .local v14, threadID:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "thread_id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1291
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v5, v0, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getDeletedSmsList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1293
    const-string v16, "sms"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1297
    .restart local v4       #count:I
    if-eqz v4, :cond_1

    .line 1298
    int-to-long v0, v14

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v5, v0, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto/16 :goto_1

    .line 1282
    .end local v4           #count:I
    .end local v14           #threadID:I
    :catch_1
    move-exception v8

    .line 1283
    .local v8, ex:Ljava/lang/Exception;
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Bad conversation thread id: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1305
    .end local v8           #ex:Ljava/lang/Exception;
    :sswitch_3
    const-string v16, "raw"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1306
    .restart local v4       #count:I
    goto/16 :goto_1

    .line 1310
    .end local v4           #count:I
    :sswitch_4
    const-string v16, "raw2"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1311
    .restart local v4       #count:I
    goto/16 :goto_1

    .line 1315
    .end local v4           #count:I
    :sswitch_5
    const-string v16, "sr_pending"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1316
    .restart local v4       #count:I
    goto/16 :goto_1

    .line 1321
    .end local v4           #count:I
    :sswitch_6
    const-string v16, "message_pending"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1322
    .restart local v4       #count:I
    goto/16 :goto_1

    .line 1325
    .end local v4           #count:I
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1326
    .local v3, ID:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "_id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1327
    const-string v16, "message_pending"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1328
    .restart local v4       #count:I
    goto/16 :goto_1

    .line 1333
    .end local v3           #ID:I
    .end local v4           #count:I
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1336
    .local v12, messageIndexString:Ljava/lang/String;
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v12, v1}, Lcom/android/providers/telephony/SmsProvider;->deleteMessageFromIcc(Ljava/lang/String;I)I

    move-result v4

    goto/16 :goto_3

    .line 1339
    .end local v12           #messageIndexString:Ljava/lang/String;
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1341
    .restart local v12       #messageIndexString:Ljava/lang/String;
    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v12, v1}, Lcom/android/providers/telephony/SmsProvider;->deleteMessageFromIcc(Ljava/lang/String;I)I

    move-result v4

    goto/16 :goto_3

    .line 1378
    .end local v12           #messageIndexString:Ljava/lang/String;
    .restart local v4       #count:I
    :catch_2
    move-exception v9

    .line 1379
    .local v9, exception:Ljava/lang/IllegalArgumentException;
    const-string v16, "SmsProvider"

    const-string v17, "delete csmp value fail"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1247
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xb -> :sswitch_2
        0xf -> :sswitch_3
        0x15 -> :sswitch_5
        0x17 -> :sswitch_8
        0x1c -> :sswitch_6
        0x1d -> :sswitch_7
        0x20 -> :sswitch_9
        0x21 -> :sswitch_4
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 544
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 562
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 546
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/sms"

    goto :goto_0

    .line 549
    :pswitch_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 550
    const-string v1, "vnd.android.cursor.item/sms"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v1, "vnd.android.cursor.dir/sms"

    goto :goto_0

    .line 556
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "conversations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    const-string v1, "vnd.android.cursor.item/sms-chat"

    goto :goto_0

    .line 559
    :cond_0
    const-string v1, "vnd.android.cursor.item/sms"

    goto :goto_0

    .line 544
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 38
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkConsistency()V

    .line 572
    const/16 v32, 0x0

    .line 576
    .local v32, type:I
    sget-boolean v3, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 577
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert begin - url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v20

    .line 583
    .local v20, match:I
    const-string v28, "sms"

    .line 588
    .local v28, table:Ljava/lang/String;
    const/4 v8, 0x0

    .line 589
    .local v8, isSIM1:Z
    const/16 v19, 0x0

    .line 592
    .local v19, isSIM2:Z
    packed-switch v20, :pswitch_data_0

    .line 673
    :pswitch_0
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/16 v34, 0x0

    .line 991
    :cond_1
    :goto_0
    return-object v34

    .line 594
    :pswitch_1
    const-string v3, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    .line 595
    .local v33, typeObj:Ljava/lang/Integer;
    if-eqz v33, :cond_4

    .line 596
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 679
    .end local v33           #typeObj:Ljava/lang/Integer;
    :goto_1
    if-nez v8, :cond_2

    if-eqz v19, :cond_a

    .line 681
    :cond_2
    const/4 v13, 0x0

    .line 682
    .local v13, bSuccess:Z
    const-string v3, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 683
    .local v25, smsType:I
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 684
    .local v7, time:Landroid/text/format/Time;
    const-string v3, "date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 685
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_6

    .line 687
    const-string v3, "service_center"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "body"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v7, v8}, Lcom/android/providers/telephony/SmsProvider;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;Z)Landroid/telephony/SmsMessage$DeliverPdu;

    move-result-object v22

    .line 693
    .local v22, pdu:Landroid/telephony/SmsMessage$DeliverPdu;
    if-eqz v22, :cond_3

    .line 695
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copy message to ICC, start, isSIM1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    if-eqz v8, :cond_5

    .line 697
    const-string v3, "SmsProvider"

    const-string v4, "call SmsManager.getDefault().copyMessageToIcc()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/telephony/SmsMessage$DeliverPdu;->encodedScAddress:[B

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v13

    .line 709
    :goto_2
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copy message to ICC,  finish, isSIM1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .end local v22           #pdu:Landroid/telephony/SmsMessage$DeliverPdu;
    :cond_3
    :goto_3
    if-eqz v13, :cond_9

    .line 741
    const/16 v35, 0x0

    .line 742
    .local v35, uriSim:Landroid/net/Uri;
    if-eqz v8, :cond_8

    .line 743
    const-string v3, "content://sms/icc/0"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    .line 747
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v34, v35

    .line 748
    goto/16 :goto_0

    .line 599
    .end local v7           #time:Landroid/text/format/Time;
    .end local v13           #bSuccess:Z
    .end local v25           #smsType:I
    .end local v35           #uriSim:Landroid/net/Uri;
    .restart local v33       #typeObj:Ljava/lang/Integer;
    :cond_4
    const/16 v32, 0x1

    .line 601
    goto/16 :goto_1

    .line 604
    .end local v33           #typeObj:Ljava/lang/Integer;
    :pswitch_2
    const/16 v32, 0x1

    .line 605
    goto/16 :goto_1

    .line 608
    :pswitch_3
    const/16 v32, 0x5

    .line 609
    goto/16 :goto_1

    .line 612
    :pswitch_4
    const/16 v32, 0x6

    .line 613
    goto/16 :goto_1

    .line 616
    :pswitch_5
    const/16 v32, 0x2

    .line 617
    goto/16 :goto_1

    .line 620
    :pswitch_6
    const/16 v32, 0x3

    .line 621
    goto/16 :goto_1

    .line 624
    :pswitch_7
    const/16 v32, 0x4

    .line 625
    goto/16 :goto_1

    .line 628
    :pswitch_8
    const-string v28, "raw"

    .line 629
    goto/16 :goto_1

    .line 633
    :pswitch_9
    const-string v28, "raw2"

    .line 634
    goto/16 :goto_1

    .line 638
    :pswitch_a
    const-string v28, "sr_pending"

    .line 639
    goto/16 :goto_1

    .line 644
    :pswitch_b
    const-string v28, "message_pending"

    .line 645
    goto/16 :goto_1

    .line 650
    :pswitch_c
    const-string v28, "attachments"

    .line 651
    goto/16 :goto_1

    .line 654
    :pswitch_d
    const-string v28, "canonical_addresses"

    .line 655
    goto/16 :goto_1

    .line 660
    :pswitch_e
    const/4 v8, 0x1

    .line 662
    goto/16 :goto_1

    .line 668
    :pswitch_f
    const/16 v19, 0x1

    .line 669
    goto/16 :goto_1

    .line 702
    .restart local v7       #time:Landroid/text/format/Time;
    .restart local v13       #bSuccess:Z
    .restart local v22       #pdu:Landroid/telephony/SmsMessage$DeliverPdu;
    .restart local v25       #smsType:I
    :cond_5
    const-string v3, "SmsProvider"

    const-string v4, "call SmsManager.getDefault(false).copyMessageToIcc()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/telephony/SmsManager;->getDefault(Z)Landroid/telephony/SmsManager;

    move-result-object v3

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/telephony/SmsMessage$DeliverPdu;->encodedScAddress:[B

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v13

    goto/16 :goto_2

    .line 712
    .end local v22           #pdu:Landroid/telephony/SmsMessage$DeliverPdu;
    :cond_6
    const/4 v3, 0x2

    move/from16 v0, v25

    if-ne v0, v3, :cond_3

    .line 714
    const-string v3, "service_center"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "body"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/providers/telephony/SmsProvider;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/text/format/Time;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v22

    .line 719
    .local v22, pdu:Landroid/telephony/SmsMessage$SubmitPdu;
    if-eqz v22, :cond_3

    .line 720
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copy message to ICC, start, isSIM1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    if-eqz v8, :cond_7

    .line 722
    const-string v3, "SmsProvider"

    const-string v4, "call SmsManager.getDefault().copyMessageToIcc()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v6}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v13

    .line 734
    :goto_5
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copy message to ICC,  finish, isSIM1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 727
    :cond_7
    const-string v3, "SmsProvider"

    const-string v4, "call SmsManager.getDefault(false).copyMessageToIcc()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/telephony/SmsManager;->getDefault(Z)Landroid/telephony/SmsManager;

    move-result-object v3

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v6}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v13

    goto :goto_5

    .line 745
    .end local v22           #pdu:Landroid/telephony/SmsMessage$SubmitPdu;
    .restart local v35       #uriSim:Landroid/net/Uri;
    :cond_8
    const-string v3, "content://sms/icc2/0"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    goto/16 :goto_4

    .line 752
    .end local v35           #uriSim:Landroid/net/Uri;
    :cond_9
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copy message to ICC,  failed, isSIM1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 760
    .end local v7           #time:Landroid/text/format/Time;
    .end local v13           #bSuccess:Z
    .end local v25           #smsType:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    .line 762
    .local v16, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "sms"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 763
    const/4 v10, 0x0

    .line 764
    .local v10, addDate:Z
    const/4 v11, 0x0

    .line 766
    .local v11, addType:Z
    const/4 v9, 0x0

    .line 770
    .local v9, addCallback:Z
    if-nez p2, :cond_1c

    .line 771
    new-instance v36, Landroid/content/ContentValues;

    const/4 v3, 0x1

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 772
    .local v36, values:Landroid/content/ContentValues;
    const/4 v10, 0x1

    .line 773
    const/4 v11, 0x1

    .line 775
    const/4 v9, 0x1

    .line 797
    :cond_b
    :goto_6
    if-eqz v10, :cond_c

    .line 798
    const-string v3, "date"

    new-instance v4, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 801
    :cond_c
    if-eqz v11, :cond_d

    if-eqz v32, :cond_d

    .line 802
    const-string v3, "type"

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 806
    :cond_d
    const-string v3, "thread_id"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v30

    .line 807
    .local v30, threadId:Ljava/lang/Long;
    const-string v3, "address"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 809
    .local v12, address:Ljava/lang/String;
    if-eqz v30, :cond_e

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    :cond_e
    if-eqz v12, :cond_f

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v12}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    .line 812
    const-string v3, "thread_id"

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 821
    :cond_f
    const-string v3, "type"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_11

    .line 824
    sget-boolean v3, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v3, :cond_10

    .line 825
    const-string v3, "SmsProvider"

    const-string v4, "insert mid, replacing draft thread"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_10
    const-string v3, "sms"

    const-string v4, "thread_id=? AND type=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v37, "thread_id"

    invoke-virtual/range {v36 .. v37}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v5, v6

    const/4 v6, 0x1

    const/16 v37, 0x3

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 836
    :cond_11
    if-eqz v9, :cond_14

    if-eqz v30, :cond_12

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 837
    :cond_12
    const-string v3, "callback_number"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 838
    .local v14, callbackAddress:Ljava/lang/String;
    if-eqz v14, :cond_14

    .line 840
    sget-boolean v3, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v3, :cond_13

    .line 841
    const-string v3, "SmsProvider"

    const-string v4, "insert mid, getOrCreateThreadId"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v14}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    .line 845
    const-string v3, "thread_id"

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 851
    .end local v14           #callbackAddress:Ljava/lang/String;
    :cond_14
    const/4 v3, 0x1

    move/from16 v0, v32

    if-ne v0, v3, :cond_1f

    .line 899
    .end local v9           #addCallback:Z
    .end local v10           #addDate:Z
    .end local v11           #addType:Z
    .end local v12           #address:Ljava/lang/String;
    .end local v30           #threadId:Ljava/lang/Long;
    :goto_7
    :try_start_0
    sget-boolean v3, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v3, :cond_15

    .line 900
    const-string v3, "SmsProvider"

    const-string v4, "insert mid, insertOrThrow"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_15
    const-string v3, "sms"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 907
    const-string v3, "sort_index"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 908
    const-string v3, "sort_index"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 914
    :cond_16
    const-string v3, "body"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v23

    .line 919
    .local v23, rowID:J
    const-string v3, "sms"

    move-object/from16 v0, v28

    if-ne v0, v3, :cond_17

    .line 923
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 924
    .local v15, cv:Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 925
    const-string v3, "index_text"

    const-string v4, "body"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v3, "source_id"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 929
    const-string v3, "m_id"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 931
    const-string v3, "table_to_use"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 932
    const-string v3, "words"

    const-string v4, "index_text"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 935
    .end local v15           #cv:Landroid/content/ContentValues;
    :cond_17
    const-wide/16 v3, 0x0

    cmp-long v3, v23, v3

    if-lez v3, :cond_22

    .line 936
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    .line 938
    .local v34, uri:Landroid/net/Uri;
    const-string v3, "SmsProvider"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 939
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " succeeded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_18
    const-string v3, "sms"

    move-object/from16 v0, v28

    if-ne v3, v0, :cond_1b

    .line 945
    new-instance v17, Ljava/util/ArrayList;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 946
    .local v17, insertedSmsList:Ljava/util/ArrayList;
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 947
    .local v21, msg:Landroid/os/Bundle;
    const-string v3, "_id"

    move-object/from16 v0, v21

    move-wide/from16 v1, v23

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 949
    const-string v3, "thread_id"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    .line 950
    .local v31, tid:Ljava/lang/Long;
    if-eqz v31, :cond_19

    .line 951
    const-string v3, "thread_id"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 954
    :cond_19
    const-string v3, "type"

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 955
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    new-instance v18, Landroid/content/Intent;

    const-string v3, "com.motorola.android.intent.action.SMS_INSERTED"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 957
    .local v18, intent:Landroid/content/Intent;
    const-string v3, "inserted_sms_list"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 958
    sget-boolean v3, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v3, :cond_1a

    .line 959
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 963
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/android/providers/telephony/MmsSmsProvider;->notifyTmSmsChange(Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    .line 969
    .end local v17           #insertedSmsList:Ljava/util/ArrayList;
    .end local v18           #intent:Landroid/content/Intent;
    .end local v21           #msg:Landroid/os/Bundle;
    .end local v31           #tid:Ljava/lang/Long;
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 972
    sget-boolean v3, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 973
    const-string v3, "SmsProvider"

    const-string v4, "insert end"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 981
    .end local v23           #rowID:J
    .end local v34           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v27

    .line 982
    .local v27, sqlfullex:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmsProvider.insert: failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    new-instance v29, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.PHONE_SMS_FULL"

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 985
    .local v29, theintent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 991
    .end local v27           #sqlfullex:Landroid/database/sqlite/SQLiteFullException;
    .end local v29           #theintent:Landroid/content/Intent;
    :goto_8
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 778
    .end local v36           #values:Landroid/content/ContentValues;
    .restart local v9       #addCallback:Z
    .restart local v10       #addDate:Z
    .restart local v11       #addType:Z
    :cond_1c
    new-instance v36, Landroid/content/ContentValues;

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 780
    .restart local v36       #values:Landroid/content/ContentValues;
    const-string v3, "date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 781
    const/4 v10, 0x1

    .line 784
    :cond_1d
    const-string v3, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 785
    const/4 v11, 0x1

    .line 790
    :cond_1e
    const-string v3, "callback_number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 791
    const/4 v9, 0x1

    goto/16 :goto_6

    .line 883
    .restart local v12       #address:Ljava/lang/String;
    .restart local v30       #threadId:Ljava/lang/Long;
    :cond_1f
    const-string v3, "read"

    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->ONE:Ljava/lang/Integer;

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_7

    .line 886
    .end local v9           #addCallback:Z
    .end local v10           #addDate:Z
    .end local v11           #addType:Z
    .end local v12           #address:Ljava/lang/String;
    .end local v30           #threadId:Ljava/lang/Long;
    .end local v36           #values:Landroid/content/ContentValues;
    :cond_20
    if-nez p2, :cond_21

    .line 887
    new-instance v36, Landroid/content/ContentValues;

    const/4 v3, 0x1

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .restart local v36       #values:Landroid/content/ContentValues;
    goto/16 :goto_7

    .line 889
    .end local v36           #values:Landroid/content/ContentValues;
    :cond_21
    move-object/from16 v36, p2

    .restart local v36       #values:Landroid/content/ContentValues;
    goto/16 :goto_7

    .line 979
    .restart local v23       #rowID:J
    :cond_22
    :try_start_1
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert: failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v36 .. v36}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    .line 986
    .end local v23           #rowID:J
    :catch_1
    move-exception v26

    .line 987
    .local v26, sqlex:Landroid/database/SQLException;
    const-string v3, "SmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmsProvider.insert: failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 592
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_e
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 154
    iget-object v2, p0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkConsistency()V

    .line 156
    sget-boolean v2, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 157
    const-string v2, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query begin - uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 164
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 165
    .local v9, match:I
    packed-switch v9, :pswitch_data_0

    .line 317
    :pswitch_0
    const-string v2, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v12, 0x0

    .line 352
    :cond_1
    :goto_0
    return-object v12

    .line 167
    :pswitch_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    .line 321
    :cond_2
    :goto_1
    const/4 v7, 0x0

    .line 323
    .local v7, orderBy:Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 324
    move-object/from16 v7, p5

    .line 329
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 333
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v2, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 334
    const-string v2, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query mid - url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 343
    .local v12, ret:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->NOTIFICATION_URI:Landroid/net/Uri;

    invoke-interface {v12, v2, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 347
    sget-boolean v2, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 348
    const-string v2, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query end - url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v12           #ret:Landroid/database/Cursor;
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForUndelivered(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto :goto_1

    .line 175
    :pswitch_3
    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 179
    :pswitch_4
    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 183
    :pswitch_5
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 187
    :pswitch_6
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 191
    :pswitch_7
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 195
    :pswitch_8
    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto/16 :goto_1

    .line 199
    :pswitch_9
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 208
    :pswitch_a
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 216
    :pswitch_b
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 217
    .local v13, threadID:I
    const-string v2, "SmsProvider"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 218
    const-string v2, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query conversations: threadID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_5
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 221
    .end local v13           #threadID:I
    :catch_0
    move-exception v8

    .line 222
    .local v8, ex:Ljava/lang/Exception;
    const-string v3, "SmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad conversation thread id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 233
    .end local v8           #ex:Ljava/lang/Exception;
    :pswitch_c
    const-string v2, "sms, (SELECT thread_id AS group_thread_id, MAX(date)AS group_date,COUNT(*) AS msg_count FROM sms GROUP BY thread_id) AS groups"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 235
    const-string v2, "sms.thread_id = groups.group_thread_id AND sms.date =groups.group_date"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 237
    sget-object v2, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 241
    :pswitch_d
    const-string v2, "raw"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 246
    :pswitch_e
    const-string v2, "raw2"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 251
    :pswitch_f
    const-string v2, "sr_pending"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 257
    :pswitch_10
    const-string v2, "message_pending"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 261
    :pswitch_11
    const-string v2, "message_pending"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 268
    :pswitch_12
    const-string v2, "attachments"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 272
    :pswitch_13
    const-string v2, "attachments"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(sms_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 278
    :pswitch_14
    const-string v2, "canonical_addresses"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 279
    if-nez p2, :cond_2

    .line 280
    sget-object p2, Lcom/android/providers/telephony/SmsProvider;->sIDProjection:[Ljava/lang/String;

    goto/16 :goto_1

    .line 285
    :pswitch_15
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 291
    :pswitch_16
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/providers/telephony/SmsProvider;->getAllMessagesFromIcc(I)Landroid/database/Cursor;

    move-result-object v12

    goto/16 :goto_0

    .line 295
    :pswitch_17
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 298
    .local v11, messageIndexString:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-direct {p0, v11, v2}, Lcom/android/providers/telephony/SmsProvider;->getSingleMessageFromIcc(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v12

    goto/16 :goto_0

    .line 303
    .end local v11           #messageIndexString:Ljava/lang/String;
    :pswitch_18
    invoke-direct {p0}, Lcom/android/providers/telephony/SmsProvider;->getMessagesCapacityFromIcc()Landroid/database/Cursor;

    move-result-object v12

    goto/16 :goto_0

    .line 309
    :pswitch_19
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/providers/telephony/SmsProvider;->getAllMessagesFromIcc(I)Landroid/database/Cursor;

    move-result-object v12

    goto/16 :goto_0

    .line 312
    :pswitch_1a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 313
    .local v10, messageIndex:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-direct {p0, v10, v2}, Lcom/android/providers/telephony/SmsProvider;->getSingleMessageFromIcc(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v12

    goto/16 :goto_0

    .line 325
    .end local v10           #messageIndex:Ljava/lang/String;
    .restart local v7       #orderBy:Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    const-string v7, "date DESC"

    goto/16 :goto_2

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_f
        :pswitch_16
        :pswitch_17
        :pswitch_3
        :pswitch_a
        :pswitch_4
        :pswitch_2
        :pswitch_10
        :pswitch_11
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_e
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 16
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1436
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v13}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkConsistency()V

    .line 1438
    const/4 v3, 0x0

    .line 1439
    .local v3, count:I
    const-string v10, "sms"

    .line 1440
    .local v10, table:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1441
    .local v6, extraWhere:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v13}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1445
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v13, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 1446
    .local v9, match:I
    sget-boolean v13, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v13, :cond_0

    .line 1447
    const-string v13, "SmsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "update start, url="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " match="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_0
    sget-object v13, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 1529
    :pswitch_0
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "URI "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not supported"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1454
    :pswitch_1
    const-string v10, "raw"

    .line 1533
    :goto_0
    :pswitch_2
    move-object/from16 v0, p3

    invoke-static {v0, v6}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1537
    const/4 v12, 0x0

    .line 1538
    .local v12, updatedSmsList:Ljava/util/ArrayList;
    const-string v13, "sms"

    if-ne v10, v13, :cond_1

    .line 1539
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v4, v0, v1, v2}, Lcom/android/providers/telephony/MmsSmsProvider;->getUpdatedSmsList(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1544
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v10, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1546
    if-lez v3, :cond_5

    .line 1547
    const-string v13, "SmsProvider"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1548
    const-string v13, "SmsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "update "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " succeeded"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :cond_2
    if-eqz v12, :cond_4

    .line 1553
    new-instance v8, Landroid/content/Intent;

    const-string v13, "com.motorola.android.intent.action.SMS_UPDATED"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1554
    .local v8, intent:Landroid/content/Intent;
    const-string v13, "updated_sms_list"

    invoke-virtual {v8, v13, v12}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1555
    sget-boolean v13, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v13, :cond_3

    .line 1556
    const-string v13, "SmsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Broadcasting intent: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1560
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/providers/telephony/MmsSmsProvider;->notifyTmSmsChange(Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    .line 1565
    .end local v8           #intent:Landroid/content/Intent;
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 1569
    :cond_5
    sget-boolean v13, Lcom/android/providers/telephony/SmsProvider;->DEBUG:Z

    if-eqz v13, :cond_6

    .line 1570
    const-string v13, "SmsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "update end, url="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " match="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v13, v3

    .line 1574
    .end local v12           #updatedSmsList:Ljava/util/ArrayList;
    :goto_1
    return v13

    .line 1459
    :pswitch_3
    const-string v10, "raw2"

    .line 1460
    goto/16 :goto_0

    .line 1464
    :pswitch_4
    const-string v10, "sr_pending"

    .line 1465
    goto/16 :goto_0

    .line 1470
    :pswitch_5
    const-string v10, "message_pending"

    .line 1471
    goto/16 :goto_0

    .line 1474
    :pswitch_6
    const-string v10, "message_pending"

    .line 1475
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v15, 0x1

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1476
    goto/16 :goto_0

    .line 1491
    :pswitch_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1492
    goto/16 :goto_0

    .line 1499
    :pswitch_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v15, 0x1

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1500
    goto/16 :goto_0

    .line 1503
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1507
    .local v11, threadId:Ljava/lang/String;
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1508
    .local v7, id:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v13

    if-nez v13, :cond_7

    .line 1509
    int-to-long v13, v7

    invoke-static {v4, v13, v14}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1510
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 1511
    const-string v13, "SmsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Thread "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " updated"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1512
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1515
    .end local v7           #id:I
    :catch_0
    move-exception v5

    .line 1516
    .local v5, ex:Ljava/lang/Exception;
    const-string v13, "SmsProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bad conversation thread id: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1520
    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v7       #id:I
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "thread_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1521
    goto/16 :goto_0

    .line 1525
    .end local v7           #id:I
    .end local v11           #threadId:Ljava/lang/String;
    :pswitch_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v15, 0x1

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1526
    goto/16 :goto_0

    .line 1452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_2
        :pswitch_8
        :pswitch_2
        :pswitch_8
        :pswitch_2
        :pswitch_8
        :pswitch_2
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
