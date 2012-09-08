.class public Lcom/motorola/operatortool/GenResXmlFile;
.super Ljava/lang/Object;
.source "GenResXmlFile.java"


# static fields
.field private static final TAB:Ljava/lang/String; = "\n    "


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createResXml(Ljava/util/List;Ljava/lang/String;)Z
    .locals 20
    .parameter
    .parameter "fname"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/operatortool/ResourceItem;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/operatortool/ResourceItem;>;"
    if-nez p0, :cond_0

    .line 52
    const/16 v18, 0x0

    .line 111
    :goto_0
    return v18

    .line 58
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 59
    .local v4, dbfac:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 60
    .local v6, docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    .line 62
    .local v5, doc:Lorg/w3c/dom/Document;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->setXmlStandalone(Z)V

    .line 66
    const-string v18, "resources"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 67
    .local v11, root:Lorg/w3c/dom/Element;
    invoke-interface {v5, v11}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 70
    const-string v18, "This is auto-generated res, do not change it manually"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v3

    .line 71
    .local v3, comment:Lorg/w3c/dom/Comment;
    const-string v18, "\n    "

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 72
    invoke-interface {v11, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 75
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/operatortool/ResourceItem;

    .line 76
    .local v9, item:Lcom/motorola/operatortool/ResourceItem;
    const-string v18, "add-resource"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 77
    .local v2, child:Lorg/w3c/dom/Element;
    const-string v18, "\n    "

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 78
    const-string v18, "name"

    invoke-virtual {v9}, Lcom/motorola/operatortool/ResourceItem;->getId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v18, "type"

    const-string v19, "string"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-interface {v11, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 82
    const-string v18, "string"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 83
    const-string v18, "\n    "

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 84
    const-string v18, "name"

    invoke-virtual {v9}, Lcom/motorola/operatortool/ResourceItem;->getId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-interface {v11, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 86
    invoke-virtual {v9}, Lcom/motorola/operatortool/ResourceItem;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v14

    .line 87
    .local v14, text:Lorg/w3c/dom/Text;
    invoke-interface {v2, v14}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 108
    .end local v2           #child:Lorg/w3c/dom/Element;
    .end local v3           #comment:Lorg/w3c/dom/Comment;
    .end local v4           #dbfac:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #doc:Lorg/w3c/dom/Document;
    .end local v6           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #item:Lcom/motorola/operatortool/ResourceItem;
    .end local v11           #root:Lorg/w3c/dom/Element;
    .end local v14           #text:Lorg/w3c/dom/Text;
    :catch_0
    move-exception v7

    .line 109
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 91
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #comment:Lorg/w3c/dom/Comment;
    .restart local v4       #dbfac:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5       #doc:Lorg/w3c/dom/Document;
    .restart local v6       #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v11       #root:Lorg/w3c/dom/Element;
    :cond_1
    :try_start_1
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v16

    .line 92
    .local v16, transfac:Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v16 .. v16}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v15

    .line 93
    .local v15, trans:Ljavax/xml/transform/Transformer;
    const-string v18, "omit-xml-declaration"

    const-string v19, "no"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v18, "indent"

    const-string v19, "yes"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 100
    .local v13, sw:Ljava/io/StringWriter;
    new-instance v10, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v10, v13}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 101
    .local v10, result:Ljavax/xml/transform/stream/StreamResult;
    new-instance v12, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v12, v5}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 102
    .local v12, source:Ljavax/xml/transform/dom/DOMSource;
    invoke-virtual {v15, v12, v10}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 103
    new-instance v17, Ljava/io/OutputStreamWriter;

    new-instance v18, Ljava/io/FileOutputStream;

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v18 .. v19}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v19, "UTF-8"

    invoke-direct/range {v17 .. v19}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 105
    .local v17, writer:Ljava/io/OutputStreamWriter;
    invoke-virtual {v13}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method public static parseResXmlFile(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "fname"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/operatortool/ResourceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 32
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 33
    .local v3, fact:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 34
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 35
    .local v1, doc:Lorg/w3c/dom/Document;
    const-string v9, "string"

    invoke-interface {v1, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 36
    .local v7, list:Lorg/w3c/dom/NodeList;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v8, resList:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/operatortool/ResourceItem;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 38
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 39
    .local v6, it:Lorg/w3c/dom/Element;
    new-instance v9, Lcom/motorola/operatortool/ResourceItem;

    const-string v10, "name"

    invoke-interface {v6, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/motorola/operatortool/ResourceItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 42
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #doc:Lorg/w3c/dom/Document;
    .end local v3           #fact:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #i:I
    .end local v6           #it:Lorg/w3c/dom/Element;
    .end local v7           #list:Lorg/w3c/dom/NodeList;
    .end local v8           #resList:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/operatortool/ResourceItem;>;"
    :catch_0
    move-exception v2

    .line 43
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v8, 0x0

    :cond_1
    return-object v8
.end method
