.class Landroid/net/http/CertificateChainValidator;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# static fields
.field private static final sInstance:Landroid/net/http/CertificateChainValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Landroid/net/http/CertificateChainValidator;

    invoke-direct {v0}, Landroid/net/http/CertificateChainValidator;-><init>()V

    sput-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2
    .parameter "socket"
    .parameter "errorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 192
    .local v0, session:Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 196
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 199
    .end local v0           #session:Ljavax/net/ssl/SSLSession;
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "socket"
    .parameter "errorMessage"
    .parameter "defaultErrorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 182
    return-void

    .restart local p2
    :cond_0
    move-object p2, p3

    .line 180
    goto :goto_0
.end method

.method public static getInstance()Landroid/net/http/CertificateChainValidator;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    return-object v0
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 6
    .parameter "certChain"
    .parameter "domain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 121
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "bad certificate chain"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_1
    array-length v3, p0

    new-array v2, v3, [Ljava/security/cert/X509Certificate;

    .line 127
    .local v2, serverCertificates:[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 128
    new-instance v3, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    aget-object v4, p0, v1

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to validate the certificate chain, error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 133
    new-instance v3, Landroid/net/http/SslError;

    const/4 v4, 0x3

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-direct {v3, v4, v5}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 137
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    return-object v3

    :cond_2
    invoke-static {v2, p1, p2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v3

    goto :goto_1
.end method

.method private static verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 4
    .parameter "chain"
    .parameter "domain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v2, 0x0

    aget-object v0, p0, v2

    .line 153
    .local v0, currCertificate:Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_0

    .line 154
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "certificate for this site is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_0
    invoke-static {v0, p1}, Lcom/android/internal/net/DomainNameValidator;->match(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 161
    new-instance v2, Landroid/net/http/SslError;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 172
    :goto_0
    return-object v2

    .line 165
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    invoke-interface {v2, p0, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    const/4 v2, 0x0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 172
    .local v1, e:Ljava/security/cert/CertificateException;
    new-instance v2, Landroid/net/http/SslError;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto :goto_0
.end method


# virtual methods
.method public doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 5
    .parameter "connection"
    .parameter "sslSocket"
    .parameter "domain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 83
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 84
    .local v1, sslSession:Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    const-string v2, "failed to perform SSL handshake"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 92
    .local v0, peerCertificates:[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_3

    .line 93
    :cond_1
    const-string v2, "failed to retrieve peer certificates"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 105
    :cond_2
    :goto_0
    check-cast v0, [Ljava/security/cert/X509Certificate;

    .end local v0           #peerCertificates:[Ljava/security/cert/Certificate;
    check-cast v0, [Ljava/security/cert/X509Certificate;

    const-string v2, "RSA"

    invoke-static {v0, p3, v2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v2

    return-object v2

    .line 97
    .restart local v0       #peerCertificates:[Ljava/security/cert/Certificate;
    :cond_3
    if-eqz p1, :cond_2

    .line 98
    aget-object v2, v0, v4

    if-eqz v2, :cond_2

    .line 99
    new-instance v3, Landroid/net/http/SslCertificate;

    aget-object v2, v0, v4

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-direct {v3, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p1, v3}, Landroid/net/http/HttpsConnection;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto :goto_0
.end method
