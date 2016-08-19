.class public Lorg/eclipse/jetty/server/handler/HotSwapHandler;
.super Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;
.source "HotSwapHandler.java"


# instance fields
.field private volatile _handler:Lorg/eclipse/jetty/server/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "!STOPPED"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 171
    .local v0, "child":Lorg/eclipse/jetty/server/Handler;
    if-eqz v0, :cond_1

    .line 173
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 174
    invoke-interface {v0}, Lorg/eclipse/jetty/server/Handler;->destroy()V

    .line 176
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->destroy()V

    .line 177
    return-void
.end method

.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Handler;->start()V

    .line 108
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->doStart()V

    .line 109
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
    .line 118
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->doStop()V

    .line 119
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Handler;->stop()V

    .line 121
    :cond_0
    return-void
.end method

.method protected expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "list"    # Ljava/lang/Object;
    .param p2, "byClass"    # Ljava/lang/Class;

    .prologue
    .line 161
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->expandHandler(Lorg/eclipse/jetty/server/Handler;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Lorg/eclipse/jetty/server/Handler;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    return-object v0
.end method

.method public getHandlers()[Lorg/eclipse/jetty/server/Handler;
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jetty/server/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
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
    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 133
    :cond_0
    return-void
.end method

.method public setHandler(Lorg/eclipse/jetty/server/Handler;)V
    .locals 4
    .param p1, "handler"    # Lorg/eclipse/jetty/server/Handler;

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    .line 70
    .local v1, "old_handler":Lorg/eclipse/jetty/server/Handler;
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    .line 71
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/eclipse/jetty/server/Handler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 74
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-interface {p1}, Lorg/eclipse/jetty/server/Handler;->start()V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v2

    const-string v3, "handler"

    invoke-virtual {v2, p0, v1, p1, v3}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    invoke-interface {v1}, Lorg/eclipse/jetty/server/Handler;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :cond_2
    return-void

    .line 89
    .end local v1    # "old_handler":Lorg/eclipse/jetty/server/Handler;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 93
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 6
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    .line 141
    .local v1, "old_server":Lorg/eclipse/jetty/server/Server;
    if-ne p1, v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "RUNNING"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/AbstractHandlerContainer;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 149
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 150
    .local v0, "h":Lorg/eclipse/jetty/server/Handler;
    if-eqz v0, :cond_3

    .line 151
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/Handler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 153
    :cond_3
    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    .line 154
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/HotSwapHandler;->_handler:Lorg/eclipse/jetty/server/Handler;

    const-string v5, "handler"

    invoke-virtual {v2, p0, v3, v4, v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
