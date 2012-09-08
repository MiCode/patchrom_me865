.class public Lcom/motorola/operatortool/GsmOperatorXmlInfo;
.super Ljava/lang/Object;
.source "GsmOperatorXmlInfo.java"


# instance fields
.field private mId:I

.field private mIgnoreSpn:Ljava/lang/String;

.field private mIntlRoamCallback:Ljava/lang/String;

.field private mLanguageLongName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMccMncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRoamingOperatorId:Ljava/lang/String;

.field private mRoamingSpn:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mId:I

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mLanguageName:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mLanguageLongName:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mMccMncList:Ljava/util/List;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mIntlRoamCallback:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mIgnoreSpn:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mRoamingSpn:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mRoamingOperatorId:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public addMccmncList(Ljava/lang/String;)V
    .locals 1
    .parameter "mccmnc"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mMccMncList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mId:I

    return v0
.end method

.method public getIgnoreSpn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mIgnoreSpn:Ljava/lang/String;

    return-object v0
.end method

.method public getIntl_roam_callback()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mIntlRoamCallback:Ljava/lang/String;

    return-object v0
.end method

.method public getLanuageLongNameMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mLanguageLongName:Ljava/util/Map;

    return-object v0
.end method

.method public getLanuageNameMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mLanguageName:Ljava/util/Map;

    return-object v0
.end method

.method public getMccMncList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mMccMncList:Ljava/util/List;

    return-object v0
.end method

.method public getRoamingOperatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mRoamingOperatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoamingSpn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mRoamingSpn:Ljava/lang/String;

    return-object v0
.end method

.method public putLanguageLongName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "language"
    .parameter "longname"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mLanguageLongName:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public putLanguageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "language"
    .parameter "name"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mLanguageName:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public setIgnoreSpn(Ljava/lang/String;)V
    .locals 0
    .parameter "ignorspn"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mIgnoreSpn:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setIntl_roam_callback(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mIntlRoamCallback:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setRoamingOperatorId(Ljava/lang/String;)V
    .locals 0
    .parameter "roamingOperatorId"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mRoamingOperatorId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setRoamingSpn(Ljava/lang/String;)V
    .locals 0
    .parameter "roamingspn"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mRoamingSpn:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 98
    iget-object v6, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mLanguageName:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 99
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 100
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v0, buf:Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 104
    .local v2, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mLanguageName:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 105
    .local v5, value:Ljava/lang/String;
    iget-object v6, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mLanguageLongName:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 106
    .local v4, longName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Language=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", longname=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 108
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #longName:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mMccMncList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 109
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mccmnc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 112
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIntlRoamCallback="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mIntlRoamCallback:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIgnoreSpn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mIgnoreSpn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mRoamingSpn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mRoamingSpn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mRoamingOperatorId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->mRoamingOperatorId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
