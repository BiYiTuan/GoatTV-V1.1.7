.class Lorg/eclipse/jetty/client/SelectConnector$Manager;
.super Lorg/eclipse/jetty/io/nio/SelectorManager;
.source "SelectConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/SelectConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Manager"
.end annotation


# instance fields
.field LOG:Lorg/eclipse/jetty/util/log/Logger;

.field final synthetic this$0:Lorg/eclipse/jetty/client/SelectConnector;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/client/SelectConnector;)V
    .locals 1

    .prologue
    .line 103
    iput-object p1, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager;-><init>()V

    .line 105
    # getter for: Lorg/eclipse/jetty/client/SelectConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/client/SelectConnector;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method private declared-synchronized newSslEngine(Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;
    .locals 5
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    # getter for: Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;
    invoke-static {v4}, Lorg/eclipse/jetty/client/SelectConnector;->access$100(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpClient;->getSslContextFactory()Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    move-result-object v2

    .line 174
    .local v2, "sslContextFactory":Lorg/eclipse/jetty/util/ssl/SslContextFactory;
    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "peerHost":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getPort()I

    move-result v1

    .line 178
    .local v1, "peerPort":I
    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v3

    .line 184
    .end local v0    # "peerHost":Ljava/lang/String;
    .end local v1    # "peerPort":I
    .local v3, "sslEngine":Ljavax/net/ssl/SSLEngine;
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 185
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-object v3

    .line 182
    .end local v3    # "sslEngine":Ljavax/net/ssl/SSLEngine;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslEngine()Ljavax/net/ssl/SSLEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .restart local v3    # "sslEngine":Ljavax/net/ssl/SSLEngine;
    goto :goto_0

    .line 172
    .end local v2    # "sslContextFactory":Lorg/eclipse/jetty/util/ssl/SslContextFactory;
    .end local v3    # "sslEngine":Ljavax/net/ssl/SSLEngine;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method protected connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "attachment"    # Ljava/lang/Object;

    .prologue
    .line 197
    iget-object v1, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    # getter for: Lorg/eclipse/jetty/client/SelectConnector;->_connectingChannels:Ljava/util/Map;
    invoke-static {v1}, Lorg/eclipse/jetty/client/SelectConnector;->access$200(Lorg/eclipse/jetty/client/SelectConnector;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 198
    .local v0, "connectTimeout":Lorg/eclipse/jetty/util/thread/Timeout$Task;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->cancel()V

    .line 201
    :cond_0
    instance-of v1, p3, Lorg/eclipse/jetty/client/HttpDestination;

    if-eqz v1, :cond_1

    .line 202
    check-cast p3, Lorg/eclipse/jetty/client/HttpDestination;

    .end local p3    # "attachment":Ljava/lang/Object;
    invoke-virtual {p3, p2}, Lorg/eclipse/jetty/client/HttpDestination;->onConnectionFailed(Ljava/lang/Throwable;)V

    .line 205
    :goto_0
    return-void

    .line 204
    .restart local p3    # "attachment":Ljava/lang/Object;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/io/nio/SelectorManager;->connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    # getter for: Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;
    invoke-static {v0}, Lorg/eclipse/jetty/client/SelectConnector;->access$100(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method protected endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 0
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .prologue
    .line 121
    return-void
.end method

.method protected endPointOpened(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 0
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .prologue
    .line 116
    return-void
.end method

.method protected endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V
    .locals 0
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/ConnectedEndPoint;
    .param p2, "oldConnection"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 126
    return-void
.end method

.method public newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/AsyncEndPoint;
    .param p3, "attachment"    # Ljava/lang/Object;

    .prologue
    .line 131
    new-instance v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;

    iget-object v1, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    # getter for: Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;
    invoke-static {v1}, Lorg/eclipse/jetty/client/SelectConnector;->access$100(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpClient;->getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    # getter for: Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;
    invoke-static {v2}, Lorg/eclipse/jetty/client/SelectConnector;->access$100(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpClient;->getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lorg/eclipse/jetty/client/AsyncHttpConnection;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    return-object v0
.end method

.method protected newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .locals 12
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "selectSet"    # Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .param p3, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v7, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    # getter for: Lorg/eclipse/jetty/client/SelectConnector;->_connectingChannels:Ljava/util/Map;
    invoke-static {v7}, Lorg/eclipse/jetty/client/SelectConnector;->access$200(Lorg/eclipse/jetty/client/SelectConnector;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 139
    .local v0, "connectTimeout":Lorg/eclipse/jetty/util/thread/Timeout$Task;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->cancel()V

    .line 141
    :cond_0
    iget-object v7, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v7}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 142
    iget-object v7, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "Channels with connection pending: {}"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    # getter for: Lorg/eclipse/jetty/client/SelectConnector;->_connectingChannels:Ljava/util/Map;
    invoke-static {v11}, Lorg/eclipse/jetty/client/SelectConnector;->access$200(Lorg/eclipse/jetty/client/SelectConnector;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_1
    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/client/HttpDestination;

    .line 147
    .local v2, "dest":Lorg/eclipse/jetty/client/HttpDestination;
    new-instance v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    iget-object v7, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    # getter for: Lorg/eclipse/jetty/client/SelectConnector;->_httpClient:Lorg/eclipse/jetty/client/HttpClient;
    invoke-static {v7}, Lorg/eclipse/jetty/client/SelectConnector;->access$100(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jetty/client/HttpClient;->getIdleTimeout()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-direct {v6, p1, p2, p3, v7}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;-><init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;I)V

    .line 148
    .local v6, "scep":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    move-object v3, v6

    .line 150
    .local v3, "ep":Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpDestination;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 152
    iget-object v7, p0, Lorg/eclipse/jetty/client/SelectConnector$Manager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "secure to {}, proxied={}"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpDestination;->isProxied()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    new-instance v4, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/client/SelectConnector$Manager;->newSslEngine(Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;

    move-result-object v7

    invoke-direct {v4, v3, v7}, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;-><init>(Lorg/eclipse/jetty/io/AsyncEndPoint;Ljavax/net/ssl/SSLEngine;)V

    .end local v3    # "ep":Lorg/eclipse/jetty/io/AsyncEndPoint;
    .local v4, "ep":Lorg/eclipse/jetty/io/AsyncEndPoint;
    move-object v3, v4

    .line 156
    .end local v4    # "ep":Lorg/eclipse/jetty/io/AsyncEndPoint;
    .restart local v3    # "ep":Lorg/eclipse/jetty/io/AsyncEndPoint;
    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object v7

    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, p1, v3, v8}, Lorg/eclipse/jetty/io/nio/SelectorManager;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object v1

    .line 157
    .local v1, "connection":Lorg/eclipse/jetty/io/nio/AsyncConnection;
    invoke-interface {v3, v1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    move-object v5, v1

    .line 159
    check-cast v5, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 160
    .local v5, "httpConnection":Lorg/eclipse/jetty/client/AbstractHttpConnection;
    invoke-virtual {v5, v2}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->setDestination(Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 162
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpDestination;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpDestination;->isProxied()Z

    move-result v7

    if-nez v7, :cond_3

    .line 163
    check-cast v3, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    .end local v3    # "ep":Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->upgrade()V

    .line 165
    :cond_3
    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/client/HttpDestination;->onNewConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V

    .line 167
    return-object v6
.end method
