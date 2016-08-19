.class public Lorg/eclipse/jetty/client/HttpClient;
.super Lorg/eclipse/jetty/util/component/AggregateLifeCycle;
.source "HttpClient.java"

# interfaces
.implements Lorg/eclipse/jetty/http/HttpBuffers;
.implements Lorg/eclipse/jetty/util/Attributes;
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/client/HttpClient$LocalQueuedThreadPool;,
        Lorg/eclipse/jetty/client/HttpClient$Connector;
    }
.end annotation


# static fields
.field public static final CONNECTOR_SELECT_CHANNEL:I = 0x2

.field public static final CONNECTOR_SOCKET:I


# instance fields
.field private _attributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private final _buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

.field private _connectBlocking:Z

.field private _connectTimeout:I

.field _connector:Lorg/eclipse/jetty/client/HttpClient$Connector;

.field private _connectorType:I

.field private _destinations:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/eclipse/jetty/client/Address;",
            "Lorg/eclipse/jetty/client/HttpDestination;",
            ">;"
        }
    .end annotation
.end field

.field private _idleTimeout:J

.field private _idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

.field private _maxConnectionsPerAddress:I

.field private _maxQueueSizePerAddress:I

.field private _maxRedirects:I

.field private _maxRetries:I

.field private _noProxy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _proxy:Lorg/eclipse/jetty/client/Address;

.field private _proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

.field private _realmResolver:Lorg/eclipse/jetty/client/security/RealmResolver;

.field private _registeredListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

.field _threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

.field private _timeout:J

.field private _timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

.field private _useDirectBuffers:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/client/HttpClient;-><init>(Lorg/eclipse/jetty/util/ssl/SslContextFactory;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/ssl/SslContextFactory;)V
    .locals 3
    .param p1, "sslContextFactory"    # Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    .prologue
    const v2, 0x7fffffff

    const/4 v1, 0x1

    .line 130
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;-><init>()V

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectorType:I

    .line 75
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_useDirectBuffers:Z

    .line 76
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectBlocking:Z

    .line 77
    iput v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxConnectionsPerAddress:I

    .line 78
    iput v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxQueueSizePerAddress:I

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_destinations:Ljava/util/concurrent/ConcurrentMap;

    .line 82
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeout:J

    .line 83
    const-wide/32 v0, 0x4e200

    iput-wide v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeout:J

    .line 84
    const v0, 0x124f8

    iput v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectTimeout:I

    .line 85
    new-instance v0, Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/Timeout;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 86
    new-instance v0, Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/Timeout;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 90
    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRetries:I

    .line 91
    const/16 v0, 0x14

    iput v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRedirects:I

    .line 98
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 100
    new-instance v0, Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    .line 131
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpClient;->addBean(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpClient;->addBean(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/client/HttpClient;)Lorg/eclipse/jetty/util/thread/Timeout;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/client/HttpClient;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/client/HttpClient;)Lorg/eclipse/jetty/util/thread/Timeout;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/client/HttpClient;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    return-object v0
.end method

.method private setBufferTypes()V
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectorType:I

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 108
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 109
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 120
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 115
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_useDirectBuffers:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    :goto_1
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 117
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_useDirectBuffers:Z

    if-eqz v0, :cond_2

    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    :goto_2
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    goto :goto_0

    .line 115
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    goto :goto_1

    .line 117
    :cond_2
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    goto :goto_2
.end method


# virtual methods
.method public cancel(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 0
    .param p1, "task"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .prologue
    .line 277
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->cancel()V

    .line 278
    return-void
.end method

.method public clearAttributes()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->clearAttributes()V

    .line 231
    return-void
.end method

.method protected doStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 403
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpClient;->setBufferTypes()V

    .line 405
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    iget-wide v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeout:J

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/util/thread/Timeout;->setDuration(J)V

    .line 406
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/thread/Timeout;->setNow()J

    .line 407
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    iget-wide v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeout:J

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/util/thread/Timeout;->setDuration(J)V

    .line 408
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/thread/Timeout;->setNow()J

    .line 410
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    if-nez v1, :cond_0

    .line 412
    new-instance v0, Lorg/eclipse/jetty/client/HttpClient$LocalQueuedThreadPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/client/HttpClient$LocalQueuedThreadPool;-><init>(Lorg/eclipse/jetty/client/HttpClient$1;)V

    .line 413
    .local v0, "pool":Lorg/eclipse/jetty/util/thread/QueuedThreadPool;
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->setMaxThreads(I)V

    .line 414
    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->setDaemon(Z)V

    .line 415
    const-string v1, "HttpClient"

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->setName(Ljava/lang/String;)V

    .line 416
    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 417
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v1, v4}, Lorg/eclipse/jetty/client/HttpClient;->addBean(Ljava/lang/Object;Z)Z

    .line 420
    .end local v0    # "pool":Lorg/eclipse/jetty/util/thread/QueuedThreadPool;
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectorType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    new-instance v1, Lorg/eclipse/jetty/client/SelectConnector;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/client/SelectConnector;-><init>(Lorg/eclipse/jetty/client/HttpClient;)V

    :goto_0
    iput-object v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_connector:Lorg/eclipse/jetty/client/HttpClient$Connector;

    .line 421
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_connector:Lorg/eclipse/jetty/client/HttpClient$Connector;

    invoke-virtual {p0, v1, v4}, Lorg/eclipse/jetty/client/HttpClient;->addBean(Ljava/lang/Object;Z)Z

    .line 423
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->doStart()V

    .line 425
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    new-instance v2, Lorg/eclipse/jetty/client/HttpClient$1;

    invoke-direct {v2, p0}, Lorg/eclipse/jetty/client/HttpClient$1;-><init>(Lorg/eclipse/jetty/client/HttpClient;)V

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    .line 443
    return-void

    .line 420
    :cond_1
    new-instance v1, Lorg/eclipse/jetty/client/SocketConnector;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/client/SocketConnector;-><init>(Lorg/eclipse/jetty/client/HttpClient;)V

    goto :goto_0
.end method

.method protected doStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_destinations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/HttpDestination;

    .line 450
    .local v0, "destination":Lorg/eclipse/jetty/client/HttpDestination;
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->close()V

    goto :goto_0

    .line 452
    .end local v0    # "destination":Lorg/eclipse/jetty/client/HttpDestination;
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/thread/Timeout;->cancelAll()V

    .line 453
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/thread/Timeout;->cancelAll()V

    .line 455
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->doStop()V

    .line 457
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    instance-of v2, v2, Lorg/eclipse/jetty/client/HttpClient$LocalQueuedThreadPool;

    if-eqz v2, :cond_1

    .line 459
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/client/HttpClient;->removeBean(Ljava/lang/Object;)Z

    .line 460
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 463
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_connector:Lorg/eclipse/jetty/client/HttpClient$Connector;

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/client/HttpClient;->removeBean(Ljava/lang/Object;)Z

    .line 464
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectTimeout:I

    return v0
.end method

.method public getConnectorType()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectorType:I

    return v0
.end method

.method public getDestination(Lorg/eclipse/jetty/client/Address;Z)Lorg/eclipse/jetty/client/HttpDestination;
    .locals 4
    .param p1, "remote"    # Lorg/eclipse/jetty/client/Address;
    .param p2, "ssl"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    new-instance v2, Ljava/net/UnknownHostException;

    const-string v3, "Remote socket address cannot be null."

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_destinations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/HttpDestination;

    .line 240
    .local v0, "destination":Lorg/eclipse/jetty/client/HttpDestination;
    if-nez v0, :cond_3

    .line 242
    new-instance v0, Lorg/eclipse/jetty/client/HttpDestination;

    .end local v0    # "destination":Lorg/eclipse/jetty/client/HttpDestination;
    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jetty/client/HttpDestination;-><init>(Lorg/eclipse/jetty/client/HttpClient;Lorg/eclipse/jetty/client/Address;Z)V

    .line 243
    .restart local v0    # "destination":Lorg/eclipse/jetty/client/HttpDestination;
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxy:Lorg/eclipse/jetty/client/Address;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_noProxy:Ljava/util/Set;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_noProxy:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/Address;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 245
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxy:Lorg/eclipse/jetty/client/Address;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/client/HttpDestination;->setProxy(Lorg/eclipse/jetty/client/Address;)V

    .line 246
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    if-eqz v2, :cond_2

    .line 247
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/client/HttpDestination;->setProxyAuthentication(Lorg/eclipse/jetty/client/security/Authentication;)V

    .line 249
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_destinations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/client/HttpDestination;

    .line 250
    .local v1, "other":Lorg/eclipse/jetty/client/HttpDestination;
    if-eqz v1, :cond_3

    .line 251
    move-object v0, v1

    .line 253
    .end local v1    # "other":Lorg/eclipse/jetty/client/HttpDestination;
    :cond_3
    return-object v0
.end method

.method public getIdleTimeout()J
    .locals 2

    .prologue
    .line 499
    iget-wide v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeout:J

    return-wide v0
.end method

.method public getKeyManagerAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 832
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSslKeyManagerFactoryAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStoreInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 770
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStoreInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStoreLocation()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 757
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStorePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStoreType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 804
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxBuffers()I
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getMaxBuffers()I

    move-result v0

    return v0
.end method

.method public getMaxConnectionsPerAddress()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxConnectionsPerAddress:I

    return v0
.end method

.method public getMaxQueueSizePerAddress()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxQueueSizePerAddress:I

    return v0
.end method

.method public getNoProxy()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_noProxy:Ljava/util/Set;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 860
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 874
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxy()Lorg/eclipse/jetty/client/Address;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxy:Lorg/eclipse/jetty/client/Address;

    return-object v0
.end method

.method public getProxyAuthentication()Lorg/eclipse/jetty/client/security/Authentication;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    return-object v0
.end method

.method public getRealmResolver()Lorg/eclipse/jetty/client/security/RealmResolver;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_realmResolver:Lorg/eclipse/jetty/client/security/RealmResolver;

    return-object v0
.end method

.method public getRegisteredListeners()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_registeredListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getRequestBufferSize()I
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestBufferSize()I

    move-result v0

    return v0
.end method

.method public getRequestBufferType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestBufferType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method public getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeaderSize()I
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestHeaderSize()I

    move-result v0

    return v0
.end method

.method public getRequestHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBufferSize()I
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseBufferSize()I

    move-result v0

    return v0
.end method

.method public getResponseBufferType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseBufferType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaderSize()I
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseHeaderSize()I

    move-result v0

    return v0
.end method

.method public getResponseHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method protected getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public getSecureRandomAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 888
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSecureRandomAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoTimeout()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 519
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpClient;->getTimeout()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public getSslContextFactory()Lorg/eclipse/jetty/util/ssl/SslContextFactory;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    return-object v0
.end method

.method public getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 539
    iget-wide v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeout:J

    return-wide v0
.end method

.method public getTrustManagerAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 846
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustManagerFactoryAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStoreInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 743
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustStoreInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStoreLocation()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 729
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustStore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStoreType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 818
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseDirectBuffers()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_useDirectBuffers:Z

    return v0
.end method

.method public hasRealms()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_realmResolver:Lorg/eclipse/jetty/client/security/RealmResolver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isConnectBlocking()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectBlocking:Z

    return v0
.end method

.method public isProxied()Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxy:Lorg/eclipse/jetty/client/Address;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxRedirects()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRedirects:I

    return v0
.end method

.method public maxRetries()I
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRetries:I

    return v0
.end method

.method public registerListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "listenerClass"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_registeredListeners:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_registeredListeners:Ljava/util/LinkedList;

    .line 337
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_registeredListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 1
    .param p1, "task"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .prologue
    .line 259
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 260
    return-void
.end method

.method public schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V
    .locals 3
    .param p1, "task"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;
    .param p2, "timeout"    # J

    .prologue
    .line 265
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/thread/Timeout;->getDuration()J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 266
    return-void
.end method

.method public scheduleIdle(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 1
    .param p1, "task"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .prologue
    .line 271
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 272
    return-void
.end method

.method public send(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 4
    .param p1, "exchange"    # Lorg/eclipse/jetty/client/HttpExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    sget-object v2, Lorg/eclipse/jetty/http/HttpSchemes;->HTTPS_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpExchange;->getScheme()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v1

    .line 158
    .local v1, "ssl":Z
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 159
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpExchange;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jetty/client/HttpClient;->getDestination(Lorg/eclipse/jetty/client/Address;Z)Lorg/eclipse/jetty/client/HttpDestination;

    move-result-object v0

    .line 160
    .local v0, "destination":Lorg/eclipse/jetty/client/HttpDestination;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 161
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/Object;

    .prologue
    .line 224
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method public setConnectBlocking(Z)V
    .locals 0
    .param p1, "connectBlocking"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectBlocking:Z

    .line 152
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "connectTimeout"    # I

    .prologue
    .line 566
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectTimeout:I

    .line 567
    return-void
.end method

.method public setConnectorType(I)V
    .locals 0
    .param p1, "connectorType"    # I

    .prologue
    .line 373
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectorType:I

    .line 374
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpClient;->setBufferTypes()V

    .line 375
    return-void
.end method

.method public setIdleTimeout(J)V
    .locals 0
    .param p1, "ms"    # J

    .prologue
    .line 508
    iput-wide p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeout:J

    .line 509
    return-void
.end method

.method public setKeyManagerAlgorithm(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyManagerAlgorithm"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 839
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSslKeyManagerFactoryAlgorithm(Ljava/lang/String;)V

    .line 840
    return-void
.end method

.method public setKeyManagerPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyManagerPassword"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyManagerPassword(Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method public setKeyStoreInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "keyStoreInputStream"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStoreInputStream(Ljava/io/InputStream;)V

    .line 777
    return-void
.end method

.method public setKeyStoreLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyStoreLocation"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 764
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStorePath(Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method public setKeyStorePassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyStorePassword"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 783
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStorePassword(Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method public setKeyStoreType(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyStoreType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 811
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStoreType(Ljava/lang/String;)V

    .line 812
    return-void
.end method

.method public setMaxBuffers(I)V
    .locals 1
    .param p1, "maxBuffers"    # I

    .prologue
    .line 717
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setMaxBuffers(I)V

    .line 718
    return-void
.end method

.method public setMaxConnectionsPerAddress(I)V
    .locals 0
    .param p1, "maxConnectionsPerAddress"    # I

    .prologue
    .line 386
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxConnectionsPerAddress:I

    .line 387
    return-void
.end method

.method public setMaxQueueSizePerAddress(I)V
    .locals 0
    .param p1, "maxQueueSizePerAddress"    # I

    .prologue
    .line 396
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxQueueSizePerAddress:I

    .line 397
    return-void
.end method

.method public setMaxRedirects(I)V
    .locals 0
    .param p1, "redirects"    # I

    .prologue
    .line 632
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRedirects:I

    .line 633
    return-void
.end method

.method public setMaxRetries(I)V
    .locals 0
    .param p1, "retries"    # I

    .prologue
    .line 620
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRetries:I

    .line 621
    return-void
.end method

.method public setNoProxy(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 608
    .local p1, "noProxyAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_noProxy:Ljava/util/Set;

    .line 609
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 867
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setProtocol(Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 881
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpClient;->setProvider(Ljava/lang/String;)V

    .line 882
    return-void
.end method

.method public setProxy(Lorg/eclipse/jetty/client/Address;)V
    .locals 0
    .param p1, "proxy"    # Lorg/eclipse/jetty/client/Address;

    .prologue
    .line 578
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxy:Lorg/eclipse/jetty/client/Address;

    .line 579
    return-void
.end method

.method public setProxyAuthentication(Lorg/eclipse/jetty/client/security/Authentication;)V
    .locals 0
    .param p1, "authentication"    # Lorg/eclipse/jetty/client/security/Authentication;

    .prologue
    .line 590
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    .line 591
    return-void
.end method

.method public setRealmResolver(Lorg/eclipse/jetty/client/security/RealmResolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/eclipse/jetty/client/security/RealmResolver;

    .prologue
    .line 298
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_realmResolver:Lorg/eclipse/jetty/client/security/RealmResolver;

    .line 299
    return-void
.end method

.method public setRequestBufferSize(I)V
    .locals 1
    .param p1, "requestBufferSize"    # I

    .prologue
    .line 642
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBufferSize(I)V

    .line 643
    return-void
.end method

.method public setRequestBuffers(Lorg/eclipse/jetty/io/Buffers;)V
    .locals 1
    .param p1, "requestBuffers"    # Lorg/eclipse/jetty/io/Buffers;

    .prologue
    .line 697
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBuffers(Lorg/eclipse/jetty/io/Buffers;)V

    .line 698
    return-void
.end method

.method public setRequestHeaderSize(I)V
    .locals 1
    .param p1, "requestHeaderSize"    # I

    .prologue
    .line 652
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestHeaderSize(I)V

    .line 653
    return-void
.end method

.method public setResponseBufferSize(I)V
    .locals 1
    .param p1, "responseBufferSize"    # I

    .prologue
    .line 662
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBufferSize(I)V

    .line 663
    return-void
.end method

.method public setResponseBuffers(Lorg/eclipse/jetty/io/Buffers;)V
    .locals 1
    .param p1, "responseBuffers"    # Lorg/eclipse/jetty/io/Buffers;

    .prologue
    .line 702
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBuffers(Lorg/eclipse/jetty/io/Buffers;)V

    .line 703
    return-void
.end method

.method public setResponseHeaderSize(I)V
    .locals 1
    .param p1, "responseHeaderSize"    # I

    .prologue
    .line 672
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseHeaderSize(I)V

    .line 673
    return-void
.end method

.method public setSecureRandomAlgorithm(Ljava/lang/String;)V
    .locals 1
    .param p1, "secureRandomAlgorithm"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 895
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSecureRandomAlgorithm(Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/client/HttpClient;->setTimeout(J)V

    .line 531
    return-void
.end method

.method public setThreadPool(Lorg/eclipse/jetty/util/thread/ThreadPool;)V
    .locals 1
    .param p1, "threadPool"    # Lorg/eclipse/jetty/util/thread/ThreadPool;

    .prologue
    .line 180
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpClient;->removeBean(Ljava/lang/Object;)Z

    .line 181
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpClient;->addBean(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method public setTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .prologue
    .line 548
    iput-wide p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeout:J

    .line 549
    return-void
.end method

.method public setTrustManagerAlgorithm(Ljava/lang/String;)V
    .locals 1
    .param p1, "trustManagerAlgorithm"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 853
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustManagerFactoryAlgorithm(Ljava/lang/String;)V

    .line 854
    return-void
.end method

.method public setTrustStoreInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "trustStoreInputStream"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 750
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStoreInputStream(Ljava/io/InputStream;)V

    .line 751
    return-void
.end method

.method public setTrustStoreLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "trustStoreLocation"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 736
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStore(Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public setTrustStorePassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "trustStorePassword"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 797
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStorePassword(Ljava/lang/String;)V

    .line 798
    return-void
.end method

.method public setTrustStoreType(Ljava/lang/String;)V
    .locals 1
    .param p1, "trustStoreType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 825
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStoreType(Ljava/lang/String;)V

    .line 826
    return-void
.end method

.method public setUseDirectBuffers(Z)V
    .locals 0
    .param p1, "direct"    # Z

    .prologue
    .line 357
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_useDirectBuffers:Z

    .line 358
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpClient;->setBufferTypes()V

    .line 359
    return-void
.end method
