.class public Lorg/eclipse/jetty/client/AsyncHttpConnection;
.super Lorg/eclipse/jetty/client/AbstractHttpConnection;
.source "AsyncHttpConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/AsyncConnection;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

.field private _requestComplete:Z

.field private _requestContentChunk:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 0
    .param p1, "requestBuffers"    # Lorg/eclipse/jetty/io/Buffers;
    .param p2, "responseBuffers"    # Lorg/eclipse/jetty/io/Buffers;
    .param p3, "endp"    # Lorg/eclipse/jetty/io/EndPoint;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/AbstractHttpConnection;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    .line 45
    check-cast p3, Lorg/eclipse/jetty/io/AsyncEndPoint;

    .end local p3    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    iput-object p3, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    .line 46
    return-void
.end method


# virtual methods
.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    move-object v2, p0

    .line 57
    .local v2, "connection":Lorg/eclipse/jetty/io/Connection;
    const/4 v7, 0x1

    .line 61
    .local v7, "progress":Z
    const/4 v5, 0x0

    .line 64
    .local v5, "failed":Z
    :cond_0
    :goto_0
    if-eqz v7, :cond_2b

    if-ne v2, p0, :cond_2b

    .line 66
    :try_start_0
    sget-object v9, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "while open={} more={} progress={}"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v13}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v13}, Lorg/eclipse/jetty/http/HttpParser;->isMoreInBuffer()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    const/4 v7, 0x0

    .line 69
    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 71
    .local v4, "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    sget-object v9, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "exchange {} on {}"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v12, 0x1

    aput-object p0, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    :try_start_1
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpGenerator;->isCommitted()Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 78
    sget-object v9, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "commit {}"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    const/4 v7, 0x1

    .line 80
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->commitRequest()V

    .line 84
    :cond_1
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpGenerator;->isCommitted()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v9

    if-nez v9, :cond_4

    .line 86
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    move-result v9

    if-lez v9, :cond_2

    .line 88
    sget-object v9, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "flushed"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    const/4 v7, 0x1

    .line 93
    :cond_2
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/http/HttpGenerator;->isState(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 96
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v9, :cond_3

    .line 97
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContentChunk(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 99
    :cond_3
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v9, :cond_11

    .line 101
    sget-object v9, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "complete {}"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    const/4 v7, 0x1

    .line 103
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpGenerator;->complete()V

    .line 117
    :cond_4
    :goto_1
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-boolean v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestComplete:Z

    if-nez v9, :cond_5

    .line 119
    sget-object v9, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "requestComplete {}"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    const/4 v7, 0x1

    .line 121
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestComplete:Z

    .line 122
    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v9

    invoke-interface {v9}, Lorg/eclipse/jetty/client/HttpEventListener;->onRequestComplete()V

    .line 126
    :cond_5
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpParser;->parseAvailable()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 128
    sget-object v9, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "parsed {}"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    const/4 v7, 0x1

    .line 133
    :cond_6
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/EndPoint;->flush()V

    .line 136
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/AsyncEndPoint;->hasProgressed()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 138
    sget-object v9, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "hasProgressed {}"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 139
    const/4 v7, 0x1

    .line 176
    :cond_7
    :try_start_2
    sget-object v9, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "finally {} on {} progress={} {}"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v12, 0x1

    aput-object p0, v11, v12

    const/4 v12, 0x2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget-object v13, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v13, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    if-nez v5, :cond_8

    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v9

    if-eqz v9, :cond_35

    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v9

    if-eqz v9, :cond_35

    :cond_8
    const/4 v1, 0x1

    .line 180
    .local v1, "complete":Z
    :goto_2
    if-eqz v1, :cond_0

    .line 182
    if-nez v5, :cond_34

    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpParser;->isPersistent()Z

    move-result v9

    if-eqz v9, :cond_34

    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpGenerator;->isPersistent()Z

    move-result v9

    if-eqz v9, :cond_34

    const/4 v6, 0x1

    .line 183
    .local v6, "persistent":Z
    :goto_3
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9, v6}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 184
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->reset()V

    .line 185
    if-eqz v6, :cond_9

    .line 186
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v10}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v10

    invoke-virtual {v10}, Lorg/eclipse/jetty/client/HttpClient;->getIdleTimeout()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-interface {v9, v10}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 188
    :cond_9
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    :try_start_3
    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 191
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 194
    if-eqz v4, :cond_a

    .line 196
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v9}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 202
    :cond_a
    iget v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_status:I

    const/16 v10, 0x65

    if-ne v9, v10, :cond_d

    .line 204
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v4, v9}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v8

    .line 205
    .local v8, "switched":Lorg/eclipse/jetty/io/Connection;
    if-eqz v8, :cond_b

    .line 206
    move-object v2, v8

    .line 209
    :cond_b
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 210
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v9, :cond_c

    .line 211
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 212
    :cond_c
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 214
    move-object v2, v8

    .line 219
    .end local v8    # "switched":Lorg/eclipse/jetty/io/Connection;
    :cond_d
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v9, :cond_f

    .line 221
    if-eqz v6, :cond_e

    if-eq v2, p0, :cond_36

    .line 222
    :cond_e
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 225
    :goto_4
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 228
    :cond_f
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v9, :cond_10

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->isReserved()Z

    move-result v9

    if-nez v9, :cond_10

    .line 229
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    if-nez v6, :cond_37

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v10, p0, v9}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 230
    :cond_10
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 238
    .end local v1    # "complete":Z
    .end local v4    # "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    .end local v6    # "persistent":Z
    :catchall_1
    move-exception v9

    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v10}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 239
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v10}, Lorg/eclipse/jetty/http/HttpGenerator;->returnBuffers()V

    .line 240
    sget-object v10, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v11, "unhandle {} on {}"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    throw v9

    .line 105
    .restart local v4    # "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    :cond_11
    :try_start_5
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpGenerator;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 107
    sget-object v9, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "addChunk"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    const/4 v7, 0x1

    .line 109
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 110
    .local v0, "chunk":Lorg/eclipse/jetty/io/Buffer;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContentChunk(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v9

    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 111
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v9, :cond_1c

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v10, v0, v9}, Lorg/eclipse/jetty/http/HttpGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/16 :goto_1

    .line 142
    .end local v0    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    :catch_0
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_6
    sget-object v9, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    const/4 v5, 0x1

    .line 148
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 150
    if-eqz v4, :cond_1d

    .line 154
    :try_start_7
    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_12

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v9

    const/16 v10, 0xb

    if-eq v9, v10, :cond_12

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result v9

    if-nez v9, :cond_12

    .line 158
    const/16 v9, 0x9

    invoke-virtual {v4, v9}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 159
    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v9

    invoke-interface {v9, v3}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 172
    :cond_12
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 176
    :try_start_8
    sget-object v9, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "finally {} on {} progress={} {}"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    const/4 v12, 0x1

    aput-object p0, v11, v12

    const/4 v12, 0x2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget-object v13, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v13, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    if-nez v5, :cond_13

    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v9

    if-eqz v9, :cond_31

    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v9

    if-eqz v9, :cond_31

    :cond_13
    const/4 v1, 0x1

    .line 180
    .restart local v1    # "complete":Z
    :goto_7
    if-eqz v1, :cond_0

    .line 182
    if-nez v5, :cond_30

    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpParser;->isPersistent()Z

    move-result v9

    if-eqz v9, :cond_30

    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpGenerator;->isPersistent()Z

    move-result v9

    if-eqz v9, :cond_30

    const/4 v6, 0x1

    .line 183
    .restart local v6    # "persistent":Z
    :goto_8
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9, v6}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 184
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->reset()V

    .line 185
    if-eqz v6, :cond_14

    .line 186
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v10}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v10

    invoke-virtual {v10}, Lorg/eclipse/jetty/client/HttpClient;->getIdleTimeout()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-interface {v9, v10}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 188
    :cond_14
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 190
    :try_start_9
    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 191
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 194
    if-eqz v4, :cond_15

    .line 196
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v9}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 202
    :cond_15
    iget v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_status:I

    const/16 v10, 0x65

    if-ne v9, v10, :cond_18

    .line 204
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v4, v9}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v8

    .line 205
    .restart local v8    # "switched":Lorg/eclipse/jetty/io/Connection;
    if-eqz v8, :cond_16

    .line 206
    move-object v2, v8

    .line 209
    :cond_16
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 210
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v9, :cond_17

    .line 211
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 212
    :cond_17
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 214
    move-object v2, v8

    .line 219
    .end local v8    # "switched":Lorg/eclipse/jetty/io/Connection;
    :cond_18
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v9, :cond_1a

    .line 221
    if-eqz v6, :cond_19

    if-eq v2, p0, :cond_32

    .line 222
    :cond_19
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 225
    :goto_9
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 228
    :cond_1a
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v9, :cond_1b

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->isReserved()Z

    move-result v9

    if-nez v9, :cond_1b

    .line 229
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    if-nez v6, :cond_33

    const/4 v9, 0x1

    :goto_a
    invoke-virtual {v10, p0, v9}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 230
    :cond_1b
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v9

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 111
    .end local v1    # "complete":Z
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v6    # "persistent":Z
    .restart local v0    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    :cond_1c
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 164
    .end local v0    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    .restart local v3    # "e":Ljava/lang/Throwable;
    :cond_1d
    :try_start_b
    instance-of v9, v3, Ljava/io/IOException;

    if-eqz v9, :cond_28

    .line 165
    check-cast v3, Ljava/io/IOException;

    .end local v3    # "e":Ljava/lang/Throwable;
    throw v3

    .line 172
    :catchall_3
    move-exception v9

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 176
    :catchall_4
    move-exception v9

    :try_start_d
    sget-object v10, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v11, "finally {} on {} progress={} {}"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    aput-object p0, v12, v13

    const/4 v13, 0x2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    iget-object v14, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    if-nez v5, :cond_1e

    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v10}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v10

    if-eqz v10, :cond_2d

    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v10}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v10

    if-eqz v10, :cond_2d

    :cond_1e
    const/4 v1, 0x1

    .line 180
    .restart local v1    # "complete":Z
    :goto_b
    if-eqz v1, :cond_27

    .line 182
    if-nez v5, :cond_2c

    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v10}, Lorg/eclipse/jetty/http/HttpParser;->isPersistent()Z

    move-result v10

    if-eqz v10, :cond_2c

    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v10}, Lorg/eclipse/jetty/http/HttpGenerator;->isPersistent()Z

    move-result v10

    if-eqz v10, :cond_2c

    const/4 v6, 0x1

    .line 183
    .restart local v6    # "persistent":Z
    :goto_c
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v10, v6}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 184
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->reset()V

    .line 185
    if-eqz v6, :cond_1f

    .line 186
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v11}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v11

    invoke-virtual {v11}, Lorg/eclipse/jetty/client/HttpClient;->getIdleTimeout()J

    move-result-wide v11

    long-to-int v11, v11

    invoke-interface {v10, v11}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 188
    :cond_1f
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 190
    :try_start_e
    iget-object v4, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 191
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 194
    if-eqz v4, :cond_20

    .line 196
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v10}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 202
    :cond_20
    iget v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_status:I

    const/16 v11, 0x65

    if-ne v10, v11, :cond_23

    .line 204
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v4, v10}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v8

    .line 205
    .restart local v8    # "switched":Lorg/eclipse/jetty/io/Connection;
    if-eqz v8, :cond_21

    .line 206
    move-object v2, v8

    .line 209
    :cond_21
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 210
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v10, :cond_22

    .line 211
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v10, v11}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 212
    :cond_22
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 214
    move-object v2, v8

    .line 219
    .end local v8    # "switched":Lorg/eclipse/jetty/io/Connection;
    :cond_23
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v10, :cond_25

    .line 221
    if-eqz v6, :cond_24

    if-eq v2, p0, :cond_2e

    .line 222
    :cond_24
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v10, v11}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 225
    :goto_d
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 228
    :cond_25
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v10, :cond_26

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/AsyncHttpConnection;->isReserved()Z

    move-result v10

    if-nez v10, :cond_26

    .line 229
    iget-object v11, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    if-nez v6, :cond_2f

    const/4 v10, 0x1

    :goto_e
    invoke-virtual {v11, p0, v10}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 230
    :cond_26
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 176
    .end local v6    # "persistent":Z
    :cond_27
    :try_start_f
    throw v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 166
    .end local v1    # "complete":Z
    .restart local v3    # "e":Ljava/lang/Throwable;
    :cond_28
    :try_start_10
    instance-of v9, v3, Ljava/lang/Error;

    if-eqz v9, :cond_29

    .line 167
    check-cast v3, Ljava/lang/Error;

    .end local v3    # "e":Ljava/lang/Throwable;
    throw v3

    .line 168
    .restart local v3    # "e":Ljava/lang/Throwable;
    :cond_29
    instance-of v9, v3, Ljava/lang/RuntimeException;

    if-eqz v9, :cond_2a

    .line 169
    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3    # "e":Ljava/lang/Throwable;
    throw v3

    .line 170
    .restart local v3    # "e":Ljava/lang/Throwable;
    :cond_2a
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 238
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    :cond_2b
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 239
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpGenerator;->returnBuffers()V

    .line 240
    sget-object v9, Lorg/eclipse/jetty/client/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "unhandle {} on {}"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v13, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    return-object v2

    .line 182
    .restart local v1    # "complete":Z
    .restart local v4    # "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    :cond_2c
    const/4 v6, 0x0

    goto/16 :goto_c

    .line 178
    .end local v1    # "complete":Z
    :cond_2d
    const/4 v1, 0x0

    goto/16 :goto_b

    .line 230
    .restart local v1    # "complete":Z
    .restart local v6    # "persistent":Z
    :catchall_5
    move-exception v9

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    throw v9
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 224
    :cond_2e
    :try_start_13
    iget-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    iput-object v10, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_d

    .line 229
    :cond_2f
    const/4 v10, 0x0

    goto :goto_e

    .line 182
    .end local v6    # "persistent":Z
    .restart local v3    # "e":Ljava/lang/Throwable;
    :cond_30
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 178
    .end local v1    # "complete":Z
    :cond_31
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 224
    .restart local v1    # "complete":Z
    .restart local v6    # "persistent":Z
    :cond_32
    :try_start_14
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto/16 :goto_9

    .line 229
    :cond_33
    const/4 v9, 0x0

    goto/16 :goto_a

    .line 182
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v6    # "persistent":Z
    :cond_34
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 178
    .end local v1    # "complete":Z
    :cond_35
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 224
    .restart local v1    # "complete":Z
    .restart local v6    # "persistent":Z
    :cond_36
    :try_start_15
    iget-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    iput-object v9, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_4

    .line 229
    :cond_37
    const/4 v9, 0x0

    goto/16 :goto_5
.end method

.method public onInputShutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpGenerator;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 250
    :cond_0
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
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_requestComplete:Z

    .line 51
    invoke-super {p0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->reset()V

    .line 52
    return-void
.end method

.method public send(Lorg/eclipse/jetty/client/HttpExchange;)Z
    .locals 2
    .param p1, "ex"    # Lorg/eclipse/jetty/client/HttpExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-super {p0, p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->send(Lorg/eclipse/jetty/client/HttpExchange;)Z

    move-result v0

    .line 256
    .local v0, "sent":Z
    if-eqz v0, :cond_0

    .line 257
    iget-object v1, p0, Lorg/eclipse/jetty/client/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->asyncDispatch()V

    .line 258
    :cond_0
    return v0
.end method
