.class public Lorg/eclipse/jetty/server/handler/RequestLogHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "RequestLogHandler.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _requestLog:Lorg/eclipse/jetty/server/RequestLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    .line 138
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/RequestLog;->start()V

    .line 140
    :cond_0
    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStop()V

    .line 150
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/RequestLog;->stop()V

    .line 152
    :cond_0
    return-void
.end method

.method public getRequestLog()Lorg/eclipse/jetty/server/RequestLog;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    .line 55
    .local v0, "continuation":Lorg/eclipse/jetty/server/AsyncContinuation;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lorg/eclipse/jetty/server/Request;->setDispatchTime(J)V

    .line 62
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/eclipse/jetty/server/DispatcherType;->REQUEST:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lorg/eclipse/jetty/server/DispatcherType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    check-cast p4, Lorg/eclipse/jetty/server/Response;

    .end local p4    # "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-interface {v1, p2, p4}, Lorg/eclipse/jetty/server/RequestLog;->log(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;)V

    .line 72
    :cond_1
    return-void

    .line 66
    .restart local p4    # "response":Ljavax/servlet/http/HttpServletResponse;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v2, :cond_2

    sget-object v2, Lorg/eclipse/jetty/server/DispatcherType;->REQUEST:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lorg/eclipse/jetty/server/DispatcherType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    check-cast p4, Lorg/eclipse/jetty/server/Response;

    .end local p4    # "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-interface {v2, p2, p4}, Lorg/eclipse/jetty/server/RequestLog;->log(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;)V

    .line 66
    :cond_2
    throw v1
.end method

.method public setRequestLog(Lorg/eclipse/jetty/server/RequestLog;)V
    .locals 7
    .param p1, "requestLog"    # Lorg/eclipse/jetty/server/RequestLog;

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/RequestLog;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    const-string v4, "logimpl"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 91
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    .line 96
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/RequestLog;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    :cond_2
    return-void

    .line 83
    :catch_0
    move-exception v6

    .line 85
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 99
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 101
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 12
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 112
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 115
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    const-string v4, "logimpl"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 116
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 117
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 118
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/server/handler/RequestLogHandler;->_requestLog:Lorg/eclipse/jetty/server/RequestLog;

    const-string v10, "logimpl"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 121
    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->setServer(Lorg/eclipse/jetty/server/Server;)V

    goto :goto_0
.end method
