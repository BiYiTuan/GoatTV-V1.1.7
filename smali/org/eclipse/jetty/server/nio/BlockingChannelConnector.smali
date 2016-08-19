.class public Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;
.super Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;
.source "BlockingChannelConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private transient _acceptChannel:Ljava/nio/channels/ServerSocketChannel;

.field private final _endpoints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;-><init>()V

    .line 56
    new-instance v0, Lorg/eclipse/jetty/util/ConcurrentHashSet;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_endpoints:Ljava/util/Set;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_endpoints:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;)I
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;

    .prologue
    .line 51
    iget v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_maxIdleTime:I

    return v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;Lorg/eclipse/jetty/io/Connection;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;
    .param p1, "x1"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->connectionOpened(Lorg/eclipse/jetty/io/Connection;)V

    return-void
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;Lorg/eclipse/jetty/io/Connection;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;
    .param p1, "x1"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 4
    .param p1, "acceptorID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v3, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 139
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 140
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    .line 141
    .local v2, "socket":Ljava/net/Socket;
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->configure(Ljava/net/Socket;)V

    .line 143
    new-instance v1, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;-><init>(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;Ljava/nio/channels/ByteChannel;)V

    .line 144
    .local v1, "connection":Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$BlockingChannelEndPoint;->dispatch()V

    .line 145
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 130
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 131
    return-void
.end method

.method public customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V
    .locals 1
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p2, "request"    # Lorg/eclipse/jetty/server/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;->customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    .line 153
    iget v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_maxIdleTime:I

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 154
    invoke-interface {p1}, Lorg/eclipse/jetty/io/EndPoint;->getTransport()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->configure(Ljava/net/Socket;)V

    .line 155
    return-void
.end method

.method protected doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    invoke-super {p0}, Lorg/eclipse/jetty/server/nio/AbstractNIOConnector;->doStart()V

    .line 81
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$1;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector$1;-><init>(Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;)V

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method public getConnection()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    :cond_0
    const/4 v0, -0x1

    .line 163
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 118
    iget-object v1, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 121
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->getPort()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 122
    .local v0, "addr":Ljava/net/InetSocketAddress;
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->getAcceptQueueSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 123
    return-void

    .line 121
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/BlockingChannelConnector;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method
