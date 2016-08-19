.class Lorg/eclipse/jetty/client/SocketConnector;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "SocketConnector.java"

# interfaces
.implements Lorg/eclipse/jetty/client/HttpClient$Connector;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _httpClient:Lorg/eclipse/jetty/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/eclipse/jetty/client/SocketConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/jetty/client/HttpClient;)V
    .locals 0
    .param p1, "httpClient"    # Lorg/eclipse/jetty/client/HttpClient;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/eclipse/jetty/client/SocketConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    .line 43
    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/eclipse/jetty/client/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method


# virtual methods
.method public startConnection(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 6
    .param p1, "destination"    # Lorg/eclipse/jetty/client/HttpDestination;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/eclipse/jetty/client/SocketConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpClient;->getSslContextFactory()Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    .line 51
    .local v3, "socket":Ljava/net/Socket;
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 52
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 54
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->isProxied()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->getProxy()Lorg/eclipse/jetty/client/Address;

    move-result-object v0

    .line 55
    .local v0, "address":Lorg/eclipse/jetty/client/Address;
    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/Address;->toSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/client/SocketConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpClient;->getConnectTimeout()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 57
    new-instance v2, Lorg/eclipse/jetty/io/bio/SocketEndPoint;

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;-><init>(Ljava/net/Socket;)V

    .line 59
    .local v2, "endpoint":Lorg/eclipse/jetty/io/EndPoint;
    new-instance v1, Lorg/eclipse/jetty/client/BlockingHttpConnection;

    iget-object v4, p0, Lorg/eclipse/jetty/client/SocketConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpClient;->getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/client/SocketConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpClient;->getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v5

    invoke-direct {v1, v4, v5, v2}, Lorg/eclipse/jetty/client/BlockingHttpConnection;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    .line 60
    .local v1, "connection":Lorg/eclipse/jetty/client/AbstractHttpConnection;
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->setDestination(Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 61
    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/client/HttpDestination;->onNewConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V

    .line 62
    iget-object v4, p0, Lorg/eclipse/jetty/client/SocketConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpClient;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v4

    new-instance v5, Lorg/eclipse/jetty/client/SocketConnector$1;

    invoke-direct {v5, p0, v1, p1}, Lorg/eclipse/jetty/client/SocketConnector$1;-><init>(Lorg/eclipse/jetty/client/SocketConnector;Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpDestination;)V

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    .line 104
    return-void

    .line 47
    .end local v0    # "address":Lorg/eclipse/jetty/client/Address;
    .end local v1    # "connection":Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .end local v2    # "endpoint":Lorg/eclipse/jetty/io/EndPoint;
    .end local v3    # "socket":Ljava/net/Socket;
    :cond_0
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    goto :goto_0

    .line 54
    .restart local v3    # "socket":Ljava/net/Socket;
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v0

    goto :goto_1
.end method
