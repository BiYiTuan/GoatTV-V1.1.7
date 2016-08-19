.class public Lorg/eclipse/jetty/client/HttpDestination;
.super Ljava/lang/Object;
.source "HttpDestination.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _address:Lorg/eclipse/jetty/client/Address;

.field private _authorizations:Lorg/eclipse/jetty/http/PathMap;

.field private final _client:Lorg/eclipse/jetty/client/HttpClient;

.field private final _connections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/client/AbstractHttpConnection;",
            ">;"
        }
    .end annotation
.end field

.field private _cookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/http/HttpCookie;",
            ">;"
        }
    .end annotation
.end field

.field private final _hostHeader:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field private final _idle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/client/AbstractHttpConnection;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _maxConnections:I

.field private volatile _maxQueueSize:I

.field private _newConnection:I

.field private final _newQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _pendingConnections:I

.field private volatile _proxy:Lorg/eclipse/jetty/client/Address;

.field private _proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

.field private final _queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/client/HttpExchange;",
            ">;"
        }
    .end annotation
.end field

.field private final _ssl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/eclipse/jetty/client/HttpDestination;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/jetty/client/HttpClient;Lorg/eclipse/jetty/client/Address;Z)V
    .locals 5
    .param p1, "client"    # Lorg/eclipse/jetty/client/HttpClient;
    .param p2, "address"    # Lorg/eclipse/jetty/client/Address;
    .param p3, "ssl"    # Z

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    .line 51
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    .line 52
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    iput-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newQueue:Ljava/util/concurrent/BlockingQueue;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    .line 60
    iput v4, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    .line 61
    iput v4, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    .line 71
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    .line 72
    iput-object p2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_address:Lorg/eclipse/jetty/client/Address;

    .line 73
    iput-boolean p3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_ssl:Z

    .line 74
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpClient;->getMaxConnectionsPerAddress()I

    move-result v1

    iput v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    .line 75
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpClient;->getMaxQueueSizePerAddress()I

    move-result v1

    iput v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxQueueSize:I

    .line 76
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/Address;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "addressString":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/Address;->getPort()I

    move-result v2

    iget-boolean v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_ssl:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x1bb

    :goto_0
    if-eq v2, v1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/eclipse/jetty/client/Address;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_hostHeader:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 80
    return-void

    .line 77
    :cond_1
    const/16 v1, 0x50

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/client/HttpDestination;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/client/HttpDestination;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    return-object v0
.end method

.method private getConnection(J)Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .locals 10
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0xc8

    .line 173
    const/4 v1, 0x0

    .line 175
    .local v1, "connection":Lorg/eclipse/jetty/client/AbstractHttpConnection;
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->getIdleConnection()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    move-result-object v1

    if-nez v1, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_3

    .line 177
    const/4 v4, 0x0

    .line 178
    .local v4, "startConnection":Z
    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget v7, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    add-int v5, v6, v7

    .line 181
    .local v5, "totalConnections":I
    iget v6, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    if-ge v5, v6, :cond_0

    .line 183
    iget v6, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    .line 184
    const/4 v4, 0x1

    .line 186
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-eqz v4, :cond_2

    .line 190
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->startNewConnection()V

    .line 193
    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    .line 194
    .local v3, "o":Ljava/lang/Object;
    instance-of v6, v3, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    if-eqz v6, :cond_1

    .line 196
    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 186
    .end local v3    # "o":Ljava/lang/Object;
    .end local v5    # "totalConnections":I
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 199
    .restart local v3    # "o":Ljava/lang/Object;
    .restart local v5    # "totalConnections":I
    :cond_1
    :try_start_3
    check-cast v3, Ljava/io/IOException;

    .end local v3    # "o":Ljava/lang/Object;
    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 201
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v6, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 210
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 211
    const-wide/16 v6, 0xc8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 212
    sub-long/2addr p1, v8

    goto :goto_0

    .line 214
    :catch_1
    move-exception v2

    .line 216
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    sget-object v6, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 220
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "startConnection":Z
    .end local v5    # "totalConnections":I
    :cond_3
    return-object v1
.end method


# virtual methods
.method public addAuthorization(Ljava/lang/String;Lorg/eclipse/jetty/client/security/Authentication;)V
    .locals 1
    .param p1, "pathSpec"    # Ljava/lang/String;
    .param p2, "authorization"    # Lorg/eclipse/jetty/client/security/Authentication;

    .prologue
    .line 140
    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_authorizations:Lorg/eclipse/jetty/http/PathMap;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_authorizations:Lorg/eclipse/jetty/http/PathMap;

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_authorizations:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    monitor-exit p0

    .line 148
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addCookie(Lorg/eclipse/jetty/http/HttpCookie;)V
    .locals 1
    .param p1, "cookie"    # Lorg/eclipse/jetty/http/HttpCookie;

    .prologue
    .line 152
    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_cookies:Ljava/util/List;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_cookies:Ljava/util/List;

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_cookies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    monitor-exit p0

    .line 160
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    monitor-enter p0

    .line 639
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 641
    .local v0, "connection":Lorg/eclipse/jetty/client/AbstractHttpConnection;
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->close()V

    goto :goto_0

    .line 643
    .end local v0    # "connection":Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 644
    return-void
.end method

.method protected doSend(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 9
    .param p1, "ex"    # Lorg/eclipse/jetty/client/HttpExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpDestination;->_cookies:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, "buf":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpDestination;->_cookies:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/http/HttpCookie;

    .line 511
    .local v3, "cookie":Lorg/eclipse/jetty/http/HttpCookie;
    if-nez v1, :cond_0

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "buf":Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .restart local v1    # "buf":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 514
    :cond_0
    const-string v6, "; "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 519
    .end local v3    # "cookie":Lorg/eclipse/jetty/http/HttpCookie;
    :cond_1
    if-eqz v1, :cond_2

    .line 520
    const-string v6, "Cookie"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/eclipse/jetty/client/HttpExchange;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpDestination;->_authorizations:Lorg/eclipse/jetty/http/PathMap;

    if-eqz v6, :cond_3

    .line 526
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpDestination;->_authorizations:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/security/Authentication;

    .line 527
    .local v0, "auth":Lorg/eclipse/jetty/client/security/Authentication;
    if-eqz v0, :cond_3

    .line 528
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/security/Authentication;->setCredentials(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 533
    .end local v0    # "auth":Lorg/eclipse/jetty/client/security/Authentication;
    :cond_3
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/client/HttpExchange;->scheduleTimeout(Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 535
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->getIdleConnection()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    move-result-object v2

    .line 536
    .local v2, "connection":Lorg/eclipse/jetty/client/AbstractHttpConnection;
    if-eqz v2, :cond_5

    .line 538
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 556
    :cond_4
    :goto_2
    return-void

    .line 542
    :cond_5
    const/4 v5, 0x0

    .line 543
    .local v5, "startConnection":Z
    monitor-enter p0

    .line 545
    :try_start_0
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget v7, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxQueueSize:I

    if-ne v6, v7, :cond_6

    .line 546
    new-instance v6, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Queue full for address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jetty/client/HttpDestination;->_address:Lorg/eclipse/jetty/client/Address;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 551
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 548
    :cond_6
    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v6, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget v7, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    add-int/2addr v6, v7

    iget v7, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    if-ge v6, v7, :cond_7

    .line 550
    const/4 v5, 0x1

    .line 551
    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    if-eqz v5, :cond_4

    .line 554
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->startNewConnection()V

    goto :goto_2
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 661
    monitor-enter p0

    .line 663
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "idle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 664
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 665
    monitor-exit p0

    .line 666
    return-void

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected exchangeExpired(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 1
    .param p1, "exchange"    # Lorg/eclipse/jetty/client/HttpExchange;

    .prologue
    .line 562
    monitor-enter p0

    .line 564
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 565
    monitor-exit p0

    .line 566
    return-void

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAddress()Lorg/eclipse/jetty/client/Address;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_address:Lorg/eclipse/jetty/client/Address;

    return-object v0
.end method

.method public getConnections()I
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHostHeader()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_hostHeader:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    return-object v0
.end method

.method public getHttpClient()Lorg/eclipse/jetty/client/HttpClient;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    return-object v0
.end method

.method public getIdleConnection()Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 236
    .local v1, "connection":Lorg/eclipse/jetty/client/AbstractHttpConnection;
    :cond_0
    monitor-enter p0

    .line 238
    if-eqz v1, :cond_1

    .line 240
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->close()V

    .line 242
    const/4 v1, 0x0

    .line 244
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 245
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    move-object v1, v0

    .line 246
    :cond_2
    monitor-exit p0

    .line 248
    if-nez v1, :cond_3

    .line 250
    const/4 v1, 0x0

    .line 257
    .end local v1    # "connection":Lorg/eclipse/jetty/client/AbstractHttpConnection;
    :goto_0
    return-object v1

    .line 246
    .restart local v1    # "connection":Lorg/eclipse/jetty/client/AbstractHttpConnection;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 255
    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->cancelIdleTimeout()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getIdleConnections()I
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMaxConnections()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    return v0
.end method

.method public getMaxQueueSize()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxQueueSize:I

    return v0
.end method

.method public getProxy()Lorg/eclipse/jetty/client/Address;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_proxy:Lorg/eclipse/jetty/client/Address;

    return-object v0
.end method

.method public getProxyAuthentication()Lorg/eclipse/jetty/client/security/Authentication;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    return-object v0
.end method

.method public isProxied()Z
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_proxy:Lorg/eclipse/jetty/client/Address;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_ssl:Z

    return v0
.end method

.method public onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 285
    .local v0, "connect_failure":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 286
    .local v3, "startConnection":Z
    monitor-enter p0

    .line 288
    :try_start_0
    iget v4, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    .line 289
    iget v4, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    if-lez v4, :cond_3

    .line 291
    move-object v0, p1

    .line 292
    iget v4, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    .line 305
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    if-eqz v3, :cond_1

    .line 308
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->startNewConnection()V

    .line 310
    :cond_1
    if-eqz v0, :cond_2

    .line 314
    :try_start_1
    iget-object v4, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 321
    :cond_2
    :goto_1
    return-void

    .line 294
    :cond_3
    :try_start_2
    iget-object v4, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 296
    iget-object v4, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/client/HttpExchange;

    .line 297
    .local v2, "ex":Lorg/eclipse/jetty/client/HttpExchange;
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 298
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onConnectionFailed(Ljava/lang/Throwable;)V

    .line 302
    :cond_4
    iget-object v4, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpClient;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    const/4 v3, 0x1

    goto :goto_0

    .line 305
    .end local v2    # "ex":Lorg/eclipse/jetty/client/HttpExchange;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 316
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v4, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 325
    monitor-enter p0

    .line 327
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    .line 328
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 330
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/HttpExchange;

    .line 331
    .local v0, "ex":Lorg/eclipse/jetty/client/HttpExchange;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 334
    .end local v0    # "ex":Lorg/eclipse/jetty/client/HttpExchange;
    :cond_0
    monitor-exit p0

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNewConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V
    .locals 9
    .param p1, "connection"    # Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    const/4 v6, 0x0

    .line 341
    .local v6, "q_connection":Lorg/eclipse/jetty/io/Connection;
    monitor-enter p0

    .line 343
    :try_start_0
    iget v7, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    .line 344
    iget-object v7, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget v7, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    if-lez v7, :cond_1

    .line 348
    move-object v6, p1

    .line 349
    iget v7, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    .line 373
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    if-eqz v6, :cond_0

    .line 379
    :try_start_1
    iget-object v7, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7, v6}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 386
    :cond_0
    :goto_1
    return-void

    .line 351
    :cond_1
    :try_start_2
    iget-object v7, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 353
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->setIdleTimeout()V

    .line 354
    iget-object v7, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 358
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v3

    .line 359
    .local v3, "endPoint":Lorg/eclipse/jetty/io/EndPoint;
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->isProxied()Z

    move-result v7

    if-eqz v7, :cond_3

    instance-of v7, v3, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    if-eqz v7, :cond_3

    .line 361
    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    move-object v5, v0

    .line 362
    .local v5, "proxyEndPoint":Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;
    iget-object v7, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/client/HttpExchange;

    .line 363
    .local v4, "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    new-instance v1, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v7

    invoke-direct {v1, p0, v7, v5, v4}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;-><init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/Address;Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 364
    .local v1, "connect":Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->getProxy()Lorg/eclipse/jetty/client/Address;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->setAddress(Lorg/eclipse/jetty/client/Address;)V

    .line 365
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V

    goto :goto_0

    .line 369
    .end local v1    # "connect":Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;
    .end local v4    # "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    .end local v5    # "proxyEndPoint":Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;
    :cond_3
    iget-object v7, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/client/HttpExchange;

    .line 370
    .restart local v4    # "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    invoke-virtual {p0, p1, v4}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 381
    .end local v3    # "endPoint":Lorg/eclipse/jetty/io/EndPoint;
    .end local v4    # "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v7, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v7, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public resend(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 1
    .param p1, "ex"    # Lorg/eclipse/jetty/client/HttpExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onRetry()V

    .line 498
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpExchange;->reset()V

    .line 499
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->doSend(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 500
    return-void
.end method

.method public reserveConnection(J)Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .locals 2
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/client/HttpDestination;->getConnection(J)Lorg/eclipse/jetty/client/AbstractHttpConnection;

    move-result-object v0

    .line 226
    .local v0, "connection":Lorg/eclipse/jetty/client/AbstractHttpConnection;
    if-eqz v0, :cond_0

    .line 227
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->setReserved(Z)V

    .line 228
    :cond_0
    return-object v0
.end method

.method public returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V
    .locals 5
    .param p1, "connection"    # Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .param p2, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 390
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->isReserved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    invoke-virtual {p1, v4}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->setReserved(Z)V

    .line 393
    :cond_0
    if-eqz p2, :cond_1

    .line 397
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpClient;->isStarted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 438
    :cond_2
    :goto_1
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    if-nez p2, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 410
    monitor-enter p0

    .line 412
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 414
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->setIdleTimeout()V

    .line 415
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 423
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 419
    :cond_4
    :try_start_2
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/client/HttpExchange;

    .line 420
    .local v1, "ex":Lorg/eclipse/jetty/client/HttpExchange;
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 427
    .end local v1    # "ex":Lorg/eclipse/jetty/client/HttpExchange;
    :cond_5
    const/4 v2, 0x0

    .line 428
    .local v2, "startConnection":Z
    monitor-enter p0

    .line 430
    :try_start_3
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 431
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 432
    const/4 v2, 0x1

    .line 433
    :cond_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 435
    if-eqz v2, :cond_2

    .line 436
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->startNewConnection()V

    goto :goto_1

    .line 433
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method public returnIdleConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V
    .locals 4
    .param p1, "connection"    # Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .prologue
    .line 443
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v3

    int-to-long v0, v3

    .line 444
    .local v0, "idleForMs":J
    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->onIdleExpired(J)V

    .line 446
    const/4 v2, 0x0

    .line 447
    .local v2, "startConnection":Z
    monitor-enter p0

    .line 449
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 450
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 452
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpClient;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 453
    const/4 v2, 0x1

    .line 454
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    if-eqz v2, :cond_1

    .line 457
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->startNewConnection()V

    .line 458
    :cond_1
    return-void

    .line 443
    .end local v0    # "idleForMs":J
    .end local v2    # "startConnection":Z
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 454
    .restart local v0    # "idleForMs":J
    .restart local v2    # "startConnection":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected send(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 2
    .param p1, "connection"    # Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .param p2, "exchange"    # Lorg/eclipse/jetty/client/HttpExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    monitor-enter p0

    .line 574
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->send(Lorg/eclipse/jetty/client/HttpExchange;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 576
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 577
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 578
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->returnIdleConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V

    .line 580
    :cond_1
    monitor-exit p0

    .line 581
    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public send(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 10
    .param p1, "ex"    # Lorg/eclipse/jetty/client/HttpExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    iget-object v7, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v7}, Lorg/eclipse/jetty/client/HttpClient;->getRegisteredListeners()Ljava/util/LinkedList;

    move-result-object v6

    .line 464
    .local v6, "listeners":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 467
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v3

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_0

    .line 469
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 473
    .local v5, "listenerClass":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 474
    .local v4, "listener":Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lorg/eclipse/jetty/client/HttpDestination;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Lorg/eclipse/jetty/client/HttpExchange;

    aput-object v9, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 475
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/client/HttpEventListener;

    .line 476
    .local v2, "elistener":Lorg/eclipse/jetty/client/HttpEventListener;
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 478
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v2    # "elistener":Lorg/eclipse/jetty/client/HttpEventListener;
    .end local v4    # "listener":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 480
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to instantiate registered listener for destination: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 487
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v5    # "listenerClass":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v7}, Lorg/eclipse/jetty/client/HttpClient;->hasRealms()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 489
    new-instance v7, Lorg/eclipse/jetty/client/security/SecurityListener;

    invoke-direct {v7, p0, p1}, Lorg/eclipse/jetty/client/security/SecurityListener;-><init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/HttpExchange;)V

    invoke-virtual {p1, v7}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 492
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->doSend(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 493
    return-void
.end method

.method public setMaxConnections(I)V
    .locals 0
    .param p1, "maxConnections"    # I

    .prologue
    .line 109
    iput p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    .line 110
    return-void
.end method

.method public setMaxQueueSize(I)V
    .locals 0
    .param p1, "maxQueueSize"    # I

    .prologue
    .line 119
    iput p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxQueueSize:I

    .line 120
    return-void
.end method

.method public setProxy(Lorg/eclipse/jetty/client/Address;)V
    .locals 0
    .param p1, "proxy"    # Lorg/eclipse/jetty/client/Address;

    .prologue
    .line 612
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_proxy:Lorg/eclipse/jetty/client/Address;

    .line 613
    return-void
.end method

.method public setProxyAuthentication(Lorg/eclipse/jetty/client/security/Authentication;)V
    .locals 0
    .param p1, "authentication"    # Lorg/eclipse/jetty/client/security/Authentication;

    .prologue
    .line 627
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    .line 628
    return-void
.end method

.method protected startNewConnection()V
    .locals 3

    .prologue
    .line 266
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :try_start_1
    iget v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    .line 269
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    iget-object v0, v2, Lorg/eclipse/jetty/client/HttpClient;->_connector:Lorg/eclipse/jetty/client/HttpClient$Connector;

    .line 271
    .local v0, "connector":Lorg/eclipse/jetty/client/HttpClient$Connector;
    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0, p0}, Lorg/eclipse/jetty/client/HttpClient$Connector;->startConnection(Lorg/eclipse/jetty/client/HttpDestination;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    .end local v0    # "connector":Lorg/eclipse/jetty/client/HttpClient$Connector;
    :cond_0
    :goto_0
    return-void

    .line 269
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 274
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 277
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->onConnectionFailed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized toDetailString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 591
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 594
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 596
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 598
    .local v1, "connection":Lorg/eclipse/jetty/client/AbstractHttpConnection;
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->toDetailString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 600
    const-string v3, " IDLE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 603
    .end local v1    # "connection":Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 591
    .end local v0    # "b":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 603
    .restart local v0    # "b":Ljava/lang/StringBuilder;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 604
    :try_start_4
    const-string v3, "--"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 586
    monitor-enter p0

    :try_start_0
    const-string v0, "HttpDestination@%x//%s:%d(%d/%d,%d,%d/%d)%n"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_address:Lorg/eclipse/jetty/client/Address;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/Address;->getHost()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_address:Lorg/eclipse/jetty/client/Address;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/Address;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxQueueSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
