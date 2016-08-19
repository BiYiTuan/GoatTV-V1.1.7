.class public Lorg/eclipse/jetty/util/security/CertificateUtils;
.super Ljava/lang/Object;
.source "CertificateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyStore(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 3
    .param p0, "storeStream"    # Ljava/io/InputStream;
    .param p1, "storePath"    # Ljava/lang/String;
    .param p2, "storeType"    # Ljava/lang/String;
    .param p3, "storeProvider"    # Ljava/lang/String;
    .param p4, "storePassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, "keystore":Ljava/security/KeyStore;
    if-nez p0, :cond_0

    if-eqz p1, :cond_2

    .line 36
    :cond_0
    move-object v0, p0

    .line 39
    .local v0, "inStream":Ljava/io/InputStream;
    if-nez v0, :cond_1

    .line 41
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 44
    :cond_1
    if-eqz p3, :cond_3

    .line 46
    invoke-static {p2, p3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 53
    :goto_0
    if-nez p4, :cond_4

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v0, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 64
    .end local v0    # "inStream":Ljava/io/InputStream;
    :cond_2
    return-object v1

    .line 50
    .restart local v0    # "inStream":Ljava/io/InputStream;
    :cond_3
    :try_start_1
    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    goto :goto_0

    .line 53
    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 57
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_5

    .line 59
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v2
.end method

.method public static loadCRL(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .param p0, "crlPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "crlList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/CRL;>;"
    if-eqz p0, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 77
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 78
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 82
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 89
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_0
    return-object v0

    .line 82
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v2
.end method
