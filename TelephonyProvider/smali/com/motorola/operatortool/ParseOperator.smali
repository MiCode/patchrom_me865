.class public Lcom/motorola/operatortool/ParseOperator;
.super Ljava/lang/Object;
.source "ParseOperator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 1
    .parameter "bytes"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/operatortool/ParseOperator;->bytesToHexStringInternal([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bytesToHexStringInternal([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "bytes"
    .parameter "strSep"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v4, 0x0

    .line 47
    :goto_0
    return-object v4

    .line 27
    :cond_0
    if-nez p1, :cond_2

    const/4 v3, 0x0

    .line 29
    .local v3, sepLen:I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x2

    array-length v5, p0

    mul-int/2addr v4, v5

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 31
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 34
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v0, v4, 0xf

    .line 36
    .local v0, b:I
    const-string v4, "0123456789abcdef"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    aget-byte v4, p0, v1

    and-int/lit8 v0, v4, 0xf

    .line 40
    const-string v4, "0123456789abcdef"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    if-lez v3, :cond_1

    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 27
    .end local v0           #b:I
    .end local v1           #i:I
    .end local v2           #ret:Ljava/lang/StringBuilder;
    .end local v3           #sepLen:I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    .line 47
    .restart local v1       #i:I
    .restart local v2       #ret:Ljava/lang/StringBuilder;
    .restart local v3       #sepLen:I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method static hexCharToInt(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 68
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 69
    add-int/lit8 v0, p0, -0x30

    .line 73
    :goto_0
    return v0

    .line 70
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 71
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 72
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 73
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 53
    if-nez p0, :cond_1

    .line 54
    const/4 v1, 0x0

    .line 64
    :cond_0
    return-object v1

    .line 56
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 58
    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 60
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 61
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/motorola/operatortool/ParseOperator;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/motorola/operatortool/ParseOperator;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 60
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .parameter "args"

    .prologue
    .line 274
    const-string v3, ""

    .line 275
    .local v3, gsmOperatorsFile:Ljava/lang/String;
    const-string v0, ""

    .line 276
    .local v0, cdmaOPeratorFilePath:Ljava/lang/String;
    const-string v7, ""

    .line 277
    .local v7, sqlScriptName:Ljava/lang/String;
    const-string v6, ""

    .line 278
    .local v6, resourcePath:Ljava/lang/String;
    const-string v1, ""

    .line 279
    .local v1, cdmaOverlayFileName:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v8, p0

    if-ge v5, v8, :cond_5

    .line 280
    aget-object v8, p0, v5

    const-string v9, "-gsm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 281
    add-int/lit8 v8, v5, 0x1

    aget-object v3, p0, v8

    .line 279
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 284
    :cond_1
    aget-object v8, p0, v5

    const-string v9, "-cdma"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 285
    add-int/lit8 v8, v5, 0x1

    aget-object v0, p0, v8

    .line 286
    goto :goto_1

    .line 288
    :cond_2
    aget-object v8, p0, v5

    const-string v9, "-sql"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 289
    add-int/lit8 v8, v5, 0x1

    aget-object v7, p0, v8

    .line 290
    goto :goto_1

    .line 292
    :cond_3
    aget-object v8, p0, v5

    const-string v9, "-res"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 293
    add-int/lit8 v8, v5, 0x1

    aget-object v6, p0, v8

    .line 294
    goto :goto_1

    .line 296
    :cond_4
    aget-object v8, p0, v5

    const-string v9, "-overlay"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 297
    add-int/lit8 v8, v5, 0x1

    aget-object v1, p0, v8

    goto :goto_1

    .line 301
    :cond_5
    new-instance v4, Lcom/motorola/operatortool/GsmOperatorSchema;

    invoke-direct {v4}, Lcom/motorola/operatortool/GsmOperatorSchema;-><init>()V

    .line 302
    .local v4, gsmSchema:Lcom/motorola/operatortool/GsmOperatorSchema;
    invoke-virtual {v4, v3}, Lcom/motorola/operatortool/GsmOperatorSchema;->initSchema(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v4, v6}, Lcom/motorola/operatortool/GsmOperatorSchema;->genResFile(Ljava/lang/String;)V

    .line 304
    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/motorola/operatortool/GsmOperatorSchema;->genSqlScript(Ljava/lang/String;Z)V

    .line 306
    new-instance v2, Lcom/motorola/operatortool/CdmaOperatorSchema;

    invoke-direct {v2}, Lcom/motorola/operatortool/CdmaOperatorSchema;-><init>()V

    .line 307
    .local v2, cdmaSchema:Lcom/motorola/operatortool/CdmaOperatorSchema;
    invoke-virtual {v2, v0}, Lcom/motorola/operatortool/CdmaOperatorSchema;->initSchema(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v2, v1}, Lcom/motorola/operatortool/CdmaOperatorSchema;->checkConflictTable(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v2, v6}, Lcom/motorola/operatortool/CdmaOperatorSchema;->genResFile(Ljava/lang/String;)V

    .line 310
    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Lcom/motorola/operatortool/CdmaOperatorSchema;->genSqlScript(Ljava/lang/String;Z)V

    .line 311
    return-void
.end method

.method public static parseCdmaConflictFile(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .parameter "filename"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, conList:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 157
    .local v3, fact:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 158
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 159
    .local v1, doc:Lorg/w3c/dom/Document;
    const-string v9, "operator_name"

    invoke-interface {v1, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 160
    .local v8, namelist:Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v5, v9, :cond_0

    .line 161
    invoke-interface {v8, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 162
    .local v7, name:Lorg/w3c/dom/Element;
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    .line 163
    .local v6, item:[Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "sid"

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .line 164
    const/4 v9, 0x1

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .line 165
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 160
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 167
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #doc:Lorg/w3c/dom/Document;
    .end local v3           #fact:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #i:I
    .end local v6           #item:[Ljava/lang/String;
    .end local v7           #name:Lorg/w3c/dom/Element;
    .end local v8           #namelist:Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v2

    .line 168
    .local v2, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 169
    .end local v2           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v2

    .line 170
    .local v2, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v2           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v2

    .line 172
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseCdmaOperatorInfo(Ljava/lang/String;Lcom/motorola/operatortool/CdmaOperatorXmlInfo;)V
    .locals 28
    .parameter "filename"
    .parameter "cdma"

    .prologue
    .line 177
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v13, file:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    .line 183
    .local v12, fact:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 184
    .local v7, builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v9

    .line 186
    .local v9, doc:Lorg/w3c/dom/Document;
    const-string v1, "operator_name"

    invoke-interface {v9, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 187
    .local v20, namelist:Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v14, v1, :cond_2

    .line 188
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    .line 189
    .local v19, name:Lorg/w3c/dom/Element;
    const-string v1, "language"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->putLanguageNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 192
    .end local v19           #name:Lorg/w3c/dom/Element;
    :cond_2
    const-string v1, "operator_long_name"

    invoke-interface {v9, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 193
    .local v17, longnamelist:Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    :goto_2
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v14, v1, :cond_3

    .line 194
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    .line 195
    .local v16, longname:Lorg/w3c/dom/Element;
    const-string v1, "language"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->putLanguageLongNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 199
    .end local v16           #longname:Lorg/w3c/dom/Element;
    :cond_3
    const-string v1, "pref"

    invoke-interface {v9, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 200
    .local v23, prefList:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_4

    .line 201
    const/4 v1, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 202
    .local v11, elem:Lorg/w3c/dom/Element;
    const-string v1, "pref"

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->putInfoMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .end local v11           #elem:Lorg/w3c/dom/Element;
    :cond_4
    const-string v1, "ignore_spn"

    invoke-interface {v9, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    .line 206
    .local v25, showspnfList:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_5

    .line 207
    const/4 v1, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 208
    .restart local v11       #elem:Lorg/w3c/dom/Element;
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v24

    .line 209
    .local v24, showSpn:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 210
    const-string v1, "ignore_spn"

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->putInfoMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v11           #elem:Lorg/w3c/dom/Element;
    .end local v24           #showSpn:Ljava/lang/String;
    :cond_5
    const-string v1, "call_forword"

    invoke-interface {v9, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 215
    .local v8, callforwordList:Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    :goto_3
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v14, v1, :cond_8

    .line 216
    invoke-interface {v8, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 217
    .restart local v11       #elem:Lorg/w3c/dom/Element;
    const/4 v15, 0x0

    .local v15, j:I
    :goto_4
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v15, v1, :cond_7

    .line 218
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    .line 219
    .local v21, node:Lorg/w3c/dom/Node;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 220
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->putInfoMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 215
    .end local v21           #node:Lorg/w3c/dom/Node;
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 225
    .end local v11           #elem:Lorg/w3c/dom/Element;
    .end local v15           #j:I
    :cond_8
    const-string v1, "waitting_info"

    invoke-interface {v9, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v27

    .line 226
    .local v27, waittingList:Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    :goto_5
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v14, v1, :cond_b

    .line 227
    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 228
    .restart local v11       #elem:Lorg/w3c/dom/Element;
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_6
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v15, v1, :cond_a

    .line 229
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    .line 230
    .restart local v21       #node:Lorg/w3c/dom/Node;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 231
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->putInfoMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 226
    .end local v21           #node:Lorg/w3c/dom/Node;
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 236
    .end local v11           #elem:Lorg/w3c/dom/Element;
    .end local v15           #j:I
    :cond_b
    const-string v1, "other_info"

    invoke-interface {v9, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    .line 237
    .local v22, otherList:Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    :goto_7
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v14, v1, :cond_e

    .line 238
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 239
    .restart local v11       #elem:Lorg/w3c/dom/Element;
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_8
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v15, v1, :cond_d

    .line 240
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    .line 241
    .restart local v21       #node:Lorg/w3c/dom/Node;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 242
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->putInfoMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 237
    .end local v21           #node:Lorg/w3c/dom/Node;
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 247
    .end local v11           #elem:Lorg/w3c/dom/Element;
    .end local v15           #j:I
    :cond_e
    const-string v1, "mccmnc"

    invoke-interface {v9, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 248
    .local v18, mccmncList:Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    :goto_9
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v14, v1, :cond_f

    .line 249
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 250
    .restart local v11       #elem:Lorg/w3c/dom/Element;
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->addMccMncList(Ljava/lang/String;)V

    .line 248
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 253
    .end local v11           #elem:Lorg/w3c/dom/Element;
    :cond_f
    const-string v1, "sidnidtmz"

    invoke-interface {v9, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    .line 254
    .local v26, sidnidList:Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    :goto_a
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v14, v1, :cond_0

    .line 255
    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 256
    .restart local v11       #elem:Lorg/w3c/dom/Element;
    const-string v1, "sidmin"

    invoke-interface {v11, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "sidmax"

    invoke-interface {v11, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "nidmin"

    invoke-interface {v11, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "nidmax"

    invoke-interface {v11, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "timezone"

    invoke-interface {v11, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/motorola/operatortool/CdmaOperatorXmlInfo;->addSidNidTmzList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 254
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 260
    .end local v7           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #callforwordList:Lorg/w3c/dom/NodeList;
    .end local v9           #doc:Lorg/w3c/dom/Document;
    .end local v11           #elem:Lorg/w3c/dom/Element;
    .end local v12           #fact:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14           #i:I
    .end local v17           #longnamelist:Lorg/w3c/dom/NodeList;
    .end local v18           #mccmncList:Lorg/w3c/dom/NodeList;
    .end local v20           #namelist:Lorg/w3c/dom/NodeList;
    .end local v22           #otherList:Lorg/w3c/dom/NodeList;
    .end local v23           #prefList:Lorg/w3c/dom/NodeList;
    .end local v25           #showspnfList:Lorg/w3c/dom/NodeList;
    .end local v26           #sidnidList:Lorg/w3c/dom/NodeList;
    .end local v27           #waittingList:Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v10

    .line 261
    .local v10, e:Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v10}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_0

    .line 263
    .end local v10           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v10

    .line 264
    .local v10, e:Lorg/xml/sax/SAXException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_0

    .line 266
    .end local v10           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v10

    .line 267
    .local v10, e:Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static parseGsmOperatorInfo(Ljava/lang/String;Ljava/util/List;)V
    .locals 30
    .parameter "filename"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/operatortool/GsmOperatorXmlInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/operatortool/GsmOperatorXmlInfo;>;"
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 85
    .local v6, fact:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 86
    .local v3, builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 88
    .local v4, doc:Lorg/w3c/dom/Document;
    const-string v28, "operator"

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    .line 89
    .local v24, operatorList:Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_0

    .line 90
    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/Element;

    .line 91
    .local v22, operator:Lorg/w3c/dom/Element;
    const-string v28, "operator_id"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    check-cast v28, Lorg/w3c/dom/Element;

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v25

    .line 93
    .local v25, operator_id:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 94
    .local v9, id:I
    new-instance v23, Lcom/motorola/operatortool/GsmOperatorXmlInfo;

    move-object/from16 v0, v23

    invoke-direct {v0, v9}, Lcom/motorola/operatortool/GsmOperatorXmlInfo;-><init>(I)V

    .line 95
    .local v23, operatorInfo:Lcom/motorola/operatortool/GsmOperatorXmlInfo;
    const-string v28, "operator_info"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 96
    .local v12, infoList:Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, j:I
    :goto_2
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    move/from16 v0, v28

    if-ge v14, v0, :cond_8

    .line 97
    invoke-interface {v12, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 98
    .local v11, info:Lorg/w3c/dom/Element;
    const-string v28, "operator_name"

    move-object/from16 v0, v28

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 99
    .local v20, nameList:Lorg/w3c/dom/NodeList;
    const/4 v15, 0x0

    .local v15, k:I
    :goto_3
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    move/from16 v0, v28

    if-ge v15, v0, :cond_2

    .line 100
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    .line 101
    .local v19, name:Lorg/w3c/dom/Element;
    const-string v28, "language"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->putLanguageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 104
    .end local v19           #name:Lorg/w3c/dom/Element;
    :cond_2
    const-string v28, "operator_long_name"

    move-object/from16 v0, v28

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 105
    .local v16, longnameList:Lorg/w3c/dom/NodeList;
    const/4 v15, 0x0

    :goto_4
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    move/from16 v0, v28

    if-ge v15, v0, :cond_3

    .line 106
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    .line 107
    .restart local v19       #name:Lorg/w3c/dom/Element;
    const-string v28, "language"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->putLanguageLongName(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 110
    .end local v19           #name:Lorg/w3c/dom/Element;
    :cond_3
    const-string v28, "international_roaming_callback"

    move-object/from16 v0, v28

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 112
    .local v13, intlroamList:Lorg/w3c/dom/NodeList;
    if-eqz v13, :cond_4

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    if-lez v28, :cond_4

    .line 113
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    .line 114
    .local v21, num:Lorg/w3c/dom/Element;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->setIntl_roam_callback(Ljava/lang/String;)V

    .line 116
    .end local v21           #num:Lorg/w3c/dom/Element;
    :cond_4
    const-string v28, "ignore_spn"

    move-object/from16 v0, v28

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 117
    .local v10, ignoreSpnList:Lorg/w3c/dom/NodeList;
    if-eqz v10, :cond_5

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    if-lez v28, :cond_5

    .line 118
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    .line 119
    .restart local v21       #num:Lorg/w3c/dom/Element;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v28

    const-string v29, "utf16"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/motorola/operatortool/ParseOperator;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->setIgnoreSpn(Ljava/lang/String;)V

    .line 122
    .end local v21           #num:Lorg/w3c/dom/Element;
    :cond_5
    const-string v28, "roaming_spn"

    move-object/from16 v0, v28

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v27

    .line 123
    .local v27, proRoamList:Lorg/w3c/dom/NodeList;
    if-eqz v27, :cond_6

    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    if-lez v28, :cond_6

    .line 124
    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    .line 125
    .restart local v21       #num:Lorg/w3c/dom/Element;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v28

    const-string v29, "utf16"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/motorola/operatortool/ParseOperator;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->setRoamingSpn(Ljava/lang/String;)V

    .line 128
    .end local v21           #num:Lorg/w3c/dom/Element;
    :cond_6
    const-string v28, "roaming_operator_id"

    move-object/from16 v0, v28

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    .line 129
    .local v26, proRoamIdList:Lorg/w3c/dom/NodeList;
    if-eqz v26, :cond_7

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    if-lez v28, :cond_7

    .line 130
    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    .line 131
    .restart local v21       #num:Lorg/w3c/dom/Element;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->setRoamingOperatorId(Ljava/lang/String;)V

    .line 96
    .end local v21           #num:Lorg/w3c/dom/Element;
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 134
    .end local v10           #ignoreSpnList:Lorg/w3c/dom/NodeList;
    .end local v11           #info:Lorg/w3c/dom/Element;
    .end local v13           #intlroamList:Lorg/w3c/dom/NodeList;
    .end local v15           #k:I
    .end local v16           #longnameList:Lorg/w3c/dom/NodeList;
    .end local v20           #nameList:Lorg/w3c/dom/NodeList;
    .end local v26           #proRoamIdList:Lorg/w3c/dom/NodeList;
    .end local v27           #proRoamList:Lorg/w3c/dom/NodeList;
    :cond_8
    const-string v28, "operator_mccmnc"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 135
    .local v18, mccmncList:Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    :goto_5
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    move/from16 v0, v28

    if-ge v14, v0, :cond_9

    .line 136
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Element;

    .line 137
    .local v17, mccmnc:Lorg/w3c/dom/Element;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/motorola/operatortool/GsmOperatorXmlInfo;->addMccmncList(Ljava/lang/String;)V

    .line 135
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 139
    .end local v17           #mccmnc:Lorg/w3c/dom/Element;
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 89
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 141
    .end local v3           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v6           #fact:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8           #i:I
    .end local v9           #id:I
    .end local v12           #infoList:Lorg/w3c/dom/NodeList;
    .end local v14           #j:I
    .end local v18           #mccmncList:Lorg/w3c/dom/NodeList;
    .end local v22           #operator:Lorg/w3c/dom/Element;
    .end local v23           #operatorInfo:Lcom/motorola/operatortool/GsmOperatorXmlInfo;
    .end local v24           #operatorList:Lorg/w3c/dom/NodeList;
    .end local v25           #operator_id:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 142
    .local v5, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_0

    .line 143
    .end local v5           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v5

    .line 144
    .local v5, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_0

    .line 145
    .end local v5           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v5

    .line 146
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method
