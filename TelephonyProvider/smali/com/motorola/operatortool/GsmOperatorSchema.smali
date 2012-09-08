.class public Lcom/motorola/operatortool/GsmOperatorSchema;
.super Ljava/lang/Object;
.source "GsmOperatorSchema.java"


# static fields
.field private static final DEFLANG:Ljava/lang/String; = "default"

.field private static final GSMLONGNAME:Ljava/lang/String; = "gsm_operator_long_name_"

.field private static final GSMRES:Ljava/lang/String; = "gsm_operator_"

.field private static final INFOINSSQL:Ljava/lang/String; = "insert into gsm_operator_info (_id, operator_name, operator_long_name, language_support, ignore_spn, international_roaming_callback, roaming_spn, roaming_operator_id) values "

.field private static final MCCINSSQL:Ljava/lang/String; = "insert into gsm_mccmnc_table (operator_id, mcc_mnc_no) values "

.field private static final PREFIX:Ljava/lang/String; = "values"

.field private static final RESFNAME:Ljava/lang/String; = "gsm_operator_name.xml"


# instance fields
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

.field private mOperatorInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/operatortool/GsmOperatorXmlInfo;",
            ">;"
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
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mNameMap:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mOperatorInfoList:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    .line 45
    invoke-direct {p0}, Lcom/motorola/operatortool/GsmOperatorSchema;->createSqlSchema()V

    .line 46
    return-void
.end method

.method private addNameMap(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "language"
    .parameter "name"
    .parameter "longname"

    .prologue
    .line 85
    iget-object v2, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mNameMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mNameMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 87
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/operatortool/ResourceItem;>;"
    new-instance v1, Lcom/motorola/operatortool/ResourceItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm_operator_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/motorola/operatortool/ResourceItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v1, resItem:Lcom/motorola/operatortool/ResourceItem;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    if-eqz p4, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    new-instance v1, Lcom/motorola/operatortool/ResourceItem;

    .end local v1           #resItem:Lcom/motorola/operatortool/ResourceItem;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm_operator_long_name_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lcom/motorola/operatortool/ResourceItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .restart local v1       #resItem:Lcom/motorola/operatortool/ResourceItem;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 94
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/operatortool/ResourceItem;>;"
    .end local v1           #resItem:Lcom/motorola/operatortool/ResourceItem;
    :cond_1
    new-instance v1, Lcom/motorola/operatortool/ResourceItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm_operator_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/motorola/operatortool/ResourceItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .restart local v1       #resItem:Lcom/motorola/operatortool/ResourceItem;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/operatortool/ResourceItem;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    if-eqz p4, :cond_2

    const-string v2, ""

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 98
    new-instance v1, Lcom/motorola/operatortool/ResourceItem;

    .end local v1           #resItem:Lcom/motorola/operatortool/ResourceItem;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm_operator_long_name_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lcom/motorola/operatortool/ResourceItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .restart local v1       #resItem:Lcom/motorola/operatortool/ResourceItem;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_2
    iget-object v2, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mNameMap:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private createSqlSchema()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "drop table if exists gsm_operator_info;\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "create table gsm_operator_info(\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    _id                   integer primary key,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    operator_name         text not null,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    operator_long_name    text not null,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    language_support      text not null,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    ignore_spn            text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    roaming_spn           text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    roaming_operator_id   text,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    international_roaming_callback text);\n\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "drop table if exists gsm_mccmnc_table;\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "create table gsm_mccmnc_table (\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    _id         integer primary key autoincrement,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    operator_id integer not null,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    mcc_mnc_no  integer not null);\n\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "drop index if exists gsm_mccmnc_index;\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "create index gsm_mccmnc_index on gsm_mccmnc_table(mcc_mnc_no);\n\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "drop view if exists gsm_operator_mccmnc_view;\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "create view gsm_operator_mccmnc_view as \n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    select A._id,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.operator_name,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.operator_long_name,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.language_support,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.ignore_spn,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.international_roaming_callback,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.roaming_spn,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           A.roaming_operator_id,\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "           B.mcc_mnc_no\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    from gsm_operator_info as A, gsm_mccmnc_table as B\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    const-string v1, "    where B.operator_id = A._id;\n\n\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method


# virtual methods
.method public genResFile(Ljava/lang/String;)V
    .locals 5
    .parameter "projPath"

    .prologue
    .line 152
    iget-object v3, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mNameMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 153
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    .local v1, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 156
    .local v2, resFileName:Ljava/lang/String;
    const-string v3, "default"

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
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

    const-string v4, "gsm_operator_name.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    :goto_1
    iget-object v3, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mNameMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3, v2}, Lcom/motorola/operatortool/GenResXmlFile;->createResXml(Ljava/util/List;Ljava/lang/String;)Z

    goto :goto_0

    .line 159
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

    const-string v4, "gsm_operator_name.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 164
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
    .line 168
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 169
    .local v2, writer:Ljava/io/FileWriter;
    const-string v3, "begin;\n"

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 170
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 171
    iget-object v3, p0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_0
    const-string v3, "commit;\n"

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v1           #i:I
    .end local v2           #writer:Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public initSchema(Ljava/lang/String;)V
    .locals 23
    .parameter "fName"

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/operatortool/GsmOperatorSchema;->mOperatorInfoList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/motorola/operatortool/ParseOperator;->parseGsmOperatorInfo(Ljava/lang/String;Ljava/util/List;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/operatortool/GsmOperatorSchema;->mOperatorInfoList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 108
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/motorola/operatortool/GsmOperatorXmlInfo;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 109
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/operatortool/GsmOperatorXmlInfo;

    .line 110
    .local v6, info:Lcom/motorola/operatortool/GsmOperatorXmlInfo;
    invoke-virtual {v6}, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->getLanuageNameMap()Ljava/util/Map;

    move-result-object v7

    .line 111
    .local v7, infoLanguageNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 112
    .local v10, languageIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {v6}, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->getId()I

    move-result v5

    .line 113
    .local v5, id:I
    invoke-virtual {v6}, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->getIntl_roam_callback()Ljava/lang/String;

    move-result-object v18

    .line 114
    .local v18, sIntlroam:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->getIgnoreSpn()Ljava/lang/String;

    move-result-object v17

    .line 115
    .local v17, sIgnoreSpn:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->getRoamingSpn()Ljava/lang/String;

    move-result-object v20

    .line 116
    .local v20, sRoamingSpn:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->getRoamingOperatorId()Ljava/lang/String;

    move-result-object v19

    .line 117
    .local v19, sRoamingOperatorId:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    .local v2, buf:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 119
    .local v4, defaultName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 120
    .local v3, defaultLongName:Ljava/lang/String;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 121
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 122
    .local v9, language:Ljava/lang/String;
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 123
    .local v15, name:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->getLanuageLongNameMap()Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 124
    .local v12, longname:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v15, v12}, Lcom/motorola/operatortool/GsmOperatorSchema;->addNameMap(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v21, "default"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v21

    if-lez v21, :cond_0

    .line 127
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 129
    :cond_0
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 132
    :cond_1
    move-object v4, v15

    .line 133
    move-object v3, v12

    goto :goto_1

    .line 136
    .end local v9           #language:Ljava/lang/String;
    .end local v12           #longname:Ljava/lang/String;
    .end local v15           #name:Ljava/lang/String;
    :cond_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "insert into gsm_operator_info (_id, operator_name, operator_long_name, language_support, ignore_spn, international_roaming_callback, roaming_spn, roaming_operator_id) values ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\', \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\', \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\', \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\', \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\', \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\', \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\');\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 139
    .local v16, operatorSql:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v6}, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->getMccMncList()Ljava/util/List;

    move-result-object v11

    .line 142
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 143
    .local v13, mccmncIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 144
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "insert into gsm_mccmnc_table (operator_id, mcc_mnc_no) values ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ");\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 145
    .local v14, mccmncSql:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 147
    .end local v14           #mccmncSql:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/operatortool/GsmOperatorSchema;->mSqlList:Ljava/util/List;

    move-object/from16 v21, v0

    const-string v22, "\n"

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 149
    .end local v2           #buf:Ljava/lang/StringBuffer;
    .end local v3           #defaultLongName:Ljava/lang/String;
    .end local v4           #defaultName:Ljava/lang/String;
    .end local v5           #id:I
    .end local v6           #info:Lcom/motorola/operatortool/GsmOperatorXmlInfo;
    .end local v7           #infoLanguageNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #languageIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v13           #mccmncIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v16           #operatorSql:Ljava/lang/String;
    .end local v17           #sIgnoreSpn:Ljava/lang/String;
    .end local v18           #sIntlroam:Ljava/lang/String;
    .end local v19           #sRoamingOperatorId:Ljava/lang/String;
    .end local v20           #sRoamingSpn:Ljava/lang/String;
    :cond_4
    return-void
.end method
