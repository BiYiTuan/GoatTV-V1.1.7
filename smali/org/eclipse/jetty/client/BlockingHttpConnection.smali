.class public Lorg/eclipse/jetty/client/BlockingHttpConnection;
.super Lorg/eclipse/jetty/client/AbstractHttpConnection;
.source "BlockingHttpConnection.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _requestComplete:Z

.field private _requestContentChunk:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 0
    .param p1, "requestBuffers"    # Lorg/eclipse/jetty/io/Buffers;
    .param p2, "responseBuffers"    # Lorg/eclipse/jetty/io/Buffers;
    .param p3, "endPoint"    # Lorg/eclipse/jetty/io/EndPoint;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/AbstractHttpConnection;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    .line 42
    return-void
.end method


# virtual methods
.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    move-object v2, p0

    .line 57
    .local v2, "connection":Lorg/eclipse/jetty/io/Connection;
    const/4 v5, 0x0

    .line 61
    .local v5, "failed":Z
    :cond_0
    :goto_0
    :try_start_0
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_2b

    if-ne v2, p0, :cond_2b

    .line 63
    sget-object v8, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "open={} more={}"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v12}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v12}, Lorg/eclipse/jetty/http/HttpParser;->isMoreInBuffer()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    iget-object v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .local v4, "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    :goto_1
    if-nez v4, :cond_1

    .line 74
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 75
    iget-object v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 77
    :catch_0
    move-exception v3

    .line 79
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v8, Ljava/io/InterruptedIOException;

    invoke-direct {v8}, Ljava/io/InterruptedIOException;-><init>()V

    throw v8

    .line 82
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 237
    :catchall_1
    move-exception v8

    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 238
    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpGenerator;->returnBuffers()V

    .line 237
    throw v8

    .line 82
    .restart local v4    # "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    :cond_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 83
    :try_start_6
    sget-object v8, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "exchange {}"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 88
    :try_start_7
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpGenerator;->isCommitted()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 90
    sget-object v8, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "commit"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->commitRequest()V

    .line 95
    :cond_2
    :goto_2
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpGenerator;->isCommitted()Z

    move-result v8

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 97
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    move-result v8

    if-lez v8, :cond_3

    .line 99
    sget-object v8, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "flushed"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_3
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lorg/eclipse/jetty/http/HttpGenerator;->isState(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 106
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v8, :cond_4

    .line 107
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContentChunk(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    iput-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 109
    :cond_4
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v8, :cond_f

    .line 111
    sget-object v8, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "complete"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpGenerator;->complete()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    .line 141
    :catch_1
    move-exception v3

    .line 143
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_8
    sget-object v8, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    const/4 v5, 0x1

    .line 147
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 149
    if-eqz v4, :cond_27

    .line 153
    :try_start_9
    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_5

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v8

    const/16 v9, 0xb

    if-eq v8, v9, :cond_5

    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result v8

    if-nez v8, :cond_5

    .line 157
    const/16 v8, 0x9

    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 158
    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v8

    invoke-interface {v8, v3}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 171
    :cond_5
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 175
    :try_start_a
    sget-object v8, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "{} {}"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    sget-object v8, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "{}"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    if-nez v5, :cond_6

    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v8

    if-eqz v8, :cond_31

    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v8

    if-eqz v8, :cond_31

    :cond_6
    const/4 v1, 0x1

    .line 180
    .local v1, "complete":Z
    :goto_3
    if-eqz v1, :cond_0

    .line 182
    if-nez v5, :cond_30

    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpParser;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_30

    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpGenerator;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_30

    const/4 v6, 0x1

    .line 183
    .local v6, "persistent":Z
    :goto_4
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v8, v6}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 184
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->reset()V

    .line 185
    if-eqz v6, :cond_7

    .line 186
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v9}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jetty/client/HttpClient;->getIdleTimeout()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-interface {v8, v9}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 188
    :cond_7
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 190
    :try_start_b
    iget-object v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 191
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 194
    if-eqz v4, :cond_8

    .line 196
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v8}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 202
    :cond_8
    iget v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_status:I

    const/16 v9, 0x65

    if-ne v8, v9, :cond_b

    .line 204
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v7

    .line 205
    .local v7, "switched":Lorg/eclipse/jetty/io/Connection;
    if-eqz v7, :cond_9

    .line 206
    move-object v2, v7

    .line 209
    :cond_9
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 210
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v8, :cond_a

    .line 211
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v8, v9}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 212
    :cond_a
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 214
    move-object v2, v7

    .line 219
    .end local v7    # "switched":Lorg/eclipse/jetty/io/Connection;
    :cond_b
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v8, :cond_d

    .line 221
    if-eqz v6, :cond_c

    if-eq v2, p0, :cond_32

    .line 222
    :cond_c
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v8, v9}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 225
    :goto_5
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 228
    :cond_d
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v8, :cond_e

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->isReserved()Z

    move-result v8

    if-nez v8, :cond_e

    .line 229
    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    if-nez v6, :cond_33

    const/4 v8, 0x1

    :goto_6
    invoke-virtual {v9, p0, v8}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 230
    :cond_e
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v8

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 114
    .end local v1    # "complete":Z
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v6    # "persistent":Z
    :cond_f
    :try_start_d
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpGenerator;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 116
    sget-object v8, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "addChunk"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 118
    .local v0, "chunk":Lorg/eclipse/jetty/io/Buffer;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestContentChunk(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    iput-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    .line 119
    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestContentChunk:Lorg/eclipse/jetty/io/Buffer;

    if-nez v8, :cond_1a

    const/4 v8, 0x1

    :goto_7
    invoke-virtual {v9, v0, v8}, Lorg/eclipse/jetty/http/HttpGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/16 :goto_2

    .line 175
    .end local v0    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    :catchall_3
    move-exception v8

    :try_start_e
    sget-object v9, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "{} {}"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    aput-object v13, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    sget-object v9, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "{}"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v13, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    if-nez v5, :cond_10

    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v9

    if-eqz v9, :cond_2d

    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v9

    if-eqz v9, :cond_2d

    :cond_10
    const/4 v1, 0x1

    .line 180
    .restart local v1    # "complete":Z
    :goto_8
    if-eqz v1, :cond_19

    .line 182
    if-nez v5, :cond_2c

    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpParser;->isPersistent()Z

    move-result v9

    if-eqz v9, :cond_2c

    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9}, Lorg/eclipse/jetty/http/HttpGenerator;->isPersistent()Z

    move-result v9

    if-eqz v9, :cond_2c

    const/4 v6, 0x1

    .line 183
    .restart local v6    # "persistent":Z
    :goto_9
    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v9, v6}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 184
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->reset()V

    .line 185
    if-eqz v6, :cond_11

    .line 186
    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v10, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v10}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v10

    invoke-virtual {v10}, Lorg/eclipse/jetty/client/HttpClient;->getIdleTimeout()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-interface {v9, v10}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 188
    :cond_11
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 190
    :try_start_f
    iget-object v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 191
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 194
    if-eqz v4, :cond_12

    .line 196
    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v9}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 202
    :cond_12
    iget v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_status:I

    const/16 v10, 0x65

    if-ne v9, v10, :cond_15

    .line 204
    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v4, v9}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v7

    .line 205
    .restart local v7    # "switched":Lorg/eclipse/jetty/io/Connection;
    if-eqz v7, :cond_13

    .line 206
    move-object v2, v7

    .line 209
    :cond_13
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 210
    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v9, :cond_14

    .line 211
    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v10, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 212
    :cond_14
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 214
    move-object v2, v7

    .line 219
    .end local v7    # "switched":Lorg/eclipse/jetty/io/Connection;
    :cond_15
    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v9, :cond_17

    .line 221
    if-eqz v6, :cond_16

    if-eq v2, p0, :cond_2e

    .line 222
    :cond_16
    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v10, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 225
    :goto_a
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 228
    :cond_17
    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v9, :cond_18

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->isReserved()Z

    move-result v9

    if-nez v9, :cond_18

    .line 229
    iget-object v10, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    if-nez v6, :cond_2f

    const/4 v9, 0x1

    :goto_b
    invoke-virtual {v10, p0, v9}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 230
    :cond_18
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 175
    .end local v6    # "persistent":Z
    :cond_19
    :try_start_10
    throw v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 119
    .end local v1    # "complete":Z
    .restart local v0    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    :cond_1a
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 125
    .end local v0    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    :cond_1b
    :try_start_11
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v8

    if-eqz v8, :cond_1c

    iget-boolean v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestComplete:Z

    if-nez v8, :cond_1c

    .line 127
    sget-object v8, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "requestComplete"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestComplete:Z

    .line 129
    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v8

    invoke-interface {v8}, Lorg/eclipse/jetty/client/HttpEventListener;->onRequestComplete()V

    .line 133
    :cond_1c
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v8

    if-nez v8, :cond_1d

    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpParser;->parseAvailable()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 135
    sget-object v8, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "parsed"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :cond_1d
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->flush()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 175
    :try_start_12
    sget-object v8, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "{} {}"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    sget-object v8, Lorg/eclipse/jetty/client/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "{}"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    if-nez v5, :cond_1e

    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpGenerator;->isComplete()Z

    move-result v8

    if-eqz v8, :cond_35

    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v8

    if-eqz v8, :cond_35

    :cond_1e
    const/4 v1, 0x1

    .line 180
    .restart local v1    # "complete":Z
    :goto_c
    if-eqz v1, :cond_0

    .line 182
    if-nez v5, :cond_34

    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpParser;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_34

    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpGenerator;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_34

    const/4 v6, 0x1

    .line 183
    .restart local v6    # "persistent":Z
    :goto_d
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v8, v6}, Lorg/eclipse/jetty/http/HttpGenerator;->setPersistent(Z)V

    .line 184
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->reset()V

    .line 185
    if-eqz v6, :cond_1f

    .line 186
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v9}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jetty/client/HttpClient;->getIdleTimeout()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-interface {v8, v9}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 188
    :cond_1f
    monitor-enter p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 190
    :try_start_13
    iget-object v4, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 191
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 194
    if-eqz v4, :cond_20

    .line 196
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v8}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/client/HttpExchange;->cancelTimeout(Lorg/eclipse/jetty/client/HttpClient;)V

    .line 202
    :cond_20
    iget v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_status:I

    const/16 v9, 0x65

    if-ne v8, v9, :cond_23

    .line 204
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/client/HttpExchange;->onSwitchProtocol(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v7

    .line 205
    .restart local v7    # "switched":Lorg/eclipse/jetty/io/Connection;
    if-eqz v7, :cond_21

    .line 206
    move-object v2, v7

    .line 209
    :cond_21
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 210
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v8, :cond_22

    .line 211
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v8, v9}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 212
    :cond_22
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 214
    move-object v2, v7

    .line 219
    .end local v7    # "switched":Lorg/eclipse/jetty/io/Connection;
    :cond_23
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    if-eqz v8, :cond_25

    .line 221
    if-eqz v6, :cond_24

    if-eq v2, p0, :cond_36

    .line 222
    :cond_24
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v8, v9}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 225
    :goto_e
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    .line 228
    :cond_25
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    if-nez v8, :cond_26

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/BlockingHttpConnection;->isReserved()Z

    move-result v8

    if-nez v8, :cond_26

    .line 229
    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    if-nez v6, :cond_37

    const/4 v8, 0x1

    :goto_f
    invoke-virtual {v9, p0, v8}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V

    .line 230
    :cond_26
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v8

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    throw v8
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 163
    .end local v1    # "complete":Z
    .end local v6    # "persistent":Z
    .restart local v3    # "e":Ljava/lang/Throwable;
    :cond_27
    :try_start_15
    instance-of v8, v3, Ljava/io/IOException;

    if-eqz v8, :cond_28

    .line 164
    check-cast v3, Ljava/io/IOException;

    .end local v3    # "e":Ljava/lang/Throwable;
    throw v3

    .line 171
    :catchall_5
    move-exception v8

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :try_start_16
    throw v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 165
    .restart local v3    # "e":Ljava/lang/Throwable;
    :cond_28
    :try_start_17
    instance-of v8, v3, Ljava/lang/Error;

    if-eqz v8, :cond_29

    .line 166
    check-cast v3, Ljava/lang/Error;

    .end local v3    # "e":Ljava/lang/Throwable;
    throw v3

    .line 167
    .restart local v3    # "e":Ljava/lang/Throwable;
    :cond_29
    instance-of v8, v3, Ljava/lang/RuntimeException;

    if-eqz v8, :cond_2a

    .line 168
    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3    # "e":Ljava/lang/Throwable;
    throw v3

    .line 169
    .restart local v3    # "e":Ljava/lang/Throwable;
    :cond_2a
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 237
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    :cond_2b
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 238
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpGenerator;->returnBuffers()V

    .line 241
    return-object v2

    .line 182
    .restart local v1    # "complete":Z
    .restart local v4    # "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    :cond_2c
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 178
    .end local v1    # "complete":Z
    :cond_2d
    const/4 v1, 0x0

    goto/16 :goto_8

    .line 230
    .restart local v1    # "complete":Z
    .restart local v6    # "persistent":Z
    :catchall_6
    move-exception v8

    :try_start_18
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    :try_start_19
    throw v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 224
    :cond_2e
    :try_start_1a
    iget-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    iput-object v9, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    goto/16 :goto_a

    .line 229
    :cond_2f
    const/4 v9, 0x0

    goto/16 :goto_b

    .line 182
    .end local v6    # "persistent":Z
    .restart local v3    # "e":Ljava/lang/Throwable;
    :cond_30
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 178
    .end local v1    # "complete":Z
    :cond_31
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 224
    .restart local v1    # "complete":Z
    .restart local v6    # "persistent":Z
    :cond_32
    :try_start_1b
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    iput-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto/16 :goto_5

    .line 229
    :cond_33
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 182
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v6    # "persistent":Z
    :cond_34
    const/4 v6, 0x0

    goto/16 :goto_d

    .line 178
    .end local v1    # "complete":Z
    :cond_35
    const/4 v1, 0x0

    goto/16 :goto_c

    .line 224
    .restart local v1    # "complete":Z
    .restart local v6    # "persistent":Z
    :cond_36
    :try_start_1c
    iget-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_pipeline:Lorg/eclipse/jetty/client/HttpExchange;

    iput-object v8, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    goto :goto_e

    .line 229
    :cond_37
    const/4 v8, 0x0

    goto :goto_f
.end method

.method protected reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/BlockingHttpConnection;->_requestComplete:Z

    .line 47
    invoke-super {p0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->reset()V

    .line 48
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
    .line 247
    invoke-super {p0, p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->send(Lorg/eclipse/jetty/client/HttpExchange;)Z

    move-result v0

    .line 248
    .local v0, "sent":Z
    if-eqz v0, :cond_0

    .line 250
    monitor-enter p0

    .line 252
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 253
    monitor-exit p0

    .line 255
    :cond_0
    return v0

    .line 253
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
