.class public abstract Lorg/eclipse/jetty/server/AbstractConnector;
.super Lorg/eclipse/jetty/util/component/AggregateLifeCycle;
.source "AbstractConnector.java"

# interfaces
.implements Lorg/eclipse/jetty/http/HttpBuffers;
.implements Lorg/eclipse/jetty/server/Connector;
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _acceptQueueSize:I

.field private _acceptorPriorityOffset:I

.field private transient _acceptorThreads:[Ljava/lang/Thread;

.field private _acceptors:I

.field protected final _buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

.field private _confidentialPort:I

.field private _confidentialScheme:Ljava/lang/String;

.field private final _connectionDurationStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

.field private final _connectionStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

.field private _forwarded:Z

.field private _forwardedCipherSuiteHeader:Ljava/lang/String;

.field private _forwardedForHeader:Ljava/lang/String;

.field private _forwardedHostHeader:Ljava/lang/String;

.field private _forwardedProtoHeader:Ljava/lang/String;

.field private _forwardedServerHeader:Ljava/lang/String;

.field private _forwardedSslSessionIdHeader:Ljava/lang/String;

.field private _host:Ljava/lang/String;

.field private _hostHeader:Ljava/lang/String;

.field private _integralPort:I

.field private _integralScheme:Ljava/lang/String;

.field protected _lowResourceMaxIdleTime:I

.field protected _maxIdleTime:I

.field private _name:Ljava/lang/String;

.field private _port:I

.field private final _requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

.field private _reuseAddress:Z

.field private _server:Lorg/eclipse/jetty/server/Server;

.field protected _soLingerTime:I

.field private final _statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

.field private _threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

.field private _useDNS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;-><init>()V

    .line 64
    iput v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_port:I

    .line 65
    const-string v0, "https"

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_integralScheme:Ljava/lang/String;

    .line 66
    iput v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_integralPort:I

    .line 67
    const-string v0, "https"

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_confidentialScheme:Ljava/lang/String;

    .line 68
    iput v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_confidentialPort:I

    .line 69
    iput v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptQueueSize:I

    .line 70
    iput v3, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptors:I

    .line 71
    iput v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorPriorityOffset:I

    .line 76
    const-string v0, "X-Forwarded-Host"

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedHostHeader:Ljava/lang/String;

    .line 77
    const-string v0, "X-Forwarded-Server"

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedServerHeader:Ljava/lang/String;

    .line 78
    const-string v0, "X-Forwarded-For"

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedForHeader:Ljava/lang/String;

    .line 79
    const-string v0, "X-Forwarded-Proto"

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedProtoHeader:Ljava/lang/String;

    .line 82
    iput-boolean v3, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_reuseAddress:Z

    .line 84
    const v0, 0x30d40

    iput v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_maxIdleTime:I

    .line 85
    iput v2, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_lowResourceMaxIdleTime:I

    .line 86
    iput v2, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_soLingerTime:I

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 93
    new-instance v0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    .line 95
    new-instance v0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    .line 97
    new-instance v0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionDurationStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    .line 99
    new-instance v0, Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/AbstractConnector;->addBean(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/AbstractConnector;)[Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AbstractConnector;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorThreads:[Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/server/AbstractConnector;)I
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AbstractConnector;

    .prologue
    .line 55
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorPriorityOffset:I

    return v0
.end method

.method static synthetic access$200()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private updateNotEqual(Ljava/util/concurrent/atomic/AtomicLong;JJ)V
    .locals 3
    .param p1, "valueHolder"    # Ljava/util/concurrent/atomic/AtomicLong;
    .param p2, "compare"    # J
    .param p4, "value"    # J

    .prologue
    .line 1209
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 1210
    .local v0, "oldValue":J
    :goto_0
    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    .line 1212
    invoke-virtual {p1, v0, v1, p4, p5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1216
    :cond_0
    return-void

    .line 1214
    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract accept(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method protected checkForwardedHeaders(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V
    .locals 13
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p2, "request"    # Lorg/eclipse/jetty/server/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 408
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v6

    .line 411
    .local v6, "httpFields":Lorg/eclipse/jetty/http/HttpFields;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getForwardedCipherSuiteHeader()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 413
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getForwardedCipherSuiteHeader()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "cipher_suite":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 415
    const-string v9, "javax.servlet.request.cipher_suite"

    invoke-virtual {p2, v9, v0}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 417
    .end local v0    # "cipher_suite":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getForwardedSslSessionIdHeader()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 419
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getForwardedSslSessionIdHeader()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 420
    .local v8, "ssl_session_id":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 422
    const-string v9, "javax.servlet.request.ssl_session_id"

    invoke-virtual {p2, v9, v8}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 423
    const-string v9, "https"

    invoke-virtual {p2, v9}, Lorg/eclipse/jetty/server/Request;->setScheme(Ljava/lang/String;)V

    .line 428
    .end local v8    # "ssl_session_id":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getForwardedHostHeader()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v6, v9}, Lorg/eclipse/jetty/server/AbstractConnector;->getLeftMostFieldValue(Lorg/eclipse/jetty/http/HttpFields;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "forwardedHost":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getForwardedServerHeader()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v6, v9}, Lorg/eclipse/jetty/server/AbstractConnector;->getLeftMostFieldValue(Lorg/eclipse/jetty/http/HttpFields;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 430
    .local v5, "forwardedServer":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getForwardedForHeader()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v6, v9}, Lorg/eclipse/jetty/server/AbstractConnector;->getLeftMostFieldValue(Lorg/eclipse/jetty/http/HttpFields;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "forwardedFor":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getForwardedProtoHeader()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v6, v9}, Lorg/eclipse/jetty/server/AbstractConnector;->getLeftMostFieldValue(Lorg/eclipse/jetty/http/HttpFields;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 433
    .local v4, "forwardedProto":Ljava/lang/String;
    iget-object v9, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_hostHeader:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 436
    sget-object v9, Lorg/eclipse/jetty/http/HttpHeaders;->HOST_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v10, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_hostHeader:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p2, v12}, Lorg/eclipse/jetty/server/Request;->setServerName(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2, v11}, Lorg/eclipse/jetty/server/Request;->setServerPort(I)V

    .line 439
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    .line 455
    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    .line 457
    invoke-virtual {p2, v2}, Lorg/eclipse/jetty/server/Request;->setRemoteAddr(Ljava/lang/String;)V

    .line 458
    const/4 v7, 0x0

    .line 460
    .local v7, "inetAddress":Ljava/net/InetAddress;
    iget-boolean v9, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_useDNS:Z

    if-eqz v9, :cond_3

    .line 464
    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 472
    :cond_3
    :goto_1
    if-nez v7, :cond_8

    .end local v2    # "forwardedFor":Ljava/lang/String;
    :goto_2
    invoke-virtual {p2, v2}, Lorg/eclipse/jetty/server/Request;->setRemoteHost(Ljava/lang/String;)V

    .line 475
    .end local v7    # "inetAddress":Ljava/net/InetAddress;
    :cond_4
    if-eqz v4, :cond_5

    .line 477
    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/server/Request;->setScheme(Ljava/lang/String;)V

    .line 479
    :cond_5
    return-void

    .line 441
    .restart local v2    # "forwardedFor":Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_7

    .line 444
    sget-object v9, Lorg/eclipse/jetty/http/HttpHeaders;->HOST_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v6, v9, v3}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2, v12}, Lorg/eclipse/jetty/server/Request;->setServerName(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p2, v11}, Lorg/eclipse/jetty/server/Request;->setServerPort(I)V

    .line 447
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    goto :goto_0

    .line 449
    :cond_7
    if-eqz v5, :cond_2

    .line 452
    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->setServerName(Ljava/lang/String;)V

    goto :goto_0

    .line 466
    .restart local v7    # "inetAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Ljava/net/UnknownHostException;
    sget-object v9, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 472
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_8
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method protected configure(Ljava/net/Socket;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 387
    iget v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_soLingerTime:I

    if-ltz v1, :cond_0

    .line 388
    const/4 v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_soLingerTime:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {p1, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 396
    :goto_0
    return-void

    .line 390
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected connectionClosed(Lorg/eclipse/jetty/io/Connection;)V
    .locals 7
    .param p1, "connection"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 1145
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Connection;->onClose()V

    .line 1147
    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 1155
    .end local p1    # "connection":Lorg/eclipse/jetty/io/Connection;
    :goto_0
    return-void

    .line 1150
    .restart local p1    # "connection":Lorg/eclipse/jetty/io/Connection;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Connection;->getTimeStamp()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 1151
    .local v0, "duration":J
    instance-of v3, p1, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v3, :cond_1

    check-cast p1, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .end local p1    # "connection":Lorg/eclipse/jetty/io/Connection;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequests()I

    move-result v2

    .line 1152
    .local v2, "requests":I
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    .line 1153
    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 1154
    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionDurationStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v3, v0, v1}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    goto :goto_0

    .line 1151
    .end local v2    # "requests":I
    .restart local p1    # "connection":Lorg/eclipse/jetty/io/Connection;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected connectionOpened(Lorg/eclipse/jetty/io/Connection;)V
    .locals 4
    .param p1, "connection"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 1130
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1134
    :goto_0
    return-void

    .line 1133
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->increment()V

    goto :goto_0
.end method

.method protected connectionUpgraded(Lorg/eclipse/jetty/io/Connection;Lorg/eclipse/jetty/io/Connection;)V
    .locals 3
    .param p1, "oldConnection"    # Lorg/eclipse/jetty/io/Connection;
    .param p2, "newConnection"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 1139
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    instance-of v0, p1, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .end local p1    # "oldConnection":Lorg/eclipse/jetty/io/Connection;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequests()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    .line 1140
    return-void

    .line 1139
    .restart local p1    # "oldConnection":Lorg/eclipse/jetty/io/Connection;
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
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
    .line 401
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->isForwarded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/AbstractConnector;->checkForwardedHeaders(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    .line 403
    :cond_0
    return-void
.end method

.method protected doStart()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 307
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_server:Lorg/eclipse/jetty/server/Server;

    if-nez v1, :cond_0

    .line 308
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No server"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->open()V

    .line 313
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    if-nez v1, :cond_1

    .line 315
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 316
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v1, v5}, Lorg/eclipse/jetty/server/AbstractConnector;->addBean(Ljava/lang/Object;Z)Z

    .line 319
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->doStart()V

    .line 322
    monitor-enter p0

    .line 324
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getAcceptors()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Thread;

    iput-object v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorThreads:[Ljava/lang/Thread;

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorThreads:[Ljava/lang/Thread;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 327
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    new-instance v2, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;

    invoke-direct {v2, p0, v0}, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;-><init>(Lorg/eclipse/jetty/server/AbstractConnector;I)V

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 328
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "!accepting"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 326
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_3
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/thread/ThreadPool;->isLowOnThreads()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 330
    sget-object v1, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "insufficient threads configured for {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    sget-object v1, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Started {}"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    return-void
.end method

.method protected doStop()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 342
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->doStop()V

    .line 352
    monitor-enter p0

    .line 354
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorThreads:[Ljava/lang/Thread;

    .line 355
    .local v0, "acceptors":[Ljava/lang/Thread;
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorThreads:[Ljava/lang/Thread;

    .line 356
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    if-eqz v0, :cond_1

    .line 359
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/Thread;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v1, v3

    .line 361
    .local v5, "thread":Ljava/lang/Thread;
    if-eqz v5, :cond_0

    .line 362
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 359
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 344
    .end local v0    # "acceptors":[Ljava/lang/Thread;
    .end local v1    # "arr$":[Ljava/lang/Thread;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "thread":Ljava/lang/Thread;
    :catch_0
    move-exception v2

    .line 346
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 356
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 365
    .restart local v0    # "acceptors":[Ljava/lang/Thread;
    :cond_1
    return-void
.end method

.method public getAcceptQueueSize()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptQueueSize:I

    return v0
.end method

.method public getAcceptorPriorityOffset()I
    .locals 1

    .prologue
    .line 1163
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorPriorityOffset:I

    return v0
.end method

.method public getAcceptors()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptors:I

    return v0
.end method

.method public getConfidentialPort()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_confidentialPort:I

    return v0
.end method

.method public getConfidentialScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_confidentialScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getConnections()I
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getTotal()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getConnectionsDurationMax()J
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionDurationStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMax()J

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectionsDurationMean()D
    .locals 2

    .prologue
    .line 1033
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionDurationStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectionsDurationStdDev()D
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionDurationStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getStdDev()D

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectionsDurationTotal()J
    .locals 2

    .prologue
    .line 997
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionDurationStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getTotal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectionsOpen()I
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getCurrent()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getConnectionsOpenMax()I
    .locals 2

    .prologue
    .line 1024
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getMax()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getConnectionsRequestsMax()I
    .locals 2

    .prologue
    .line 1069
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMax()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getConnectionsRequestsMean()D
    .locals 2

    .prologue
    .line 1060
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectionsRequestsStdDev()D
    .locals 2

    .prologue
    .line 1078
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getStdDev()D

    move-result-wide v0

    return-wide v0
.end method

.method public getForwardedCipherSuiteHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedCipherSuiteHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardedForHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedForHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardedHostHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedHostHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardedProtoHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedProtoHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardedServerHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedServerHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardedSslSessionIdHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedSslSessionIdHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_hostHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getIntegralPort()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_integralPort:I

    return v0
.end method

.method public getIntegralScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_integralScheme:Ljava/lang/String;

    return-object v0
.end method

.method protected getLeftMostFieldValue(Lorg/eclipse/jetty/http/HttpFields;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fields"    # Lorg/eclipse/jetty/http/HttpFields;
    .param p2, "header"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 484
    if-nez p2, :cond_1

    move-object v1, v2

    .line 501
    :cond_0
    :goto_0
    return-object v1

    .line 487
    :cond_1
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "headerValue":Ljava/lang/String;
    if-nez v1, :cond_2

    move-object v1, v2

    .line 490
    goto :goto_0

    .line 492
    :cond_2
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 494
    .local v0, "commaIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 501
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final getLowResourceMaxIdleTime()I
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getLowResourcesMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public getLowResourcesMaxIdleTime()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_lowResourceMaxIdleTime:I

    return v0
.end method

.method public getMaxBuffers()I
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getMaxBuffers()I

    move-result v0

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_maxIdleTime:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "0.0.0.0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getLocalPort()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getPort()I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_name:Ljava/lang/String;

    .line 973
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_name:Ljava/lang/String;

    return-object v0

    .line 972
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getLocalPort()I

    move-result v0

    goto :goto_1
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_port:I

    return v0
.end method

.method public getRequestBufferSize()I
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestBufferSize()I

    move-result v0

    return v0
.end method

.method public getRequestBufferType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestBufferType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method public getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeaderSize()I
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestHeaderSize()I

    move-result v0

    return v0
.end method

.method public getRequestHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method public getRequests()I
    .locals 2

    .prologue
    .line 988
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getTotal()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getResolveNames()Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_useDNS:Z

    return v0
.end method

.method public getResponseBufferSize()I
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseBufferSize()I

    move-result v0

    return v0
.end method

.method public getResponseBufferType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseBufferType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaderSize()I
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseHeaderSize()I

    move-result v0

    return v0
.end method

.method public getResponseHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method public getReuseAddress()Z
    .locals 1

    .prologue
    .line 1185
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_reuseAddress:Z

    return v0
.end method

.method public getServer()Lorg/eclipse/jetty/server/Server;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_server:Lorg/eclipse/jetty/server/Server;

    return-object v0
.end method

.method public getSoLingerTime()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_soLingerTime:I

    return v0
.end method

.method public getStatsOn()Z
    .locals 4

    .prologue
    .line 1113
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatsOnMs()J
    .locals 4

    .prologue
    .line 1122
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 1124
    .local v0, "start":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    return-object v0
.end method

.method public isConfidential(Lorg/eclipse/jetty/server/Request;)Z
    .locals 2
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    .line 561
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwarded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForwarded()Z
    .locals 1

    .prologue
    .line 632
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwarded:Z

    return v0
.end method

.method public isIntegral(Lorg/eclipse/jetty/server/Request;)Z
    .locals 1
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public isLowResources()Z
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/thread/ThreadPool;->isLowOnThreads()Z

    move-result v0

    .line 1203
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/thread/ThreadPool;->isLowOnThreads()Z

    move-result v0

    goto :goto_0
.end method

.method public join()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 371
    monitor-enter p0

    .line 373
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorThreads:[Ljava/lang/Thread;

    .line 374
    .local v4, "threads":[Ljava/lang/Thread;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    if-eqz v4, :cond_1

    .line 376
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/Thread;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 377
    .local v3, "thread":Ljava/lang/Thread;
    if-eqz v3, :cond_0

    .line 378
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 376
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    .end local v0    # "arr$":[Ljava/lang/Thread;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "thread":Ljava/lang/Thread;
    .end local v4    # "threads":[Ljava/lang/Thread;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 379
    .restart local v4    # "threads":[Ljava/lang/Thread;
    :cond_1
    return-void
.end method

.method public persist(Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 0
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    return-void
.end method

.method public setAcceptQueueSize(I)V
    .locals 0
    .param p1, "acceptQueueSize"    # I

    .prologue
    .line 269
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptQueueSize:I

    .line 270
    return-void
.end method

.method public setAcceptorPriorityOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 1176
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorPriorityOffset:I

    .line 1177
    return-void
.end method

.method public setAcceptors(I)V
    .locals 3
    .param p1, "acceptors"    # I

    .prologue
    .line 288
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    .line 289
    sget-object v0, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acceptors should be <=2*availableProcessors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :cond_0
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptors:I

    .line 291
    return-void
.end method

.method public setConfidentialPort(I)V
    .locals 0
    .param p1, "confidentialPort"    # I

    .prologue
    .line 571
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_confidentialPort:I

    .line 572
    return-void
.end method

.method public setConfidentialScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "confidentialScheme"    # Ljava/lang/String;

    .prologue
    .line 581
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_confidentialScheme:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public setForwarded(Z)V
    .locals 4
    .param p1, "check"    # Z

    .prologue
    .line 649
    if-eqz p1, :cond_0

    .line 650
    sget-object v0, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "{} is forwarded"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    :cond_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwarded:Z

    .line 652
    return-void
.end method

.method public setForwardedCipherSuiteHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "forwardedCipherSuite"    # Ljava/lang/String;

    .prologue
    .line 776
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedCipherSuiteHeader:Ljava/lang/String;

    .line 777
    return-void
.end method

.method public setForwardedForHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "forwardedRemoteAddressHeader"    # Ljava/lang/String;

    .prologue
    .line 732
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedForHeader:Ljava/lang/String;

    .line 733
    return-void
.end method

.method public setForwardedHostHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "forwardedHostHeader"    # Ljava/lang/String;

    .prologue
    .line 691
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedHostHeader:Ljava/lang/String;

    .line 692
    return-void
.end method

.method public setForwardedProtoHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "forwardedProtoHeader"    # Ljava/lang/String;

    .prologue
    .line 757
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedProtoHeader:Ljava/lang/String;

    .line 758
    return-void
.end method

.method public setForwardedServerHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "forwardedServerHeader"    # Ljava/lang/String;

    .prologue
    .line 712
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedServerHeader:Ljava/lang/String;

    .line 713
    return-void
.end method

.method public setForwardedSslSessionIdHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "forwardedSslSessionId"    # Ljava/lang/String;

    .prologue
    .line 795
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedSslSessionIdHeader:Ljava/lang/String;

    .line 796
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_host:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setHostHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostHeader"    # Ljava/lang/String;

    .prologue
    .line 670
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_hostHeader:Ljava/lang/String;

    .line 671
    return-void
.end method

.method public setIntegralPort(I)V
    .locals 0
    .param p1, "integralPort"    # I

    .prologue
    .line 591
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_integralPort:I

    .line 592
    return-void
.end method

.method public setIntegralScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "integralScheme"    # Ljava/lang/String;

    .prologue
    .line 601
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_integralScheme:Ljava/lang/String;

    .line 602
    return-void
.end method

.method public final setLowResourceMaxIdleTime(I)V
    .locals 0
    .param p1, "maxIdleTime"    # I

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/AbstractConnector;->setLowResourcesMaxIdleTime(I)V

    .line 242
    return-void
.end method

.method public setLowResourcesMaxIdleTime(I)V
    .locals 0
    .param p1, "maxIdleTime"    # I

    .prologue
    .line 220
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_lowResourceMaxIdleTime:I

    .line 221
    return-void
.end method

.method public setMaxBuffers(I)V
    .locals 1
    .param p1, "maxBuffers"    # I

    .prologue
    .line 880
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setMaxBuffers(I)V

    .line 881
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0
    .param p1, "maxIdleTime"    # I

    .prologue
    .line 201
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_maxIdleTime:I

    .line 202
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 979
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_name:Ljava/lang/String;

    .line 980
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 161
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_port:I

    .line 162
    return-void
.end method

.method public setRequestBufferSize(I)V
    .locals 1
    .param p1, "requestBufferSize"    # I

    .prologue
    .line 805
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBufferSize(I)V

    .line 806
    return-void
.end method

.method public setRequestBuffers(Lorg/eclipse/jetty/io/Buffers;)V
    .locals 1
    .param p1, "requestBuffers"    # Lorg/eclipse/jetty/io/Buffers;

    .prologue
    .line 860
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBuffers(Lorg/eclipse/jetty/io/Buffers;)V

    .line 861
    return-void
.end method

.method public setRequestHeaderSize(I)V
    .locals 1
    .param p1, "requestHeaderSize"    # I

    .prologue
    .line 815
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestHeaderSize(I)V

    .line 816
    return-void
.end method

.method public setResolveNames(Z)V
    .locals 0
    .param p1, "resolve"    # Z

    .prologue
    .line 621
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_useDNS:Z

    .line 622
    return-void
.end method

.method public setResponseBufferSize(I)V
    .locals 1
    .param p1, "responseBufferSize"    # I

    .prologue
    .line 825
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBufferSize(I)V

    .line 826
    return-void
.end method

.method public setResponseBuffers(Lorg/eclipse/jetty/io/Buffers;)V
    .locals 1
    .param p1, "responseBuffers"    # Lorg/eclipse/jetty/io/Buffers;

    .prologue
    .line 865
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBuffers(Lorg/eclipse/jetty/io/Buffers;)V

    .line 866
    return-void
.end method

.method public setResponseHeaderSize(I)V
    .locals 1
    .param p1, "responseHeaderSize"    # I

    .prologue
    .line 835
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseHeaderSize(I)V

    .line 836
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 0
    .param p1, "reuseAddress"    # Z

    .prologue
    .line 1195
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_reuseAddress:Z

    .line 1196
    return-void
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 0
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_server:Lorg/eclipse/jetty/server/Server;

    .line 121
    return-void
.end method

.method public setSoLingerTime(I)V
    .locals 0
    .param p1, "soLingerTime"    # I

    .prologue
    .line 300
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_soLingerTime:I

    .line 301
    return-void
.end method

.method public setStatsOn(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const-wide/16 v0, -0x1

    .line 1097
    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 1105
    :goto_0
    return-void

    .line 1100
    :cond_0
    sget-object v2, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1101
    sget-object v2, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Statistics on = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1103
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->statsReset()V

    .line 1104
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_2
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0
.end method

.method public setThreadPool(Lorg/eclipse/jetty/util/thread/ThreadPool;)V
    .locals 1
    .param p1, "pool"    # Lorg/eclipse/jetty/util/thread/ThreadPool;

    .prologue
    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/AbstractConnector;->removeBean(Ljava/lang/Object;)Z

    .line 138
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/AbstractConnector;->addBean(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public statsReset()V
    .locals 6

    .prologue
    .line 1087
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/server/AbstractConnector;->updateNotEqual(Ljava/util/concurrent/atomic/AtomicLong;JJ)V

    .line 1089
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->reset()V

    .line 1090
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->reset()V

    .line 1091
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionDurationStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->reset()V

    .line 1092
    return-void
.end method

.method public stopAccept(I)V
    .locals 0
    .param p1, "acceptorID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 610
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 892
    const-string v1, "%s@%s:%d"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "0.0.0.0"

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getLocalPort()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getPort()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getLocalPort()I

    move-result v0

    goto :goto_1
.end method
