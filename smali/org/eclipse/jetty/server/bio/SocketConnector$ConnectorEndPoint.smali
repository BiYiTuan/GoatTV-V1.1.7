.class public Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;
.super Lorg/eclipse/jetty/io/bio/SocketEndPoint;
.source "SocketConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/eclipse/jetty/io/ConnectedEndPoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/bio/SocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnectorEndPoint"
.end annotation


# instance fields
.field volatile _connection:Lorg/eclipse/jetty/io/Connection;

.field protected final _socket:Ljava/net/Socket;

.field final synthetic this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/bio/SocketConnector;Ljava/net/Socket;)V
    .locals 1
    .param p2, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iput-object p1, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    .line 193
    # getter for: Lorg/eclipse/jetty/server/bio/SocketConnector;->_maxIdleTime:I
    invoke-static {p1}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$000(Lorg/eclipse/jetty/server/bio/SocketConnector;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;-><init>(Ljava/net/Socket;I)V

    .line 194
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->newConnection(Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/io/Connection;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    .line 195
    iput-object p2, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    .line 196
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    instance-of v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    check-cast v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->cancel()V

    .line 233
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->close()V

    .line 234
    return-void
.end method

.method public dispatch()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/bio/SocketConnector;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    :cond_0
    # getter for: Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "dispatch failed for {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->close()V

    .line 217
    :cond_1
    return-void
.end method

.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 1
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 223
    .local v0, "l":I
    if-gez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->close()V

    .line 225
    :cond_0
    return v0
.end method

.method public getConnection()Lorg/eclipse/jetty/io/Connection;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    return-object v0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 240
    :try_start_0
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    # invokes: Lorg/eclipse/jetty/server/bio/SocketConnector;->connectionOpened(Lorg/eclipse/jetty/io/Connection;)V
    invoke-static {v6, v7}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$300(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 241
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v7
    :try_end_0
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 243
    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v6, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v6, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :goto_0
    :try_start_2
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/bio/SocketConnector;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->isClosed()Z

    move-result v6

    if-nez v6, :cond_d

    .line 248
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/Connection;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 250
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/bio/SocketConnector;->isLowResources()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 251
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/bio/SocketConnector;->getLowResourcesMaxIdleTime()I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->setMaxIdleTime(I)V

    .line 254
    :cond_0
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/Connection;->handle()Lorg/eclipse/jetty/io/Connection;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;
    :try_end_2
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Lorg/eclipse/jetty/io/EofException;
    :try_start_3
    # getter for: Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    const-string v7, "EOF"

    invoke-interface {v6, v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 260
    :try_start_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 283
    :goto_1
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    # invokes: Lorg/eclipse/jetty/server/bio/SocketConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V
    invoke-static {v6, v7}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$400(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 284
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v7

    .line 286
    :try_start_5
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v6, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v6, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 287
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 292
    :try_start_6
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 295
    .local v4, "timestamp":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v3

    .line 297
    .local v3, "max_idle":I
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 298
    const/4 v0, 0x0

    .line 301
    .local v0, "c":I
    :cond_1
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 303
    if-ltz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    int-to-long v8, v3

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 304
    :cond_2
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 305
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    .line 313
    .end local v0    # "c":I
    .end local v1    # "e":Lorg/eclipse/jetty/io/EofException;
    .end local v3    # "max_idle":I
    .end local v4    # "timestamp":J
    :cond_3
    :goto_2
    return-void

    .line 244
    :catchall_0
    move-exception v6

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v6
    :try_end_8
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 263
    :catch_1
    move-exception v1

    .line 265
    .local v1, "e":Ljava/net/SocketException;
    :try_start_9
    # getter for: Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    const-string v7, "EOF"

    invoke-interface {v6, v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 266
    :try_start_a
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 283
    :goto_3
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    # invokes: Lorg/eclipse/jetty/server/bio/SocketConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V
    invoke-static {v6, v7}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$400(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 284
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v7

    .line 286
    :try_start_b
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v6, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v6, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 287
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 292
    :try_start_c
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 295
    .restart local v4    # "timestamp":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v3

    .line 297
    .restart local v3    # "max_idle":I
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 298
    const/4 v0, 0x0

    .line 301
    .restart local v0    # "c":I
    :cond_4
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 303
    if-ltz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    int-to-long v8, v3

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    .line 304
    :cond_5
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 305
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_2

    .line 308
    .end local v0    # "c":I
    .end local v3    # "max_idle":I
    .end local v4    # "timestamp":J
    :catch_2
    move-exception v1

    .line 310
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    :goto_4
    invoke-interface {v6, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 261
    .local v1, "e":Lorg/eclipse/jetty/io/EofException;
    :catch_3
    move-exception v2

    .local v2, "e2":Ljava/io/IOException;
    :try_start_d
    # getter for: Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_1

    .line 283
    .end local v1    # "e":Lorg/eclipse/jetty/io/EofException;
    .end local v2    # "e2":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v8, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    # invokes: Lorg/eclipse/jetty/server/bio/SocketConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V
    invoke-static {v7, v8}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$400(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 284
    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, v7, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v7

    .line 286
    :try_start_e
    iget-object v8, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v8, v8, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v8, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 287
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 292
    :try_start_f
    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->isClosed()Z

    move-result v7

    if-nez v7, :cond_8

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 295
    .restart local v4    # "timestamp":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v3

    .line 297
    .restart local v3    # "max_idle":I
    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 298
    const/4 v0, 0x0

    .line 301
    .restart local v0    # "c":I
    :cond_6
    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 303
    if-ltz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    int-to-long v9, v3

    cmp-long v7, v7, v9

    if-ltz v7, :cond_6

    .line 304
    :cond_7
    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->isClosed()Z

    move-result v7

    if-nez v7, :cond_8

    .line 305
    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 283
    .end local v0    # "c":I
    .end local v3    # "max_idle":I
    .end local v4    # "timestamp":J
    :cond_8
    :goto_5
    throw v6

    .line 267
    .local v1, "e":Ljava/net/SocketException;
    :catch_4
    move-exception v2

    .restart local v2    # "e2":Ljava/io/IOException;
    :try_start_10
    # getter for: Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 269
    .end local v1    # "e":Ljava/net/SocketException;
    .end local v2    # "e2":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 271
    .local v1, "e":Lorg/eclipse/jetty/http/HttpException;
    # getter for: Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    const-string v7, "BAD"

    invoke-interface {v6, v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 272
    :try_start_11
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 283
    :goto_6
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    # invokes: Lorg/eclipse/jetty/server/bio/SocketConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V
    invoke-static {v6, v7}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$400(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 284
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v7

    .line 286
    :try_start_12
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v6, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v6, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 287
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 292
    :try_start_13
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 295
    .restart local v4    # "timestamp":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v3

    .line 297
    .restart local v3    # "max_idle":I
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 298
    const/4 v0, 0x0

    .line 301
    .restart local v0    # "c":I
    :cond_9
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 303
    if-ltz v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    int-to-long v8, v3

    cmp-long v6, v6, v8

    if-ltz v6, :cond_9

    .line 304
    :cond_a
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 305
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_2

    .line 308
    .end local v0    # "c":I
    .end local v3    # "max_idle":I
    .end local v4    # "timestamp":J
    :catch_6
    move-exception v1

    .line 310
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    goto/16 :goto_4

    .line 273
    .local v1, "e":Lorg/eclipse/jetty/http/HttpException;
    :catch_7
    move-exception v2

    .restart local v2    # "e2":Ljava/io/IOException;
    :try_start_14
    # getter for: Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 275
    .end local v1    # "e":Lorg/eclipse/jetty/http/HttpException;
    .end local v2    # "e2":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    const-string v7, "handle failed?"

    invoke-interface {v6, v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 278
    :try_start_15
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 283
    :goto_7
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    # invokes: Lorg/eclipse/jetty/server/bio/SocketConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V
    invoke-static {v6, v7}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$400(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 284
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v7

    .line 286
    :try_start_16
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v6, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v6, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 287
    monitor-exit v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 292
    :try_start_17
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 295
    .restart local v4    # "timestamp":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v3

    .line 297
    .restart local v3    # "max_idle":I
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 298
    const/4 v0, 0x0

    .line 301
    .restart local v0    # "c":I
    :cond_b
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 303
    if-ltz v0, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    int-to-long v8, v3

    cmp-long v6, v6, v8

    if-ltz v6, :cond_b

    .line 304
    :cond_c
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 305
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9

    goto/16 :goto_2

    .line 308
    .end local v0    # "c":I
    .end local v3    # "max_idle":I
    .end local v4    # "timestamp":J
    :catch_9
    move-exception v1

    .line 310
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    goto/16 :goto_4

    .line 279
    .local v1, "e":Ljava/lang/Exception;
    :catch_a
    move-exception v2

    .restart local v2    # "e2":Ljava/io/IOException;
    :try_start_18
    # getter for: Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto :goto_7

    .line 287
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/io/IOException;
    :catchall_2
    move-exception v6

    :try_start_19
    monitor-exit v7
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    throw v6

    .line 308
    :catch_b
    move-exception v1

    .line 310
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    invoke-interface {v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 287
    .local v1, "e":Lorg/eclipse/jetty/io/EofException;
    :catchall_3
    move-exception v6

    :try_start_1a
    monitor-exit v7
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    throw v6

    .line 308
    :catch_c
    move-exception v1

    .line 310
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    goto/16 :goto_4

    .line 287
    .local v1, "e":Ljava/net/SocketException;
    :catchall_4
    move-exception v6

    :try_start_1b
    monitor-exit v7
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    throw v6

    .local v1, "e":Lorg/eclipse/jetty/http/HttpException;
    :catchall_5
    move-exception v6

    :try_start_1c
    monitor-exit v7
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    throw v6

    .local v1, "e":Ljava/lang/Exception;
    :catchall_6
    move-exception v6

    :try_start_1d
    monitor-exit v7
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    throw v6

    .line 283
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_d
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    # invokes: Lorg/eclipse/jetty/server/bio/SocketConnector;->connectionClosed(Lorg/eclipse/jetty/io/Connection;)V
    invoke-static {v6, v7}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$400(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;)V

    .line 284
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v7, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v7

    .line 286
    :try_start_1e
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v6, v6, Lorg/eclipse/jetty/server/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v6, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 287
    monitor-exit v7
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 292
    :try_start_1f
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 295
    .restart local v4    # "timestamp":J
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v3

    .line 297
    .restart local v3    # "max_idle":I
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getMaxIdleTime()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 298
    const/4 v0, 0x0

    .line 301
    .restart local v0    # "c":I
    :cond_e
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 303
    if-ltz v0, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    int-to-long v8, v3

    cmp-long v6, v6, v8

    if-ltz v6, :cond_e

    .line 304
    :cond_f
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 305
    iget-object v6, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_d

    goto/16 :goto_2

    .line 308
    .end local v0    # "c":I
    .end local v3    # "max_idle":I
    .end local v4    # "timestamp":J
    :catch_d
    move-exception v1

    .line 310
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lorg/eclipse/jetty/server/bio/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v6

    goto/16 :goto_4

    .line 287
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_7
    move-exception v6

    :try_start_20
    monitor-exit v7
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    throw v6
.end method

.method public setConnection(Lorg/eclipse/jetty/io/Connection;)V
    .locals 2
    .param p1, "connection"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 205
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/bio/SocketConnector;

    iget-object v1, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    # invokes: Lorg/eclipse/jetty/server/bio/SocketConnector;->connectionUpgraded(Lorg/eclipse/jetty/io/Connection;Lorg/eclipse/jetty/io/Connection;)V
    invoke-static {v0, v1, p1}, Lorg/eclipse/jetty/server/bio/SocketConnector;->access$100(Lorg/eclipse/jetty/server/bio/SocketConnector;Lorg/eclipse/jetty/io/Connection;Lorg/eclipse/jetty/io/Connection;)V

    .line 207
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->_connection:Lorg/eclipse/jetty/io/Connection;

    .line 208
    return-void
.end method
