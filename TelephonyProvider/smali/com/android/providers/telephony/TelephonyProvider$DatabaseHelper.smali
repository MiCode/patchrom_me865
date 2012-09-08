.class Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 199
    const-string v0, "telephony.db"

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getVersion(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 200
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 26
    .parameter "parser"

    .prologue
    .line 671
    const-string v23, "apn"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 672
    const/4 v8, 0x0

    .line 774
    :cond_0
    :goto_0
    return-object v8

    .line 675
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 677
    .local v8, map:Landroid/content/ContentValues;
    const/16 v23, 0x0

    const-string v24, "mcc"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 678
    .local v9, mcc:Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, "mnc"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 679
    .local v12, mnc:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 681
    .local v14, numeric:Ljava/lang/String;
    const-string v23, "numeric"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v23, "mcc"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v23, "mnc"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v23, "name"

    const/16 v24, 0x0

    const-string v25, "carrier"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v23, "apn"

    const/16 v24, 0x0

    const-string v25, "apn"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v23, "user"

    const/16 v24, 0x0

    const-string v25, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v23, "server"

    const/16 v24, 0x0

    const-string v25, "server"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v23, "password"

    const/16 v24, 0x0

    const-string v25, "password"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/16 v23, 0x0

    const-string v24, "proxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 692
    .local v17, proxy:Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 693
    const-string v23, "proxy"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_2
    const/16 v23, 0x0

    const-string v24, "port"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 696
    .local v15, port:Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 697
    const-string v23, "port"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :cond_3
    const/16 v23, 0x0

    const-string v24, "mmsproxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 700
    .local v11, mmsproxy:Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 701
    const-string v23, "mmsproxy"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_4
    const/16 v23, 0x0

    const-string v24, "mmsport"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 704
    .local v10, mmsport:Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 705
    const-string v23, "mmsport"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_5
    const-string v23, "mmsc"

    const/16 v24, 0x0

    const-string v25, "mmsc"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const/16 v23, 0x0

    const-string v24, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 709
    .local v21, type:Ljava/lang/String;
    if-eqz v21, :cond_6

    .line 710
    const-string v23, "type"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :cond_6
    const/16 v23, 0x0

    const-string v24, "authtype"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 714
    .local v4, auth:Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 715
    const-string v23, "authtype"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 720
    :cond_7
    const/16 v23, 0x0

    const-string v24, "inactivetimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 721
    .local v20, timer:Ljava/lang/String;
    if-eqz v20, :cond_8

    .line 722
    const-string v23, "inactivetimer"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 724
    :cond_8
    const/16 v23, 0x0

    const-string v24, "class"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 725
    .local v3, apnclass:Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 726
    const-string v23, "class"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 732
    :cond_9
    const/16 v23, 0x0

    const-string v24, "spn"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 733
    .local v19, spn:Ljava/lang/String;
    if-eqz v19, :cond_a

    .line 734
    const-string v23, "spn"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_a
    const-string v23, "preloaded"

    const-string v24, "true"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const/16 v23, 0x0

    const-string v24, "mtusize"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 744
    .local v13, mtusize:Ljava/lang/String;
    if-eqz v13, :cond_b

    .line 746
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 747
    .local v22, val:Ljava/lang/Integer;
    const-string v23, "mtusize"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    .end local v22           #val:Ljava/lang/Integer;
    :cond_b
    :goto_1
    const/16 v23, 0x0

    const-string v24, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 757
    .local v16, protocol:Ljava/lang/String;
    if-eqz v16, :cond_c

    .line 758
    const-string v23, "protocol"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_c
    const/16 v23, 0x0

    const-string v24, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 761
    .local v18, roamingProtocol:Ljava/lang/String;
    if-eqz v18, :cond_d

    .line 762
    const-string v23, "roaming_protocol"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_d
    const/16 v23, 0x0

    const-string v24, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 766
    .local v6, carrierEnabled:Ljava/lang/String;
    if-eqz v6, :cond_e

    .line 767
    const-string v23, "carrier_enabled"

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 770
    :cond_e
    const/16 v23, 0x0

    const-string v24, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 771
    .local v5, bearer:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 772
    const-string v23, "bearer"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 748
    .end local v5           #bearer:Ljava/lang/String;
    .end local v6           #carrierEnabled:Ljava/lang/String;
    .end local v16           #protocol:Ljava/lang/String;
    .end local v18           #roamingProtocol:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 749
    .local v7, e:Ljava/lang/NumberFormatException;
    const-string v23, "TelephonyProvider"

    const-string v24, "Invalid format for mtusize attribute specified in apns-conf.xml"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getVersion(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const/high16 v4, 0x10

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 206
    .local v3, r:Landroid/content/res/Resources;
    const/high16 v5, 0x10f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 208
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v5, "apns"

    invoke-static {v1, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 209
    const/4 v5, 0x0

    const-string v6, "version"

    invoke-interface {v1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 210
    .local v2, publicversion:I
    or-int/2addr v4, v2

    .line 216
    if-eqz v1, :cond_0

    .line 217
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .end local v2           #publicversion:I
    :cond_0
    :goto_0
    return v4

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "TelephonyProvider"

    const-string v6, "Can\'t get version of APN database"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    if-eqz v1, :cond_0

    .line 217
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 216
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    .line 217
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v4
.end method

.method private initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .parameter "db"

    .prologue
    .line 296
    iget-object v9, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 297
    .local v8, r:Landroid/content/res/Resources;
    const/high16 v9, 0x10f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 298
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    const/4 v7, -0x1

    .line 300
    .local v7, publicversion:I
    :try_start_0
    const-string v9, "apns"

    invoke-static {v6, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 301
    const/4 v9, 0x0

    const-string v10, "version"

    invoke-interface {v6, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 302
    invoke-direct {p0, p1, v6}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 307
    if-eqz v6, :cond_0

    .line 308
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 314
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 316
    .local v1, confparser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "etc/apns-conf.xml"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 317
    .local v0, confFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 319
    .local v2, confreader:Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 320
    .end local v2           #confreader:Ljava/io/FileReader;
    .local v3, confreader:Ljava/io/FileReader;
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 321
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 322
    const-string v9, "apns"

    invoke-static {v1, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 325
    const/4 v9, 0x0

    const-string v10, "version"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 326
    .local v4, confversion:I
    if-eq v7, v4, :cond_3

    .line 327
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Internal APNS file version doesn\'t match "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 332
    .end local v4           #confversion:I
    :catch_0
    move-exception v9

    move-object v2, v3

    .line 338
    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 340
    :cond_1
    :goto_2
    return-void

    .line 303
    .end local v0           #confFile:Ljava/io/File;
    .end local v1           #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v2           #confreader:Ljava/io/FileReader;
    :catch_1
    move-exception v5

    .line 304
    .local v5, e:Ljava/lang/Exception;
    :try_start_4
    const-string v9, "TelephonyProvider"

    const-string v10, "Got exception while loading APN database."

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 307
    if-eqz v6, :cond_0

    .line 308
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 307
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v6, :cond_2

    .line 308
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v9

    .line 331
    .restart local v0       #confFile:Ljava/io/File;
    .restart local v1       #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #confreader:Ljava/io/FileReader;
    .restart local v4       #confversion:I
    :cond_3
    :try_start_5
    invoke-direct {p0, p1, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 338
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_4
    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_2

    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_2
    move-exception v9

    move-object v2, v3

    .line 339
    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_2

    .line 335
    .end local v4           #confversion:I
    :catch_3
    move-exception v5

    .line 336
    .restart local v5       #e:Ljava/lang/Exception;
    :goto_3
    :try_start_7
    const-string v9, "TelephonyProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while parsing \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 338
    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    :catch_4
    move-exception v9

    goto :goto_2

    .end local v5           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    :goto_4
    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_5
    throw v9

    :catch_5
    move-exception v9

    goto :goto_2

    :catch_6
    move-exception v10

    goto :goto_5

    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_4

    .line 335
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_7
    move-exception v5

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_3

    .line 332
    :catch_8
    move-exception v9

    goto :goto_1
.end method

.method private insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "db"
    .parameter "table"
    .parameter "row"

    .prologue
    .line 806
    const-string v0, "authtype"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    const-string v0, "authtype"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 809
    :cond_0
    const-string v0, "protocol"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 810
    const-string v0, "protocol"

    const-string v1, "IP"

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :cond_1
    const-string v0, "roaming_protocol"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 813
    const-string v0, "roaming_protocol"

    const-string v1, "IP"

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    :cond_2
    const-string v0, "carrier_enabled"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 816
    const-string v0, "carrier_enabled"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 818
    :cond_3
    const-string v0, "bearer"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 819
    const-string v0, "bearer"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 821
    :cond_4
    const-string v0, "carriers"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 822
    return-void
.end method

.method private loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "db"
    .parameter "parser"

    .prologue
    .line 785
    if-eqz p2, :cond_0

    .line 788
    :goto_0
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 789
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v1

    .line 790
    .local v1, row:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 791
    const-string v2, "carriers"

    invoke-direct {p0, p1, v2, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 796
    .end local v1           #row:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 797
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "TelephonyProvider"

    const-string v3, "Got execption while getting perferred time zone."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 802
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_0
    :goto_1
    return-void

    .line 798
    :catch_1
    move-exception v0

    .line 799
    .local v0, e:Ljava/io/IOException;
    const-string v2, "TelephonyProvider"

    const-string v3, "Got execption while getting perferred time zone."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "db"

    .prologue
    .line 226
    const-string v6, "CREATE TABLE carriers(_id INTEGER PRIMARY KEY,name TEXT,numeric TEXT,mcc TEXT,mnc TEXT,apn TEXT,user TEXT,server TEXT,password TEXT,proxy TEXT,port TEXT,mmsproxy TEXT,mmsport TEXT,mmsc TEXT,mmsc2 TEXT,authtype INTEGER,mtusize INTEGER,type TEXT,inactivetimer INTEGER,class INTEGER,current INTEGER,spn TEXT,protocol TEXT,roaming_protocol TEXT,carrier_enabled BOOLEAN,bearer INTEGER,preloaded TEXT);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 271
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/apns-conf.xml"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 272
    .local v0, confFile:Ljava/io/File;
    const-wide/16 v3, -0x1

    .line 274
    .local v3, newCheckSum:J
    :try_start_0
    invoke-static {v0}, Landroid/os/FileUtils;->checksumCrc32(Ljava/io/File;)J

    move-result-wide v3

    .line 275
    iget-object v6, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v7, "preferred-apn"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 277
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 278
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "apn_conf_checksum"

    invoke-interface {v2, v6, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :goto_0
    const-string v6, "TelephonyProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Renewed checkSum of confFile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v6, "TelephonyProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFoundException: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 282
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 283
    .local v1, e:Ljava/io/IOException;
    const-string v6, "TelephonyProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v6, 0x0

    .line 344
    const v5, 0x50006

    if-ge p2, v5, :cond_0

    .line 357
    const-string v5, "ALTER TABLE carriers ADD COLUMN authtype INTEGER DEFAULT -1;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 360
    const p2, 0x50006

    .line 365
    :cond_0
    const v5, 0x60006

    if-ge p2, v5, :cond_4

    .line 370
    const-string v5, "select sql from sqlite_master where sql like \'%mmsc2 text%\'"

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 373
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 374
    :cond_1
    const-string v5, "ALTER TABLE carriers ADD COLUMN mmsc2 TEXT;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 377
    :cond_2
    if-eqz v1, :cond_3

    .line 378
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 381
    :cond_3
    const p2, 0x60006

    .line 384
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_4
    const v5, 0x70006

    if-ge p2, v5, :cond_8

    .line 388
    const-string v5, "select sql from sqlite_master where sql like \'%spn text%\'"

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 391
    .local v3, cursor2:Landroid/database/Cursor;
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_6

    .line 394
    :cond_5
    const-string v5, "ALTER TABLE carriers ADD COLUMN spn TEXT;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 397
    :cond_6
    if-eqz v3, :cond_7

    .line 398
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_7
    const p2, 0x70006

    .line 404
    .end local v3           #cursor2:Landroid/database/Cursor;
    :cond_8
    const v5, 0x80006

    if-ge p2, v5, :cond_c

    .line 408
    const-string v5, "select sql from sqlite_master where sql like \'%preloaded text%\'"

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 411
    .local v4, cursor3:Landroid/database/Cursor;
    if-eqz v4, :cond_9

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_a

    .line 412
    :cond_9
    const-string v5, "ALTER TABLE carriers ADD COLUMN preloaded TEXT;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 414
    :cond_a
    if-eqz v4, :cond_b

    .line 415
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_b
    const p2, 0x80006

    .line 423
    .end local v4           #cursor3:Landroid/database/Cursor;
    :cond_c
    const v5, 0x90006

    if-ge p2, v5, :cond_10

    .line 427
    const-string v5, "select sql from sqlite_master where sql like \'%class INTEGER%\'"

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 431
    .restart local v1       #cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_d

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_e

    .line 432
    :cond_d
    const-string v5, "ALTER TABLE carriers ADD COLUMN inactivetimer INTEGER DEFAULT -1;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 434
    const-string v5, "ALTER TABLE carriers ADD COLUMN enabled BOOLEAN;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 436
    const-string v5, "ALTER TABLE carriers ADD COLUMN iptype TEXT;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 438
    const-string v5, "ALTER TABLE carriers ADD COLUMN class INTEGER DEFAULT 0;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 441
    :cond_e
    if-eqz v1, :cond_f

    .line 442
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 445
    :cond_f
    const p2, 0x90006

    .line 450
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_10
    const v5, 0xa0006

    if-ge p2, v5, :cond_14

    .line 455
    const-string v5, "select sql from sqlite_master where sql like \'%mtusize INTEGER%\'"

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 458
    .restart local v1       #cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_12

    .line 459
    :cond_11
    const-string v5, "ALTER TABLE carriers ADD COLUMN mtusize INTEGER;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 461
    :cond_12
    if-eqz v1, :cond_13

    .line 462
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_13
    const p2, 0xa0006

    .line 469
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_14
    const v5, 0xb0006

    if-ge p2, v5, :cond_18

    .line 473
    const-string v5, "select sql from sqlite_master where sql like \'%roaming_protocol TEXT%\'"

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 477
    .restart local v1       #cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_15

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_16

    .line 479
    :cond_15
    const-string v5, "ALTER TABLE carriers ADD COLUMN protocol TEXT DEFAULT IP;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 481
    const-string v5, "ALTER TABLE carriers ADD COLUMN roaming_protocol TEXT DEFAULT IP;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 484
    :cond_16
    if-eqz v1, :cond_17

    .line 485
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 488
    :cond_17
    const p2, 0xb0006

    .line 492
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_18
    const v5, 0xc0006

    if-ge p2, v5, :cond_1b

    .line 494
    const-string v5, "select sql from sqlite_master where sql like \'%iptype TEXT%\'"

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 498
    .restart local v1       #cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_19

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_19

    .line 500
    const-string v5, "UPDATE carriers SET protocol = iptype where iptype is not null;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 503
    :cond_19
    if-eqz v1, :cond_1a

    .line 504
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 507
    :cond_1a
    const p2, 0xc0006

    .line 512
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_1b
    const v5, 0xd0006

    if-ge p2, v5, :cond_1f

    .line 513
    const-string v5, "select sql from sqlite_master where sql like \'%datatech INTEGER%\'"

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 516
    .restart local v1       #cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1c

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1d

    .line 517
    :cond_1c
    const-string v5, "ALTER TABLE carriers ADD COLUMN datatech INTEGER DEFAULT 0;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 519
    :cond_1d
    if-eqz v1, :cond_1e

    .line 520
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 523
    :cond_1e
    const p2, 0xd0006

    .line 527
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_1f
    const v5, 0xe0006

    if-ge p2, v5, :cond_24

    .line 530
    const-string v5, "ALTER TABLE carriers ADD COLUMN carrier_enabled BOOLEAN DEFAULT 1;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 532
    const-string v5, "ALTER TABLE carriers ADD COLUMN bearer INTEGER DEFAULT 0;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 537
    const-string v5, "select sql from sqlite_master where sql like \'%enabled BOOLEAN%\'"

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 541
    .restart local v1       #cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_20

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_20

    .line 543
    const-string v5, "UPDATE carriers SET carrier_enabled = enabled where enabled is not null;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 547
    :cond_20
    if-eqz v1, :cond_21

    .line 548
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 552
    :cond_21
    const-string v5, "select sql from sqlite_master where sql like \'%datatech INTEGER%\'"

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 556
    .local v2, cursor1:Landroid/database/Cursor;
    if-eqz v2, :cond_22

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_22

    .line 558
    const-string v5, "UPDATE carriers SET bearer = datatech;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 561
    :cond_22
    if-eqz v2, :cond_23

    .line 562
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 566
    :cond_23
    const p2, 0xe0006

    .line 568
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #cursor1:Landroid/database/Cursor;
    :cond_24
    const v5, 0xf0006

    if-ge p2, v5, :cond_28

    .line 571
    const-string v5, "select sql from sqlite_master where sql like \'%mtusize INTEGER%\'"

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 574
    .restart local v1       #cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_25

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_26

    .line 575
    :cond_25
    const-string v5, "ALTER TABLE carriers ADD COLUMN mtusize INTEGER;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 577
    :cond_26
    if-eqz v1, :cond_27

    .line 578
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 582
    :cond_27
    const-string v5, "ALTER TABLE carriers RENAME TO carriers_temp"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 583
    const-string v5, "CREATE TABLE carriers(_id INTEGER PRIMARY KEY,name TEXT,numeric TEXT,mcc TEXT,mnc TEXT,apn TEXT,user TEXT,server TEXT,password TEXT,proxy TEXT,port TEXT,mmsproxy TEXT,mmsport TEXT,mmsc TEXT,mmsc2 TEXT,authtype INTEGER,mtusize INTEGER,type TEXT,inactivetimer INTEGER,enabled BOOLEAN,class INTEGER,current INTEGER,spn TEXT,protocol TEXT,roaming_protocol TEXT,carrier_enabled BOOLEAN,bearer INTEGER,preloaded TEXT);"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 613
    const-string v0, "_id,name,numeric,mcc,mnc,apn,user,server,password,proxy,port,mmsproxy,mmsport,mmsc,mmsc2,authtype,mtusize,type,inactivetimer,enabled,class,current,spn,protocol,roaming_protocol,carrier_enabled,bearer,preloaded"

    .line 617
    .local v0, FIELD_LIST:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO carriers ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") SELECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from carriers_temp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 618
    const-string v5, "DROP TABLE carriers_temp"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 619
    const p2, 0xf0006

    .line 622
    .end local v0           #FIELD_LIST:Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_28
    const v5, 0x100006

    if-ge p2, v5, :cond_29

    .line 623
    const-string v5, "ALTER TABLE carriers RENAME TO carriers_temp"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 624
    const-string v5, "CREATE TABLE carriers(_id INTEGER PRIMARY KEY,name TEXT,numeric TEXT,mcc TEXT,mnc TEXT,apn TEXT,user TEXT,server TEXT,password TEXT,proxy TEXT,port TEXT,mmsproxy TEXT,mmsport TEXT,mmsc TEXT,mmsc2 TEXT,authtype INTEGER,mtusize INTEGER,type TEXT,inactivetimer INTEGER,class INTEGER,current INTEGER,spn TEXT,protocol TEXT,roaming_protocol TEXT,carrier_enabled BOOLEAN,bearer INTEGER,preloaded TEXT);"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 653
    const-string v0, "_id,name,numeric,mcc,mnc,apn,user,server,password,proxy,port,mmsproxy,mmsport,mmsc,mmsc2,authtype,mtusize,type,inactivetimer,class,current,spn,protocol,roaming_protocol,carrier_enabled,bearer,preloaded"

    .line 657
    .restart local v0       #FIELD_LIST:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO carriers ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") SELECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from carriers_temp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 658
    const-string v5, "DROP TABLE carriers_temp"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 659
    const p2, 0x100006

    .line 662
    .end local v0           #FIELD_LIST:Ljava/lang/String;
    :cond_29
    return-void
.end method
