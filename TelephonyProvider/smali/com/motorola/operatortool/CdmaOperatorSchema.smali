.class public Lcom/motorola/operatortool/CdmaOperatorSchema;
.super Ljava/lang/Object;
.source "CdmaOperatorSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/operatortool/CdmaOperatorSchema$1;,
        Lcom/motorola/operatortool/CdmaOperatorSchema$LightComparator;
    }
.end annotation


# static fields
.field private static final CDMALONGNAME:Ljava/lang/String; = "cdma_operator_long_name_"

.field private static final CDMARES:Ljava/lang/String; = "cdma_operator_"

.field private static final CONFLICTFILE:Ljava/lang/String; = "unresolvable_conflict.xml"

.field private static final DEFLANG:Ljava/lang/String; = "default"

.field private static final INFOINSSQL1:Ljava/lang/String; = "insert into cdma_operator_info (_id, operator_name"

.field private static final INFOINSSQL2:Ljava/lang/String; = ") values ("

.field private static final INSCONSQL1:Ljava/lang/String; = "insert into cdma_unresolvable_conflict (sid, operator_id) select "

.field private static final INSCONSQL2:Ljava/lang/String; = ", _id from cdma_operator_info where operator_name = \'"

.field private static final INSMCCSQL:Ljava/lang/String; = "insert into cdma_mcc_mnc_table (operator_id, mcc_mnc_no) values ("

.field private static final INSSIDSQL:Ljava/lang/String; = "insert into cdma_sid_nid_table (operator_id, sidmin, sidmax, nidmin, nidmax, timezone) values ("

.field private static final PREFIX:Ljava/lang/String; = "values"

.field private static final RESFNAME:Ljava/lang/String; = "cdma_operator_name.xml"


# instance fields
.field private mConflictList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/operatortool/ResourceItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSqlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mNameMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mConflictList:Ljava/util/List;

    .line 52
    invoke-direct {p0}, Lcom/motorola/operatortool/CdmaOperatorSchema;->createSqlSchema()V

    .line 53
    return-void
.end method

.method private addNameMap(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "language"
    .parameter "name"
    .parameter "longname"

    .prologue
    .line 275
    iget-object v2, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mNameMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    iget-object v2, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mNameMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 277
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/operatortool/ResourceItem;>;"
    new-instance v1, Lcom/motorola/operatortool/ResourceItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdma_operator_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/motorola/operatortool/ResourceItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .local v1, resItem:Lcom/motorola/operatortool/ResourceItem;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    if-eqz p4, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    new-instance v1, Lcom/motorola/operatortool/ResourceItem;

    .end local v1           #resItem:Lcom/motorola/operatortool/ResourceItem;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdma_operator_long_name_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lcom/motorola/operatortool/ResourceItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .restart local v1       #resItem:Lcom/motorola/operatortool/ResourceItem;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 284
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/operatortool/ResourceItem;>;"
    .end local v1           #resItem:Lcom/motorola/operatortool/ResourceItem;
    :cond_1
    new-instance v1, Lcom/motorola/operatortool/ResourceItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdma_operator_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/motorola/operatortool/ResourceItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .restart local v1       #resItem:Lcom/motorola/operatortool/ResourceItem;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/operatortool/ResourceItem;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    if-eqz p4, :cond_2

    const-string v2, ""

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 288
    new-instance v1, Lcom/motorola/operatortool/ResourceItem;

    .end local v1           #resItem:Lcom/motorola/operatortool/ResourceItem;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdma_operator_long_name_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lcom/motorola/operatortool/ResourceItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .restart local v1       #resItem:Lcom/motorola/operatortool/ResourceItem;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_2
    iget-object v2, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mNameMap:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private createSqlSchema()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "drop table if exists cdma_operator_info;\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "create table cdma_operator_info(\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    _id                         integer primary key,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    operator_name                              text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    operator_long_name                         text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    unconditional_call_forward_enable          text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    unconditional_call_forward_disable         text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    default_call_forword_enable                text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    default_call_forword_disable               text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    busy_call_forword_enable                   text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    busy_call_forword_disable                  text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    no_answer_call_forword_enable              text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    no_answer_call_forword_disable             text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    cancel_all_call_forword_enable             text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    cancel_all_call_forword_disable            text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    international_call_forward_enable          text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    international_call_forward_disable         text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    unconditional_call_forward_to_vms_enable   text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    unconditional_call_forward_to_vms_disable  text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    busy_call_forward_to_vms_enable            text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    busy_call_forward_to_vms_disable           text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    no_answer_call_forward_to_vms_enable       text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    no_answer_call_forward_to_vms_disable      text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    do_not_disturb_enable                      text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    do_not_disturb_disable                     text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    voice_mail_notification_enable             text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    voice_mail_notification_disable            text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    voice_mail_number                          text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    call_waitting_enable                       text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    call_waitting_disable                      text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    three_way_call_feature_code                text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    pause_resume_feature_code                  text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    emergency_call_back           integer default 1,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    pref                          integer default 1,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    ignore_spn                    integer default 0,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    international_roaming_callback  text);\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "drop table if exists cdma_sid_nid_table;\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "create table cdma_sid_nid_table(\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    _id integer primary key autoincrement,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    operator_id integer not null,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    sidmin      integer not null,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    sidmax      integer not null,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    nidmin      integer not null,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    nidmax      integer not null,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    timezone    integer not null);\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "drop table if exists cdma_mcc_mnc_table;\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "create table cdma_mcc_mnc_table (\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    _id integer primary key autoincrement,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    operator_id integer not null,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    mcc_mnc_no  integer not null);\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "drop index if exists cdma_sidmin_index;\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "create index cdma_sidmin_index on cdma_sid_nid_table(sidmin);\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "drop index if exists cdma_mcc_mnc_index;\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "create index cdma_mcc_mnc_index on cdma_mcc_mnc_table(mcc_mnc_no);\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "drop view if exists cdma_operator_sidnid_view;\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "create view cdma_operator_sidnid_view as\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    select A._id,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.operator_name,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.operator_long_name,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.unconditional_call_forward_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.unconditional_call_forward_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.default_call_forword_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.default_call_forword_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.busy_call_forword_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.busy_call_forword_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.no_answer_call_forword_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.no_answer_call_forword_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.cancel_all_call_forword_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.cancel_all_call_forword_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.international_call_forward_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.international_call_forward_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.unconditional_call_forward_to_vms_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.unconditional_call_forward_to_vms_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.busy_call_forward_to_vms_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.busy_call_forward_to_vms_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.no_answer_call_forward_to_vms_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.no_answer_call_forward_to_vms_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.do_not_disturb_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.do_not_disturb_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.voice_mail_notification_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.voice_mail_notification_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.voice_mail_number,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.call_waitting_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.call_waitting_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.three_way_call_feature_code,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.pause_resume_feature_code,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.emergency_call_back,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.pref,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.ignore_spn,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.international_roaming_callback,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           B.sidmin,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           B.sidmax,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           B.nidmin,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           B.nidmax,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           B.timezone\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    from cdma_operator_info as A, cdma_sid_nid_table as B\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    where B.operator_id = A._id;\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "drop view if exists cdma_operator_mccmnc_view;\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "create view cdma_operator_mccmnc_view as\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    select A._id,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.operator_name,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.operator_long_name,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.unconditional_call_forward_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.unconditional_call_forward_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.default_call_forword_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.default_call_forword_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.busy_call_forword_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.busy_call_forword_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.no_answer_call_forword_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.no_answer_call_forword_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.cancel_all_call_forword_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.cancel_all_call_forword_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.international_call_forward_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.international_call_forward_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.unconditional_call_forward_to_vms_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.unconditional_call_forward_to_vms_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.busy_call_forward_to_vms_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.busy_call_forward_to_vms_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.no_answer_call_forward_to_vms_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.no_answer_call_forward_to_vms_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.do_not_disturb_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.do_not_disturb_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.voice_mail_notification_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.voice_mail_notification_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.voice_mail_number,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.call_waitting_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.call_waitting_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.three_way_call_feature_code,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.pause_resume_feature_code,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.emergency_call_back,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.pref,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.ignore_spn,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.international_roaming_callback,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           B.mcc_mnc_no\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    from cdma_operator_info as A, cdma_mcc_mnc_table as B\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    where B.operator_id = A._id;\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "drop table if exists cdma_unresolvable_conflict;\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "create table cdma_unresolvable_conflict (\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    _id integer primary key autoincrement,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    sid         integer not null,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    operator_id integer not null);\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "drop view if exists cdma_unresolvable_conflict_view;\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "create view cdma_unresolvable_conflict_view as\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    select A._id,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.operator_name,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.operator_long_name,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.unconditional_call_forward_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.unconditional_call_forward_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.default_call_forword_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.default_call_forword_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.busy_call_forword_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.busy_call_forword_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.no_answer_call_forword_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.no_answer_call_forword_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.cancel_all_call_forword_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.cancel_all_call_forword_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.international_call_forward_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.international_call_forward_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.unconditional_call_forward_to_vms_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.unconditional_call_forward_to_vms_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.busy_call_forward_to_vms_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.busy_call_forward_to_vms_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.no_answer_call_forward_to_vms_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.no_answer_call_forward_to_vms_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.do_not_disturb_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.do_not_disturb_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.voice_mail_notification_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.voice_mail_notification_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.voice_mail_number,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.call_waitting_enable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.call_waitting_disable,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.three_way_call_feature_code,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.pause_resume_feature_code,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.emergency_call_back,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.pref,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.ignore_spn,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.international_roaming_callback,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           B.sid\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    from cdma_operator_info as A, cdma_unresolvable_conflict as B\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    where B.operator_id = A._id;\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method private listFiles(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .parameter "sPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 247
    .local p2, list:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 248
    .local v8, sConflictFile:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, files:[Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 252
    if-eqz v1, :cond_2

    .line 253
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v9, v1

    if-ge v3, v9, :cond_2

    .line 254
    aget-object v9, v1, v3

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    .line 255
    aget-object v9, v1, v3

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, fullName:Ljava/lang/String;
    aget-object v9, v1, v3

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, name:Ljava/lang/String;
    const-string v9, "cdma.*\\.xml"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 258
    .local v7, p:Ljava/util/regex/Pattern;
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 259
    .local v5, m:Ljava/util/regex/Matcher;
    const-string v9, "unresolvable_conflict.xml"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 260
    move-object v8, v2

    .line 253
    .end local v2           #fullName:Ljava/lang/String;
    .end local v5           #m:Ljava/util/regex/Matcher;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #p:Ljava/util/regex/Pattern;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 261
    .restart local v2       #fullName:Ljava/lang/String;
    .restart local v5       #m:Ljava/util/regex/Matcher;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #p:Ljava/util/regex/Pattern;
    :cond_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 262
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    .line 263
    .local v4, item:[Ljava/lang/String;
    const/4 v9, 0x0

    aput-object v2, v4, v9

    .line 264
    const/4 v9, 0x1

    aput-object v6, v4, v9

    .line 265
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 271
    .end local v1           #files:[Ljava/io/File;
    .end local v2           #fullName:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #item:[Ljava/lang/String;
    .end local v5           #m:Ljava/util/regex/Matcher;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #p:Ljava/util/regex/Pattern;
    :cond_2
    return-object v8
.end method


# virtual methods
.method public checkConflictTable(Ljava/lang/String;)V
    .locals 12
    .parameter "overlayConflictName"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 296
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v5, list:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    invoke-static {p1, v5}, Lcom/motorola/operatortool/ParseOperator;->parseCdmaConflictFile(Ljava/lang/String;Ljava/util/List;)V

    .line 298
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 299
    const/4 v1, 0x1

    .line 300
    .local v1, flag:Z
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 301
    .local v6, newSidName:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    iget-object v8, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mConflictList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 302
    iget-object v8, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mConflictList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 303
    .local v7, oldSidName:[Ljava/lang/String;
    aget-object v8, v7, v10

    aget-object v9, v6, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 304
    aget-object v8, v6, v11

    aput-object v8, v7, v11

    .line 305
    iget-object v8, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mConflictList:Ljava/util/List;

    invoke-interface {v8, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 306
    const/4 v1, 0x0

    .line 301
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 309
    .end local v7           #oldSidName:[Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 310
    iget-object v8, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mConflictList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    .end local v1           #flag:Z
    .end local v4           #j:I
    .end local v6           #newSidName:[Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .line 314
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    :goto_2
    iget-object v8, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mConflictList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 315
    iget-object v8, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mConflictList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 316
    .local v3, item:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 317
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    const-string v8, "insert into cdma_unresolvable_conflict (sid, operator_id) select "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    aget-object v8, v3, v10

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    const-string v8, ", _id from cdma_operator_info where operator_name = \'"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    aget-object v8, v3, v11

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    const-string v8, "\';\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    iget-object v8, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 324
    .end local v3           #item:[Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public genResFile(Ljava/lang/String;)V
    .locals 5
    .parameter "projPath"

    .prologue
    .line 450
    iget-object v3, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mNameMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 451
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 452
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    .local v1, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 454
    .local v2, resFileName:Ljava/lang/String;
    const-string v3, "default"

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "values"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cdma_operator_name.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    :goto_1
    iget-object v3, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mNameMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3, v2}, Lcom/motorola/operatortool/GenResXmlFile;->createResXml(Ljava/util/List;Ljava/lang/String;)Z

    goto :goto_0

    .line 457
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "values"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cdma_operator_name.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 462
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #resFileName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public genSqlScript(Ljava/lang/String;Z)V
    .locals 4
    .parameter "sqlFileName"
    .parameter "append"

    .prologue
    .line 466
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 467
    .local v2, writer:Ljava/io/FileWriter;
    const-string v3, "begin;\n"

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 468
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 469
    iget-object v3, p0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    :cond_0
    const-string v3, "commit;\n"

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v1           #i:I
    .end local v2           #writer:Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public initSchema(Ljava/lang/String;)V
    .locals 35
    .parameter "operatorFilePath"

    .prologue
    .line 337
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v12, fileList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/motorola/operatortool/CdmaOperatorSchema;->listFiles(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 339
    .local v8, conflictFileName:Ljava/lang/String;
    new-instance v31, Lcom/motorola/operatortool/CdmaOperatorSchema$LightComparator;

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/motorola/operatortool/CdmaOperatorSchema$LightComparator;-><init>(Lcom/motorola/operatortool/CdmaOperatorSchema;Lcom/motorola/operatortool/CdmaOperatorSchema$1;)V

    move-object/from16 v0, v31

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 340
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v31

    if-nez v31, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v14, v0, :cond_9

    .line 344
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Ljava/lang/String;

    const/16 v32, 0x1

    aget-object v31, v31, v32

    const-string v32, "_"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 345
    .local v30, strs:[Ljava/lang/String;
    const/16 v15, 0x3e8

    .line 347
    .local v15, id:I
    const/16 v31, 0x1

    :try_start_0
    aget-object v31, v30, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 354
    :goto_2
    new-instance v16, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;-><init>(I)V

    .line 355
    .local v16, info:Lcom/motorola/operatortool/CdmaOperatorXmlInfo;
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Ljava/lang/String;

    const/16 v32, 0x0

    aget-object v13, v31, v32

    .line 356
    .local v13, fileName:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/motorola/operatortool/ParseOperator;->parseCdmaOperatorInfo(Ljava/lang/String;Lcom/motorola/operatortool/CdmaOperatorXmlInfo;)V

    .line 357
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->getLanguageNameMap()Ljava/util/Map;

    move-result-object v18

    .line 358
    .local v18, infoLanguageNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 359
    .local v23, languageIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v28, 0x0

    .line 360
    .local v28, sqlBuf1:Ljava/lang/StringBuffer;
    const/16 v29, 0x0

    .line 361
    .local v29, sqlBuf2:Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    .line 362
    .local v10, defaultName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 363
    .local v9, defaultLongName:Ljava/lang/String;
    :cond_2
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 364
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 365
    .local v22, language:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 366
    .local v26, name:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->getLanguageLongNameMap()Ljava/util/Map;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 367
    .local v24, longname:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->getId()I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v22

    move-object/from16 v3, v26

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/operatortool/CdmaOperatorSchema;->addNameMap(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v31, "default"

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 369
    move-object/from16 v10, v26

    .line 370
    move-object/from16 v9, v26

    goto :goto_3

    .line 348
    .end local v9           #defaultLongName:Ljava/lang/String;
    .end local v10           #defaultName:Ljava/lang/String;
    .end local v13           #fileName:Ljava/lang/String;
    .end local v16           #info:Lcom/motorola/operatortool/CdmaOperatorXmlInfo;
    .end local v18           #infoLanguageNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22           #language:Ljava/lang/String;
    .end local v23           #languageIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v24           #longname:Ljava/lang/String;
    .end local v26           #name:Ljava/lang/String;
    .end local v28           #sqlBuf1:Ljava/lang/StringBuffer;
    .end local v29           #sqlBuf2:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v11

    .line 349
    .local v11, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 350
    sget-object v32, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "The "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Ljava/lang/String;

    const/16 v34, 0x1

    aget-object v31, v31, v34

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v33, " file name is bad!"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    sget-object v31, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v32, "The Cdma Operator info filename should be cdma_No_...."

    invoke-virtual/range {v31 .. v32}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 352
    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_2

    .line 374
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #defaultLongName:Ljava/lang/String;
    .restart local v10       #defaultName:Ljava/lang/String;
    .restart local v13       #fileName:Ljava/lang/String;
    .restart local v16       #info:Lcom/motorola/operatortool/CdmaOperatorXmlInfo;
    .restart local v18       #infoLanguageNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23       #languageIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v28       #sqlBuf1:Ljava/lang/StringBuffer;
    .restart local v29       #sqlBuf2:Ljava/lang/StringBuffer;
    :cond_3
    new-instance v28, Ljava/lang/StringBuffer;

    .end local v28           #sqlBuf1:Ljava/lang/StringBuffer;
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    .line 375
    .restart local v28       #sqlBuf1:Ljava/lang/StringBuffer;
    const-string v31, "insert into cdma_operator_info (_id, operator_name"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    new-instance v29, Ljava/lang/StringBuffer;

    .end local v29           #sqlBuf2:Ljava/lang/StringBuffer;
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    .line 377
    .restart local v29       #sqlBuf2:Ljava/lang/StringBuffer;
    const-string v31, ") values ("

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->getId()I

    move-result v31

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 379
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ", \'"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\'"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_4

    .line 381
    const-string v31, ", operator_long_name"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ", \'"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\'"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->getInfoMap()Ljava/util/Map;

    move-result-object v19

    .line 385
    .local v19, infoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 386
    .local v17, infoIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_6

    .line 387
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 388
    .local v6, colName:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 389
    .local v7, colValue:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_5

    .line 390
    const/4 v5, 0x0

    .line 392
    .local v5, colIndex:I
    :try_start_1
    invoke-static {v6}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->getPropertyIndex(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 396
    :goto_5
    const-string v31, ", "

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    packed-switch v5, :pswitch_data_0

    .line 406
    const-string v31, ", \'"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    const-string v31, "\'"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 393
    :catch_1
    move-exception v11

    .line 394
    .local v11, e:Ljava/lang/Exception;
    sget-object v31, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "---"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 402
    .end local v11           #e:Ljava/lang/Exception;
    :pswitch_0
    const-string v31, ", "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 412
    .end local v5           #colIndex:I
    .end local v6           #colName:Ljava/lang/String;
    .end local v7           #colValue:Ljava/lang/String;
    :cond_6
    const-string v31, ");"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    move-object/from16 v31, v0

    const-string v32, "\n"

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->getSidNidTmzList()Ljava/util/List;

    move-result-object v27

    .line 418
    .local v27, sidList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    const/16 v21, 0x0

    .local v21, j:I
    :goto_6
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_7

    .line 419
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    .line 420
    .local v20, item:[Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuffer;

    .end local v28           #sqlBuf1:Ljava/lang/StringBuffer;
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    .line 421
    .restart local v28       #sqlBuf1:Ljava/lang/StringBuffer;
    const-string v31, "insert into cdma_sid_nid_table (operator_id, sidmin, sidmax, nidmin, nidmax, timezone) values ("

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->getId()I

    move-result v31

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 423
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x0

    aget-object v32, v20, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x1

    aget-object v32, v20, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x2

    aget-object v32, v20, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x3

    aget-object v32, v20, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x4

    aget-object v32, v20, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ");\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_6

    .line 430
    .end local v20           #item:[Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->getMccMncList()Ljava/util/List;

    move-result-object v25

    .line 431
    .local v25, mccList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v21, 0x0

    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    .line 432
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 433
    .local v20, item:Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuffer;

    .end local v28           #sqlBuf1:Ljava/lang/StringBuffer;
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    .line 434
    .restart local v28       #sqlBuf1:Ljava/lang/StringBuffer;
    const-string v31, "insert into cdma_mcc_mnc_table (operator_id, mcc_mnc_no) values ("

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->getId()I

    move-result v31

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 436
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ");\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 439
    .end local v20           #item:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mSqlList:Ljava/util/List;

    move-object/from16 v31, v0

    const-string v32, "\n\n"

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 442
    .end local v9           #defaultLongName:Ljava/lang/String;
    .end local v10           #defaultName:Ljava/lang/String;
    .end local v13           #fileName:Ljava/lang/String;
    .end local v15           #id:I
    .end local v16           #info:Lcom/motorola/operatortool/CdmaOperatorXmlInfo;
    .end local v17           #infoIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18           #infoLanguageNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19           #infoMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21           #j:I
    .end local v23           #languageIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v25           #mccList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v27           #sidList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    .end local v28           #sqlBuf1:Ljava/lang/StringBuffer;
    .end local v29           #sqlBuf2:Ljava/lang/StringBuffer;
    .end local v30           #strs:[Ljava/lang/String;
    :cond_9
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v31

    if-eqz v31, :cond_0

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/operatortool/CdmaOperatorSchema;->mConflictList:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v8, v0}, Lcom/motorola/operatortool/ParseOperator;->parseCdmaConflictFile(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 398
    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
