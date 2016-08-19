.class Lorg/eclipse/jetty/client/SelectConnector;
.super Lorg/eclipse/jetty/util/component/AggregateLifeCycle;
.source "SelectConnector.java"

# interfaces
.implements Lorg/eclipse/jetty/client/HttpClient$Connector;
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;,
        Lorg/eclipse/jetty/client/SelectConnector$ConnectTimeout;,
        Lorg/eclipse/jetty/client/SelectConnector$Manager;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _connectingChannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/nio/channels/SocketChannel;",
            "Lorg/eclipse/jetty/util/thread/Timeout$Task;",
            ">;"
        }
    .end annotation
.end field

.field private final _httpClient:Lorg/eclipse/jetty/client/HttpClient;

.field private final _selectorManager:Lorg/eclipse/jetty/client/SelectConnector$Manager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/SelectConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/jetty/client/HttpClient;)V
    .locals 2
    .param p1, "httpClient"    # Lorg/eclipse/jetty/client/HttpClient;

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;-><init>()V

    .line 46
    new-instance v0, Lorg/eclipse/jetty/client/SelectConnector$Manager;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/client/SelectConnector$Manager;-><init>(Lorg/eclipse/jetty/client/SelectConnector;)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->_selectorManager:Lorg/eclipse/jetty/client/SelectConnector$Manager;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->_connectingChannels:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    .line 57
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/client/SelectConnector;->addBean(Ljava/lang/Object;Z)Z

    .line 58
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->_selectorManager:Lorg/eclipse/jetty/client/SelectConnector$Manager;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/client/SelectConnector;->addBean(Ljava/lang/Object;Z)Z

    .line 59
    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/eclipse/jetty/client/SelectConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/client/SelectConnector;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/client/SelectConnector;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/client/SelectConnector;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->_connectingChannels:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public startConnection(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 7
    .param p1, "destination"    # Lorg/eclipse/jetty/client/HttpDestination;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 68
    .local v1, "channel":Ljava/nio/channels/SocketChannel;
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 69
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->isProxied()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->getProxy()Lorg/eclipse/jetty/client/Address;

    move-result-object v0

    .line 70
    .local v0, "address":Lorg/eclipse/jetty/client/Address;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 72
    iget-object v4, p0, Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpClient;->isConnectBlocking()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/Address;->toSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v6}, Lorg/eclipse/jetty/client/HttpClient;->getConnectTimeout()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 75
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 76
    iget-object v4, p0, Lorg/eclipse/jetty/client/SelectConnector;->_selectorManager:Lorg/eclipse/jetty/client/SelectConnector$Manager;

    invoke-virtual {v4, v1, p1}, Lorg/eclipse/jetty/client/SelectConnector$Manager;->register(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V

    .line 100
    .end local v0    # "address":Lorg/eclipse/jetty/client/Address;
    :goto_1
    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v0

    goto :goto_0

    .line 80
    .restart local v0    # "address":Lorg/eclipse/jetty/client/Address;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 81
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/Address;->toSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 82
    iget-object v4, p0, Lorg/eclipse/jetty/client/SelectConnector;->_selectorManager:Lorg/eclipse/jetty/client/SelectConnector$Manager;

    invoke-virtual {v4, v1, p1}, Lorg/eclipse/jetty/client/SelectConnector$Manager;->register(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V

    .line 83
    new-instance v2, Lorg/eclipse/jetty/client/SelectConnector$ConnectTimeout;

    invoke-direct {v2, p0, v1, p1}, Lorg/eclipse/jetty/client/SelectConnector$ConnectTimeout;-><init>(Lorg/eclipse/jetty/client/SelectConnector;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 84
    .local v2, "connectTimeout":Lorg/eclipse/jetty/client/SelectConnector$ConnectTimeout;
    iget-object v4, p0, Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    iget-object v5, p0, Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpClient;->getConnectTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lorg/eclipse/jetty/client/HttpClient;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 85
    iget-object v4, p0, Lorg/eclipse/jetty/client/SelectConnector;->_connectingChannels:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/channels/UnresolvedAddressException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 88
    .end local v0    # "address":Lorg/eclipse/jetty/client/Address;
    .end local v2    # "connectTimeout":Lorg/eclipse/jetty/client/SelectConnector$ConnectTimeout;
    :catch_0
    move-exception v3

    .line 90
    .local v3, "ex":Ljava/nio/channels/UnresolvedAddressException;
    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    .line 92
    :cond_2
    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/client/HttpDestination;->onConnectionFailed(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 94
    .end local v3    # "ex":Ljava/nio/channels/UnresolvedAddressException;
    :catch_1
    move-exception v3

    .line 96
    .local v3, "ex":Ljava/io/IOException;
    if-eqz v1, :cond_3

    .line 97
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    .line 98
    :cond_3
    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/client/HttpDestination;->onConnectionFailed(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
