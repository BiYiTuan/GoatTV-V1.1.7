.class public Lorg/eclipse/jetty/server/ssl/SslSocketConnector;
.super Lorg/eclipse/jetty/server/bio/SocketConnector;
.source "SslSocketConnector.java"

# interfaces
.implements Lorg/eclipse/jetty/server/ssl/SslConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _handshakeTimeout:I

.field private final _sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    sget-object v1, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->DEFAULT_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;-><init>(Lorg/eclipse/jetty/util/ssl/SslContextFactory;)V

    .line 67
    const/16 v0, 0x7530

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->setSoLingerTime(I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/ssl/SslContextFactory;)V
    .locals 1
    .param p1, "sslContextFactory"    # Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_handshakeTimeout:I

    .line 73
    iput-object p1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/ssl/SslSocketConnector;)Lorg/eclipse/jetty/util/ssl/SslContextFactory;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ssl/SslSocketConnector;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    return-object v0
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method


# virtual methods
.method public accept(I)V
    .locals 3
    .param p1, "acceptorID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v2, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 104
    .local v1, "socket":Ljava/net/Socket;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->configure(Ljava/net/Socket;)V

    .line 106
    new-instance v0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;-><init>(Lorg/eclipse/jetty/server/ssl/SslSocketConnector;Ljava/net/Socket;)V

    .line 107
    .local v0, "connection":Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->dispatch()V

    .line 108
    return-void
.end method

.method protected configure(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/bio/SocketConnector;->configure(Ljava/net/Socket;)V

    .line 116
    return-void
.end method

.method public customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V
    .locals 4
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p2, "request"    # Lorg/eclipse/jetty/server/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/bio/SocketConnector;->customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    .line 143
    const-string v3, "https"

    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setScheme(Ljava/lang/String;)V

    move-object v0, p1

    .line 145
    check-cast v0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;

    .line 146
    .local v0, "socket_end_point":Lorg/eclipse/jetty/io/bio/SocketEndPoint;
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->getTransport()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .line 147
    .local v2, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 149
    .local v1, "sslSession":Ljavax/net/ssl/SSLSession;
    invoke-static {v1, p1, p2}, Lorg/eclipse/jetty/server/ssl/SslCertificates;->customize(Ljavax/net/ssl/SSLSession;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    .line 150
    return-void
.end method

.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkKeyStore()V

    .line 357
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->start()V

    .line 359
    invoke-super {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->doStart()V

    .line 360
    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->stop()V

    .line 371
    invoke-super {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->doStop()V

    .line 372
    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 692
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getExcludeCipherSuites()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getExcludeCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeTimeout()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_handshakeTimeout:I

    return v0
.end method

.method public getIncludeCipherSuites()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getIncludeCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeystore()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStorePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeystoreType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureRandomAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSecureRandomAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSslContext()Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public getSslContextFactory()Lorg/eclipse/jetty/util/ssl/SslContextFactory;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    return-object v0
.end method

.method public getSslKeyManagerFactoryAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSslKeyManagerFactoryAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSslTrustManagerFactoryAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustManagerFactoryAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTruststore()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustStore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTruststoreType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWantClientAuth()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public isAllowRenegotiate()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->isAllowRenegotiate()Z

    move-result v0

    return v0
.end method

.method public isConfidential(Lorg/eclipse/jetty/server/Request;)Z
    .locals 2
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    .line 314
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->getConfidentialPort()I

    move-result v0

    .line 315
    .local v0, "confidentialPort":I
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getServerPort()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIntegral(Lorg/eclipse/jetty/server/Request;)Z
    .locals 2
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    .line 329
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->getIntegralPort()I

    move-result v0

    .line 330
    .local v0, "integralPort":I
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getServerPort()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newServerSocket(Ljava/lang/String;II)Ljava/net/ServerSocket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslServerSocket(Ljava/lang/String;II)Ljavax/net/ssl/SSLServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkKeyStore()V

    .line 340
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    invoke-super {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->open()V

    .line 347
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/eclipse/jetty/io/RuntimeIOException;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 705
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAllowRenegotiate(Z)V
    .locals 1
    .param p1, "allowRenegotiate"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setAllowRenegotiate(Z)V

    .line 96
    return-void
.end method

.method public setExcludeCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setExcludeCipherSuites([Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public setHandshakeTimeout(I)V
    .locals 0
    .param p1, "msec"    # I

    .prologue
    .line 602
    iput p1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_handshakeTimeout:I

    .line 603
    return-void
.end method

.method public setIncludeCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setIncludeCipherSuites([Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public setKeyPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyManagerPassword(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public setKeystore(Ljava/lang/String;)V
    .locals 1
    .param p1, "keystore"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStorePath(Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public setKeystoreType(Ljava/lang/String;)V
    .locals 1
    .param p1, "keystoreType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStoreType(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .param p1, "needClientAuth"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setNeedClientAuth(Z)V

    .line 457
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStorePassword(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setProtocol(Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setProvider(Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method public setSecureRandomAlgorithm(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSecureRandomAlgorithm(Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public setSslContext(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSslContext(Ljavax/net/ssl/SSLContext;)V

    .line 566
    return-void
.end method

.method public setSslKeyManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSslKeyManagerFactoryAlgorithm(Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method public setSslTrustManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 532
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustManagerFactoryAlgorithm(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public setTrustPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStorePassword(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public setTruststore(Ljava/lang/String;)V
    .locals 1
    .param p1, "truststore"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStore(Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method public setTruststoreType(Ljava/lang/String;)V
    .locals 1
    .param p1, "truststoreType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 554
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStoreType(Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .param p1, "wantClientAuth"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setWantClientAuth(Z)V

    .line 592
    return-void
.end method
