.class public abstract Lorg/eclipse/jetty/client/AbstractHttpConnection;
.super Lorg/eclipse/jetty/io/AbstractConnection;
.source "AbstractHttpConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/client/AbstractHttpConnection$1;,
        Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;,
        Lorg/eclipse/jetty/client/AbstractHttpConnection$ConnectionIdleTask;,
        Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _connectionHeader:Lorg/eclipse/jetty/io/Buffer;

.field protected _destination:Lorg/eclipse/jetty/client/HttpDestination;

.field protected volatile _exchange:Lorg/eclipse/jetty/client/HttpExchange;

.field protected _generator:Lorg/eclipse/jetty/http/HttpGenerator;

.field protected _http11:Z

.field private _idle:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final _idleTimeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field protected _parser:Lorg/eclipse/jetty/http/HttpParser;

.field protected _pipeline:Lorg/eclipse/jetty/client/HttpExchange;

.field protected _reserved:Z

.field protected _status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 3
    .param p1, "requestBuffers"    # Lorg/eclipse/jetty/io/Buffers;
    .param p2, "responseBuffers"    # Lorg/eclipse/jetty/io/Buffers;
    .param p3, "endp"    # Lorg/eclipse/jetty/io/EndPoint;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p3}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_http11:Z

    .line 64
    new-instance v0, Lorg/eclipse/jetty/client/AbstractHttpConnection$ConnectionIdleTask;

    invoke-direct {v0, p0, v2}, Lorg/eclipse/jetty/client/AbstractHttpConnection$ConnectionIdleTask;-><init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/AbstractHttpConnection$1;)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idleTimeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idle:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance v0, Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-direct {v0, p1, p3}, Lorg/eclipse/jetty/http/HttpGenerator;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    .line 73
    new-instance v0, Lorg/eclipse/jetty/http/HttpParser;

    new-instance v1, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;

    invoke-direct {v1, p0, v2}, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;-><init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/AbstractHttpConnection$1;)V

    invoke-direct {v0, p2, p3, v1}, Lorg/eclipse/jetty/http/HttpParser;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    .line 74
    return-void
.end method

.method static synthetic access$200()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/client/AbstractHttpConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/client/AbstractHttpConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idle:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private adjustIdleTimeout()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 135
    iget-object v4, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpExchange;->getTimeout()J

    move-result-wide v2

    .line 136
    .local v2, "timeout":J
    cmp-long v4, v2, v5

    if-gtz v4, :cond_0

    .line 137
    iget-object v4, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpClient;->getTimeout()J

    move-result-wide v2

    .line 139
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v4

    int-to-long v0, v4

    .line 141
    .local v0, "endPointTimeout":J
    cmp-long v4, v2, v5

    if-lez v4, :cond_1

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 146
    iget-object v4, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    long-to-int v5, v2

    mul-int/lit8 v5, v5, 0x2

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 148
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelIdleTimeout()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 420
    monitor-enter p0

    .line 422
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idle:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idleTimeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/HttpClient;->cancel(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 425
    monitor-exit p0

    .line 429
    :goto_0
    return v0

    .line 427
    :cond_0
    monitor-exit p0

    move v0, v1

    .line 429
    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 378
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 379
    .local v1, "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result v3

    if-nez v3, :cond_1

    .line 381
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 393
    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "exch":Ljava/lang/String;
    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "half closed: "

    .line 395
    .local v2, "reason":Ljava/lang/String;
    :goto_0
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 396
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v3

    new-instance v4, Lorg/eclipse/jetty/io/EofException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 400
    .end local v0    # "exch":Ljava/lang/String;
    .end local v2    # "reason":Ljava/lang/String;
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 403
    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v3, p0, v6}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 405
    :cond_2
    return-void

    .line 390
    :pswitch_1
    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v3, v6}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 394
    .restart local v0    # "exch":Ljava/lang/String;
    :cond_3
    const-string v2, "local close: "

    goto :goto_0

    :cond_4
    const-string v2, "closed: "

    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected commitRequest()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    monitor-enter p0

    .line 174
    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_status:I

    .line 175
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v15}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 176
    new-instance v15, Ljava/lang/IllegalStateException;

    invoke-direct {v15}, Ljava/lang/IllegalStateException;-><init>()V

    throw v15

    .line 246
    :catchall_0
    move-exception v15

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 178
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 179
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/client/HttpExchange;->getVersion()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lorg/eclipse/jetty/http/HttpGenerator;->setVersion(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v15}, Lorg/eclipse/jetty/client/HttpExchange;->getMethod()Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, "method":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v15}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestURI()Ljava/lang/String;

    move-result-object v14

    .line 183
    .local v14, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v15}, Lorg/eclipse/jetty/client/HttpDestination;->isProxied()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 185
    const-string v15, "CONNECT"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 187
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v15}, Lorg/eclipse/jetty/client/HttpDestination;->isSecure()Z

    move-result v13

    .line 188
    .local v13, "secure":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v15}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v15

    invoke-virtual {v15}, Lorg/eclipse/jetty/client/Address;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "host":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v15}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v15

    invoke-virtual {v15}, Lorg/eclipse/jetty/client/Address;->getPort()I

    move-result v9

    .line 190
    .local v9, "port":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v2, "absoluteURI":Ljava/lang/StringBuilder;
    if-eqz v13, :cond_8

    const-string v15, "https"

    :goto_0
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v15, "://"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    if-eqz v13, :cond_1

    const/16 v15, 0x1bb

    if-eq v9, v15, :cond_3

    :cond_1
    if-nez v13, :cond_2

    const/16 v15, 0x50

    if-eq v9, v15, :cond_3

    .line 196
    :cond_2
    const-string v15, ":"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    :cond_3
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 200
    .end local v2    # "absoluteURI":Ljava/lang/StringBuilder;
    .end local v6    # "host":Ljava/lang/String;
    .end local v9    # "port":I
    .end local v13    # "secure":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v15}, Lorg/eclipse/jetty/client/HttpDestination;->getProxyAuthentication()Lorg/eclipse/jetty/client/security/Authentication;

    move-result-object v3

    .line 201
    .local v3, "auth":Lorg/eclipse/jetty/client/security/Authentication;
    if-eqz v3, :cond_5

    .line 202
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-interface {v3, v15}, Lorg/eclipse/jetty/client/security/Authentication;->setCredentials(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 205
    .end local v3    # "auth":Lorg/eclipse/jetty/client/security/Authentication;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v15, v8, v14}, Lorg/eclipse/jetty/http/HttpGenerator;->setRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    const-string v16, "HEAD"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lorg/eclipse/jetty/http/HttpParser;->setHeadResponse(Z)V

    .line 208
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v15}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v12

    .line 209
    .local v12, "requestHeaders":Lorg/eclipse/jetty/http/HttpFields;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v15}, Lorg/eclipse/jetty/client/HttpExchange;->getVersion()I

    move-result v15

    const/16 v16, 0xb

    move/from16 v0, v16

    if-lt v15, v0, :cond_6

    .line 211
    sget-object v15, Lorg/eclipse/jetty/http/HttpHeaders;->HOST_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v12, v15}, Lorg/eclipse/jetty/http/HttpFields;->containsKey(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 212
    sget-object v15, Lorg/eclipse/jetty/http/HttpHeaders;->HOST_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/client/HttpDestination;->getHostHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 215
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v15}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContent()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v10

    .line 216
    .local v10, "requestContent":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v10, :cond_9

    .line 218
    const-string v15, "Content-Length"

    invoke-interface {v10}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v15, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Ljava/lang/String;J)V

    .line 219
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Lorg/eclipse/jetty/http/HttpGenerator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 220
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    new-instance v16, Lorg/eclipse/jetty/io/View;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lorg/eclipse/jetty/http/HttpGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V

    .line 245
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 246
    monitor-exit p0

    .line 247
    return-void

    .line 191
    .end local v10    # "requestContent":Lorg/eclipse/jetty/io/Buffer;
    .end local v12    # "requestHeaders":Lorg/eclipse/jetty/http/HttpFields;
    .restart local v2    # "absoluteURI":Ljava/lang/StringBuilder;
    .restart local v6    # "host":Ljava/lang/String;
    .restart local v9    # "port":I
    .restart local v13    # "secure":Z
    :cond_8
    const-string v15, "http"

    goto/16 :goto_0

    .line 224
    .end local v2    # "absoluteURI":Ljava/lang/StringBuilder;
    .end local v6    # "host":Ljava/lang/String;
    .end local v9    # "port":I
    .end local v13    # "secure":Z
    .restart local v10    # "requestContent":Lorg/eclipse/jetty/io/Buffer;
    .restart local v12    # "requestHeaders":Lorg/eclipse/jetty/http/HttpFields;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v15}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContentSource()Ljava/io/InputStream;

    move-result-object v11

    .line 225
    .local v11, "requestContentStream":Ljava/io/InputStream;
    if-eqz v11, :cond_a

    .line 227
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Lorg/eclipse/jetty/http/HttpGenerator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 228
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 229
    .local v4, "available":I
    if-lez v4, :cond_7

    .line 233
    new-array v5, v4, [B

    .line 234
    .local v5, "buf":[B
    invoke-virtual {v11, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 235
    .local v7, "length":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    new-instance v16, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v5, v1, v7}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BII)V

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lorg/eclipse/jetty/http/HttpGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V

    goto :goto_1

    .line 240
    .end local v4    # "available":I
    .end local v5    # "buf":[B
    .end local v7    # "length":I
    :cond_a
    const-string v15, "Content-Length"

    invoke-virtual {v12, v15}, Lorg/eclipse/jetty/http/HttpFields;->remove(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Lorg/eclipse/jetty/http/HttpGenerator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
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
    .line 467
    monitor-enter p0

    .line 469
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 470
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 471
    monitor-exit p0

    .line 472
    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected exchangeExpired(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 3
    .param p1, "exchange"    # Lorg/eclipse/jetty/client/HttpExchange;

    .prologue
    .line 434
    monitor-enter p0

    .line 438
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    .line 442
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 450
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 446
    .local v0, "x":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 449
    .end local v0    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getDestination()Lorg/eclipse/jetty/client/HttpDestination;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    return-object v0
.end method

.method public abstract handle()Lorg/eclipse/jetty/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isReserved()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_reserved:Z

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public onClose()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method protected reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_connectionHeader:Lorg/eclipse/jetty/io/Buffer;

    .line 252
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->reset()V

    .line 253
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->reset()V

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_http11:Z

    .line 255
    return-void
.end method

.method public send(Lorg/eclipse/jetty/client/HttpExchange;)Z
    .locals 5
    .param p1, "ex"    # Lorg/eclipse/jetty/client/HttpExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 98
    sget-object v2, Lorg/eclipse/jetty/client/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Send {} on {}"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p0, v4, v0

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v2, :cond_1

    .line 103
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PIPELINED!!!  _exchange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 105
    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 106
    monitor-exit p0

    .line 124
    :goto_0
    return v0

    .line 109
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 110
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v2, p0}, Lorg/eclipse/jetty/client/HttpExchange;->associate(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V

    .line 113
    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 115
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->disassociate()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 117
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 122
    invoke-direct {p0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->adjustIdleTimeout()V

    .line 124
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setDestination(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 0
    .param p1, "destination"    # Lorg/eclipse/jetty/client/HttpDestination;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    .line 94
    return-void
.end method

.method public setIdleTimeout()V
    .locals 3

    .prologue
    .line 409
    monitor-enter p0

    .line 411
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idle:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idleTimeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpClient;->scheduleIdle(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 415
    monitor-exit p0

    .line 416
    return-void

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setReserved(Z)V
    .locals 0
    .param p1, "reserved"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_reserved:Z

    .line 79
    return-void
.end method

.method public toDetailString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " idle for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_idleTimeout:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->getAge()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 361
    const-string v1, "%s %s g=%s p=%s"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-super {p0}, Lorg/eclipse/jetty/io/AbstractConnection;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    if-nez v0, :cond_0

    const-string v0, "?.?.?.?:??"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v0

    goto :goto_0
.end method
