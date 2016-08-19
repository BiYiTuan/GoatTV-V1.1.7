.class public Lorg/eclipse/jetty/server/AsyncHttpConnection;
.super Lorg/eclipse/jetty/server/AbstractHttpConnection;
.source "AsyncHttpConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/AsyncConnection;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final NO_PROGRESS_CLOSE:I

.field private static final NO_PROGRESS_INFO:I


# instance fields
.field private final _asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

.field private _total_no_progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "org.mortbay.jetty.NO_PROGRESS_INFO"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    .line 36
    const-string v0, "org.mortbay.jetty.NO_PROGRESS_CLOSE"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    .line 38
    const-class v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V
    .locals 0
    .param p1, "connector"    # Lorg/eclipse/jetty/server/Connector;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;-><init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V

    .line 45
    check-cast p2, Lorg/eclipse/jetty/io/AsyncEndPoint;

    .end local p2    # "endpoint":Lorg/eclipse/jetty/io/EndPoint;
    iput-object p2, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    .line 46
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
    const/4 v13, 0x0

    const/16 v12, 0x65

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 51
    move-object v0, p0

    .line 52
    .local v0, "connection":Lorg/eclipse/jetty/io/Connection;
    const/4 v3, 0x0

    .line 53
    .local v3, "some_progress":Z
    const/4 v2, 0x1

    .line 57
    .local v2, "progress":Z
    :try_start_0
    invoke-static {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 60
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    :goto_0
    if-eqz v2, :cond_c

    if-ne v0, p0, :cond_c

    .line 66
    const/4 v2, 0x0

    .line 70
    :try_start_1
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v5, v5, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsync()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 72
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v5, v5, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AsyncContinuation;->isDispatchable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->handleRequest()V

    .line 80
    :cond_1
    :goto_1
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v5

    if-nez v5, :cond_2

    .line 81
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Generator;->flushBuffer()I

    move-result v5

    if-lez v5, :cond_2

    .line 82
    const/4 v2, 0x1

    .line 85
    :cond_2
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/EndPoint;->flush()V

    .line 88
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/AsyncEndPoint;->hasProgressed()Z
    :try_end_1
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-eqz v5, :cond_3

    .line 89
    const/4 v2, 0x1

    .line 104
    :cond_3
    or-int/2addr v3, v2

    .line 106
    :try_start_2
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 109
    const/4 v2, 0x1

    .line 112
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v5

    if-ne v5, v12, :cond_4

    .line 114
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v6, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/io/Connection;

    .line 115
    .local v4, "switched":Lorg/eclipse/jetty/io/Connection;
    if-eqz v4, :cond_4

    .line 116
    move-object v0, v4

    .line 119
    .end local v4    # "switched":Lorg/eclipse/jetty/io/Connection;
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->reset()V

    .line 122
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v5

    if-nez v5, :cond_0

    .line 124
    sget-object v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Safety net oshut!!!  IF YOU SEE THIS, PLEASE RAISE BUGZILLA"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 140
    :catchall_0
    move-exception v5

    move-object v6, v5

    invoke-static {v13}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 143
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v5

    if-nez v5, :cond_5

    .line 146
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Parser;->returnBuffers()V

    .line 147
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Generator;->returnBuffers()V

    .line 150
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v5, v11}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V

    .line 154
    :cond_5
    if-eqz v3, :cond_f

    .line 155
    iput v10, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    .line 140
    :cond_6
    :goto_2
    throw v6

    .line 76
    :cond_7
    :try_start_3
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Parser;->parseAvailable()Z
    :try_end_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 91
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Lorg/eclipse/jetty/http/HttpException;
    :try_start_4
    sget-object v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 95
    sget-object v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    sget-object v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fields="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    sget-object v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 99
    :cond_8
    const/4 v2, 0x1

    .line 100
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpException;->getStatus()I

    move-result v6

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpException;->getReason()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/eclipse/jetty/http/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    or-int/2addr v3, v2

    .line 106
    :try_start_5
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 109
    const/4 v2, 0x1

    .line 112
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v5

    if-ne v5, v12, :cond_9

    .line 114
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v6, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/io/Connection;

    .line 115
    .restart local v4    # "switched":Lorg/eclipse/jetty/io/Connection;
    if-eqz v4, :cond_9

    .line 116
    move-object v0, v4

    .line 119
    .end local v4    # "switched":Lorg/eclipse/jetty/io/Connection;
    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->reset()V

    .line 122
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v5

    if-nez v5, :cond_0

    .line 124
    sget-object v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Safety net oshut!!!  IF YOU SEE THIS, PLEASE RAISE BUGZILLA"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    goto/16 :goto_0

    .line 104
    .end local v1    # "e":Lorg/eclipse/jetty/http/HttpException;
    :catchall_1
    move-exception v5

    or-int/2addr v3, v2

    .line 106
    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v6}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v6}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 109
    const/4 v2, 0x1

    .line 112
    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v6

    if-ne v6, v12, :cond_a

    .line 114
    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v7, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/io/Connection;

    .line 115
    .restart local v4    # "switched":Lorg/eclipse/jetty/io/Connection;
    if-eqz v4, :cond_a

    .line 116
    move-object v0, v4

    .line 119
    .end local v4    # "switched":Lorg/eclipse/jetty/io/Connection;
    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->reset()V

    .line 122
    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v6}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v6

    if-nez v6, :cond_b

    .line 124
    sget-object v6, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "Safety net oshut!!!  IF YOU SEE THIS, PLEASE RAISE BUGZILLA"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 104
    :cond_b
    :goto_3
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 140
    :cond_c
    invoke-static {v13}, Lorg/eclipse/jetty/server/AsyncHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 143
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v5

    if-nez v5, :cond_d

    .line 146
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Parser;->returnBuffers()V

    .line 147
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v5}, Lorg/eclipse/jetty/http/Generator;->returnBuffers()V

    .line 150
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_asyncEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v5, v11}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V

    .line 154
    :cond_d
    if-eqz v3, :cond_15

    .line 155
    iput v10, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    .line 169
    :cond_e
    :goto_4
    return-object v0

    .line 158
    :cond_f
    iget v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    .line 159
    sget v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    if-lez v5, :cond_11

    iget v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v7, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    rem-int/2addr v5, v7

    if-nez v5, :cond_11

    sget v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v5, :cond_10

    iget v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v7, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-ge v5, v7, :cond_11

    .line 160
    :cond_10
    sget-object v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EndPoint making no progress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v5, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_11
    sget v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v5, :cond_6

    iget v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v7, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-ne v5, v7, :cond_6

    .line 163
    sget-object v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Closing EndPoint making no progress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v5, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v5, v5, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    if-eqz v5, :cond_6

    .line 165
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v5, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/channels/ByteChannel;->close()V

    goto/16 :goto_2

    .line 128
    :cond_12
    :try_start_6
    iget-object v6, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 132
    sget-object v6, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "suspended {}"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 128
    .restart local v1    # "e":Lorg/eclipse/jetty/http/HttpException;
    :cond_13
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    sget-object v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "suspended {}"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    .end local v1    # "e":Lorg/eclipse/jetty/http/HttpException;
    :goto_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 128
    :cond_14
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    sget-object v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "suspended {}"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 158
    :cond_15
    iget v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    .line 159
    sget v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    if-lez v5, :cond_17

    iget v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v6, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_INFO:I

    rem-int/2addr v5, v6

    if-nez v5, :cond_17

    sget v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v5, :cond_16

    iget v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v6, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-ge v5, v6, :cond_17

    .line 160
    :cond_16
    sget-object v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EndPoint making no progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_17
    sget v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-lez v5, :cond_e

    iget v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    sget v6, Lorg/eclipse/jetty/server/AsyncHttpConnection;->NO_PROGRESS_CLOSE:I

    if-ne v5, v6, :cond_e

    .line 163
    sget-object v5, Lorg/eclipse/jetty/server/AsyncHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Closing EndPoint making no progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_total_no_progress:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v5, v5, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    if-eqz v5, :cond_e

    .line 165
    iget-object v5, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v5, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/channels/ByteChannel;->close()V

    goto/16 :goto_4
.end method

.method public onInputShutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lorg/eclipse/jetty/server/AsyncHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Parser;->setPersistent(Z)V

    .line 184
    :cond_1
    return-void
.end method
