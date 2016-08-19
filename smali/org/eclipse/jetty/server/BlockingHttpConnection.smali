.class public Lorg/eclipse/jetty/server/BlockingHttpConnection;
.super Lorg/eclipse/jetty/server/AbstractHttpConnection;
.source "BlockingHttpConnection.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/eclipse/jetty/server/BlockingHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V
    .locals 0
    .param p1, "connector"    # Lorg/eclipse/jetty/server/Connector;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;-><init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;Lorg/eclipse/jetty/http/Parser;Lorg/eclipse/jetty/http/Generator;Lorg/eclipse/jetty/server/Request;)V
    .locals 0
    .param p1, "connector"    # Lorg/eclipse/jetty/server/Connector;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "server"    # Lorg/eclipse/jetty/server/Server;
    .param p4, "parser"    # Lorg/eclipse/jetty/http/Parser;
    .param p5, "generator"    # Lorg/eclipse/jetty/http/Generator;
    .param p6, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    .line 41
    invoke-direct/range {p0 .. p6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;-><init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;Lorg/eclipse/jetty/http/Parser;Lorg/eclipse/jetty/http/Generator;Lorg/eclipse/jetty/server/Request;)V

    .line 42
    return-void
.end method


# virtual methods
.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x65

    .line 52
    move-object v0, p0

    .line 56
    .local v0, "connection":Lorg/eclipse/jetty/io/Connection;
    :try_start_0
    invoke-static {p0}, Lorg/eclipse/jetty/server/BlockingHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 60
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_b

    if-ne v0, p0, :cond_b

    .line 65
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v3

    if-nez v3, :cond_1

    .line 66
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Parser;->parseAvailable()Z

    .line 72
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v3

    if-nez v3, :cond_2

    .line 73
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Generator;->flushBuffer()I

    .line 76
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->flush()V
    :try_end_1
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    :try_start_2
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 96
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/BlockingHttpConnection;->reset()V

    .line 99
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v3

    if-ne v3, v8, :cond_3

    .line 101
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v4, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/io/Connection;

    .line 102
    .local v2, "switched":Lorg/eclipse/jetty/io/Connection;
    if-eqz v2, :cond_3

    .line 103
    move-object v0, v2

    .line 107
    .end local v2    # "switched":Lorg/eclipse/jetty/io/Connection;
    :cond_3
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v3

    if-nez v3, :cond_4

    .line 109
    sget-object v3, Lorg/eclipse/jetty/server/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Safety net oshut!!! Please open a bugzilla"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 115
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Generator;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 127
    :catchall_0
    move-exception v3

    invoke-static {v9}, Lorg/eclipse/jetty/server/BlockingHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 128
    iget-object v4, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v4}, Lorg/eclipse/jetty/http/Parser;->returnBuffers()V

    .line 129
    iget-object v4, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v4}, Lorg/eclipse/jetty/http/Generator;->returnBuffers()V

    .line 127
    throw v3

    .line 78
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Lorg/eclipse/jetty/http/HttpException;
    :try_start_3
    sget-object v3, Lorg/eclipse/jetty/server/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 82
    sget-object v3, Lorg/eclipse/jetty/server/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    sget-object v3, Lorg/eclipse/jetty/server/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fields="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    sget-object v3, Lorg/eclipse/jetty/server/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 86
    :cond_5
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpException;->getStatus()I

    move-result v4

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpException;->getReason()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/jetty/http/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 87
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Parser;->reset()V

    .line 88
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    :try_start_4
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 96
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/BlockingHttpConnection;->reset()V

    .line 99
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v3

    if-ne v3, v8, :cond_6

    .line 101
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v4, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/io/Connection;

    .line 102
    .restart local v2    # "switched":Lorg/eclipse/jetty/io/Connection;
    if-eqz v2, :cond_6

    .line 103
    move-object v0, v2

    .line 107
    .end local v2    # "switched":Lorg/eclipse/jetty/io/Connection;
    :cond_6
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v3

    if-nez v3, :cond_7

    .line 109
    sget-object v3, Lorg/eclipse/jetty/server/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Safety net oshut!!! Please open a bugzilla"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 115
    :cond_7
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Generator;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    goto/16 :goto_0

    .line 93
    .end local v1    # "e":Lorg/eclipse/jetty/http/HttpException;
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v4}, Lorg/eclipse/jetty/http/Parser;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v4}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 96
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/BlockingHttpConnection;->reset()V

    .line 99
    iget-object v4, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v4

    if-ne v4, v8, :cond_8

    .line 101
    iget-object v4, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v5, "org.eclipse.jetty.io.Connection"

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/io/Connection;

    .line 102
    .restart local v2    # "switched":Lorg/eclipse/jetty/io/Connection;
    if-eqz v2, :cond_8

    .line 103
    move-object v0, v2

    .line 107
    .end local v2    # "switched":Lorg/eclipse/jetty/io/Connection;
    :cond_8
    iget-object v4, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v4}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v4

    if-nez v4, :cond_9

    .line 109
    sget-object v4, Lorg/eclipse/jetty/server/BlockingHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "Safety net oshut!!! Please open a bugzilla"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v4, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 115
    :cond_9
    iget-object v4, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v4}, Lorg/eclipse/jetty/http/Generator;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v4

    if-nez v4, :cond_a

    .line 118
    iget-object v4, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 93
    :cond_a
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    :cond_b
    invoke-static {v9}, Lorg/eclipse/jetty/server/BlockingHttpConnection;->setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 128
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Parser;->returnBuffers()V

    .line 129
    iget-object v3, p0, Lorg/eclipse/jetty/server/BlockingHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v3}, Lorg/eclipse/jetty/http/Generator;->returnBuffers()V

    .line 123
    return-object v0
.end method

.method protected handleRequest()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->handleRequest()V

    .line 48
    return-void
.end method
