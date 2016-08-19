.class public Lorg/eclipse/jetty/server/bio/SocketConnector;
.super Lorg/eclipse/jetty/server/AbstractConnector;
.source "SocketConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected final _connections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/eclipse/jetty/io/EndPoint;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile _localPort:I

.field protected _serverSocket:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/eclipse/jetty/server/bio/SocketConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/eclipse/jetty/server/AbstractConnector;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_localPort:I

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/bio/SocketConnector;)I
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/bio/SocketConnector;

    .prologue
    .line 52
    iget v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_maxIdleTime:I

    return v0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;Lorg/eclipse/jetty/io/Connection;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/bio/SocketConnector;
    .param p1, "x1"    # Lorg/eclipse/jetty/io/Connection;
    .param p2, "x2"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/bio/SocketConnector;->connectionUpgraded(Lorg/eclipse/jetty/io/Connection;Lorg/eclipse/jetty/io/Connection;)V

    return-void
.end method

.method static synthetic access$200()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/bio/SocketConnector;
    .param p1, "x1"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/bio/SocketConnector;->connectionOpened(Lorg/eclipse/jetty/io/Connection;)V

    return-void
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/bio/SocketConnector;
    .param p1, "x1"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/bio/SocketConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V

    return-void
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
    .line 112
    iget-object v2, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 113
    .local v1, "socket":Ljava/net/Socket;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/bio/SocketConnector;->configure(Ljava/net/Socket;)V

    .line 115
    new-instance v0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;-><init>(Lorg/eclipse/jetty/server/bio/SocketConnector;Ljava/net/Socket;)V

    .line 116
    .local v0, "connection":Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->dispatch()V

    .line 117
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
    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 103
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    .line 104
    const/4 v0, -0x2

    iput v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_localPort:I

    .line 105
    return-void
.end method

.method public customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V
    .locals 3
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p2, "request"    # Lorg/eclipse/jetty/server/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;

    .line 134
    .local v0, "connection":Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->isLowResources()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_lowResourceMaxIdleTime:I

    .line 135
    .local v1, "lrmit":I
    :goto_0
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->setMaxIdleTime(I)V

    .line 137
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/AbstractConnector;->customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    .line 138
    return-void

    .line 134
    .end local v1    # "lrmit":I
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_maxIdleTime:I

    goto :goto_0
.end method

.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 151
    invoke-super {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->doStart()V

    .line 152
    return-void
.end method

.method protected doStop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 158
    invoke-super {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->doStop()V

    .line 159
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 160
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/io/EndPoint;>;"
    iget-object v5, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v5

    .line 162
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 163
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/io/EndPoint;

    .local v1, "endPoint":Lorg/eclipse/jetty/io/EndPoint;
    move-object v0, v1

    .line 166
    check-cast v0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;

    .line 167
    .local v0, "connection":Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->close()V

    goto :goto_0

    .line 163
    .end local v0    # "connection":Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;
    .end local v1    # "endPoint":Lorg/eclipse/jetty/io/EndPoint;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 169
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/AbstractConnector;->dump(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 176
    .local v0, "connections":Ljava/util/Set;, "Ljava/util/Set<Lorg/eclipse/jetty/io/EndPoint;>;"
    iget-object v2, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v2

    .line 178
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 179
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Collection;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p1, p2, v1}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 181
    return-void

    .line 179
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getConnection()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_localPort:I

    return v0
.end method

.method protected newConnection(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;
    .locals 2
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;

    .prologue
    .line 125
    new-instance v0, Lorg/eclipse/jetty/server/BlockingHttpConnection;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jetty/server/BlockingHttpConnection;-><init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V

    return-object v0
.end method

.method protected newServerSocket(Ljava/lang/String;II)Ljava/net/ServerSocket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    if-nez p1, :cond_0

    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p2, p3}, Ljava/net/ServerSocket;-><init>(II)V

    .line 95
    .local v0, "ss":Ljava/net/ServerSocket;
    :goto_0
    return-object v0

    .line 91
    .end local v0    # "ss":Ljava/net/ServerSocket;
    :cond_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

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
    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->getPort()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->getAcceptQueueSize()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jetty/server/bio/SocketConnector;->newServerSocket(Ljava/lang/String;II)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    .line 81
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->getReuseAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 82
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_localPort:I

    .line 83
    iget v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector;->_localPort:I

    if-gtz v0, :cond_2

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "port not allocated for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    return-void
.end method
