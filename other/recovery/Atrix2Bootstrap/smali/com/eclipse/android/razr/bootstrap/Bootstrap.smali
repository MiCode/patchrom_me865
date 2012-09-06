.class public Lcom/eclipse/android/razr/bootstrap/Bootstrap;
.super Landroid/app/Activity;
.source "Bootstrap.java"


# static fields
.field static final BUFSIZE:I = 0x1448

.field static final LOGTAG:Ljava/lang/String; = "DroidXBootstrap"

.field private static final TAG:Ljava/lang/String; = "DBB/Bootstrap"

.field static final ZIP_FILTER:Ljava/lang/String; = "assets"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method copyStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 10
    .parameter "is"
    .parameter "fos"

    .prologue
    .line 154
    const/4 v4, 0x0

    .line 156
    .local v4, os:Ljava/io/BufferedOutputStream;
    const/16 v6, 0x1448

    :try_start_0
    new-array v1, v6, [B

    .line 158
    .local v1, data:[B
    new-instance v5, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x1448

    invoke-direct {v5, p2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 159
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .local v5, os:Ljava/io/BufferedOutputStream;
    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x1448

    :try_start_1
    invoke-virtual {p1, v1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .local v0, count:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_1

    .line 162
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    if-eqz v5, :cond_3

    .line 168
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v5

    .line 174
    .end local v0           #count:I
    .end local v1           #data:[B
    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .restart local v4       #os:Ljava/io/BufferedOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 160
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .restart local v0       #count:I
    .restart local v1       #data:[B
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    :cond_1
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v5, v1, v6, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 163
    .end local v0           #count:I
    :catch_0
    move-exception v6

    move-object v2, v6

    move-object v4, v5

    .line 164
    .end local v1           #data:[B
    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v4       #os:Ljava/io/BufferedOutputStream;
    :goto_2
    :try_start_4
    const-string v6, "DroidXBootstrap"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception while copying: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 167
    if-eqz v4, :cond_0

    .line 168
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 170
    :catch_1
    move-exception v3

    .line 171
    .local v3, e2:Ljava/io/IOException;
    const-string v6, "DroidXBootstrap"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception while closing the stream: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 165
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #e2:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 167
    :goto_3
    if-eqz v4, :cond_2

    .line 168
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 173
    :cond_2
    :goto_4
    throw v6

    .line 170
    :catch_2
    move-exception v3

    .line 171
    .restart local v3       #e2:Ljava/io/IOException;
    const-string v7, "DroidXBootstrap"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception while closing the stream: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 170
    .end local v3           #e2:Ljava/io/IOException;
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .restart local v0       #count:I
    .restart local v1       #data:[B
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v3

    .line 171
    .restart local v3       #e2:Ljava/io/IOException;
    const-string v6, "DroidXBootstrap"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception while closing the stream: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #e2:Ljava/io/IOException;
    :cond_3
    move-object v4, v5

    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .restart local v4       #os:Ljava/io/BufferedOutputStream;
    goto :goto_1

    .line 165
    .end local v0           #count:I
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .restart local v4       #os:Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 163
    .end local v1           #data:[B
    :catch_4
    move-exception v6

    move-object v2, v6

    goto :goto_2
.end method

.method public getAssets(Ljava/util/zip/ZipFile;)Ljava/util/Vector;
    .locals 5
    .parameter "zip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 178
    .local v2, list:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 179
    .local v0, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 185
    return-object v2

    .line 180
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 181
    .local v1, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "assets"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/eclipse/android/razr/bootstrap/Bootstrap;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/eclipse/android/razr/bootstrap/Bootstrap;->unzipAssets()V

    .line 36
    const/high16 v2, 0x7f05

    invoke-virtual {p0, v2}, Lcom/eclipse/android/razr/bootstrap/Bootstrap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 37
    .local v0, flash:Landroid/widget/Button;
    new-instance v2, Lcom/eclipse/android/razr/bootstrap/Bootstrap$1;

    invoke-direct {v2, p0}, Lcom/eclipse/android/razr/bootstrap/Bootstrap$1;-><init>(Lcom/eclipse/android/razr/bootstrap/Bootstrap;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/eclipse/android/razr/bootstrap/Bootstrap;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 100
    .local v1, reboot:Landroid/widget/Button;
    new-instance v2, Lcom/eclipse/android/razr/bootstrap/Bootstrap$2;

    invoke-direct {v2, p0}, Lcom/eclipse/android/razr/bootstrap/Bootstrap$2;-><init>(Lcom/eclipse/android/razr/bootstrap/Bootstrap;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method unzipAssets()V
    .locals 21

    .prologue
    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/eclipse/android/razr/bootstrap/Bootstrap;->getPackageCodePath()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, apkPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/eclipse/android/razr/bootstrap/Bootstrap;->getFilesDir()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    .line 127
    .local v9, mAppRoot:Ljava/lang/String;
    :try_start_0
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v13, zipFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    .line 129
    .local v15, zipLastModified:J
    new-instance v12, Ljava/util/zip/ZipFile;

    invoke-direct {v12, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 130
    .local v12, zip:Ljava/util/zip/ZipFile;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/eclipse/android/razr/bootstrap/Bootstrap;->getAssets(Ljava/util/zip/ZipFile;)Ljava/util/Vector;

    move-result-object v7

    .line 131
    .local v7, files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    const-string v17, "assets"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v14

    .line 133
    .local v14, zipFilterLength:I
    invoke-virtual {v7}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 134
    .local v5, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-nez v17, :cond_1

    .line 149
    .end local v5           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v7           #files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    .end local v12           #zip:Ljava/util/zip/ZipFile;
    .end local v13           #zipFile:Ljava/io/File;
    .end local v14           #zipFilterLength:I
    .end local v15           #zipLastModified:J
    :goto_1
    return-void

    .line 135
    .restart local v5       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v7       #files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    .restart local v12       #zip:Ljava/util/zip/ZipFile;
    .restart local v13       #zipFile:Ljava/io/File;
    .restart local v14       #zipFilterLength:I
    .restart local v15       #zipLastModified:J
    :cond_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 136
    .local v6, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 137
    .local v11, path:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .local v10, outputFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 140
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v17

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-nez v17, :cond_2

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v17

    cmp-long v17, v15, v17

    if-ltz v17, :cond_0

    .line 142
    :cond_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 143
    .local v8, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v12, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/eclipse/android/razr/bootstrap/Bootstrap;->copyStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 144
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "chmod 755 "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v5           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v6           #entry:Ljava/util/zip/ZipEntry;
    .end local v7           #files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v10           #outputFile:Ljava/io/File;
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #zip:Ljava/util/zip/ZipFile;
    .end local v13           #zipFile:Ljava/io/File;
    .end local v14           #zipFilterLength:I
    .end local v15           #zipLastModified:J
    :catch_0
    move-exception v17

    move-object/from16 v4, v17

    .line 147
    .local v4, e:Ljava/io/IOException;
    const-string v17, "DroidXBootstrap"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Error: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
