.class public Lcom/eclipse/android/razr/bootstrap/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field static final LOGTAG:Ljava/lang/String; = "BionicBootstrap"

.field public static final SCRIPT_NAME:Ljava/lang/String; = "surunner.sh"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runSuCommand(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/eclipse/android/razr/bootstrap/Helper;->runSuCommandAsync(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    return v0
.end method

.method public static runSuCommandAsync(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Process;
    .locals 6
    .parameter "context"
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 16
    new-instance v1, Ljava/io/DataOutputStream;

    const-string v3, "surunner.sh"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    .local v1, fout:Ljava/io/DataOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 20
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "su"

    aput-object v3, v0, v4

    const/4 v3, 0x1

    const-string v4, "-c"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ". "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "surunner.sh"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 21
    .local v0, args:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 22
    .local v2, proc:Ljava/lang/Process;
    return-object v2
.end method

.method public static runSuCommandNoScriptWrapper(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "su"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "-c"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object p1, v0, v2

    .line 33
    .local v0, args:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 34
    .local v1, proc:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    return v2
.end method
