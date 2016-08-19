.class public Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;
.super Ljava/lang/Object;
.source "ConnectHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/AsyncConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/handler/ConnectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientToProxyConnection"
.end annotation


# instance fields
.field private final _buffer:Lorg/eclipse/jetty/io/Buffer;

.field private final _channel:Ljava/nio/channels/SocketChannel;

.field private final _context:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _endPoint:Lorg/eclipse/jetty/io/EndPoint;

.field private _firstTime:Z

.field private final _timestamp:J

.field private volatile _toServer:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

.field final synthetic this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;Ljava/util/concurrent/ConcurrentMap;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/EndPoint;J)V
    .locals 2
    .param p3, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p4, "endPoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p5, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/nio/channels/SocketChannel;",
            "Lorg/eclipse/jetty/io/EndPoint;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 695
    .local p2, "context":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    new-instance v0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_firstTime:Z

    .line 696
    iput-object p2, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_context:Ljava/util/concurrent/ConcurrentMap;

    .line 697
    iput-object p3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_channel:Ljava/nio/channels/SocketChannel;

    .line 698
    iput-object p4, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    .line 699
    iput-wide p5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_timestamp:J

    .line 700
    return-void
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    .prologue
    .line 684
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 815
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->closeClient()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->closeServer()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 830
    :goto_1
    return-void

    .line 817
    :catch_0
    move-exception v0

    .line 819
    .local v0, "x":Ljava/io/IOException;
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ConnectHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300(Lorg/eclipse/jetty/server/handler/ConnectHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unexpected exception closing the client"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 826
    .end local v0    # "x":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 828
    .restart local v0    # "x":Ljava/io/IOException;
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ConnectHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300(Lorg/eclipse/jetty/server/handler/ConnectHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unexpected exception closing the server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public closeClient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 804
    return-void
.end method

.method public closeServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_toServer:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->closeServer()V

    .line 809
    return-void
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 779
    iget-wide v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_timestamp:J

    return-wide v0
.end method

.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 713
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ConnectHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300(Lorg/eclipse/jetty/server/handler/ConnectHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    const-string v4, "{}: begin reading from client"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v8

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    :try_start_0
    iget-boolean v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_firstTime:Z

    if-eqz v3, :cond_0

    .line 718
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_firstTime:Z

    .line 719
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_channel:Ljava/nio/channels/SocketChannel;

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_toServer:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    # invokes: Lorg/eclipse/jetty/server/handler/ConnectHandler;->register(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;)V
    invoke-static {v3, v4, v5}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$600(Lorg/eclipse/jetty/server/handler/ConnectHandler;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;)V

    .line 720
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ConnectHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300(Lorg/eclipse/jetty/server/handler/ConnectHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    const-string v4, "{}: registered channel {} with connection {}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_channel:Ljava/nio/channels/SocketChannel;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_toServer:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v6, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_context:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3, v4, v5, v6}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->read(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/io/Buffer;Ljava/util/concurrent/ConcurrentMap;)I

    move-result v0

    .line 727
    .local v0, "read":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 729
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ConnectHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300(Lorg/eclipse/jetty/server/handler/ConnectHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    const-string v4, "{}: client closed connection {}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 731
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v3

    if-nez v3, :cond_3

    .line 732
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->closeServer()V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ConnectHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300(Lorg/eclipse/jetty/server/handler/ConnectHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    const-string v4, "{}: end reading from client"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v8

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 746
    return-object p0

    .line 734
    :cond_3
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_toServer:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->shutdownOutput()V
    :try_end_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 748
    .end local v0    # "read":I
    :catch_0
    move-exception v2

    .line 750
    .local v2, "x":Ljava/nio/channels/ClosedChannelException;
    :try_start_2
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ConnectHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300(Lorg/eclipse/jetty/server/handler/ConnectHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 751
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->closeServer()V

    .line 752
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 768
    .end local v2    # "x":Ljava/nio/channels/ClosedChannelException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ConnectHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v4}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300(Lorg/eclipse/jetty/server/handler/ConnectHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    const-string v5, "{}: end reading from client"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p0, v6, v8

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 739
    .restart local v0    # "read":I
    :cond_4
    if-eqz v0, :cond_2

    .line 742
    :try_start_3
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ConnectHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300(Lorg/eclipse/jetty/server/handler/ConnectHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    const-string v4, "{}: read from client {} bytes {}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_toServer:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    # getter for: Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->_endPoint:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v4}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->access$700(Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v6, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_context:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3, v4, v5, v6}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->write(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/io/Buffer;Ljava/util/concurrent/ConcurrentMap;)I

    move-result v1

    .line 744
    .local v1, "written":I
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ConnectHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300(Lorg/eclipse/jetty/server/handler/ConnectHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    const-string v4, "{}: written to {} {} bytes"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_toServer:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 754
    .end local v0    # "read":I
    .end local v1    # "written":I
    :catch_1
    move-exception v2

    .line 756
    .local v2, "x":Ljava/io/IOException;
    :try_start_4
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ConnectHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300(Lorg/eclipse/jetty/server/handler/ConnectHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": unexpected exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 757
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->close()V

    .line 758
    throw v2

    .line 760
    .end local v2    # "x":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 762
    .local v2, "x":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->this$0:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    # getter for: Lorg/eclipse/jetty/server/handler/ConnectHandler;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v3}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$300(Lorg/eclipse/jetty/server/handler/ConnectHandler;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": unexpected exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 763
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->close()V

    .line 764
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 784
    const/4 v0, 0x0

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 789
    const/4 v0, 0x0

    return v0
.end method

.method public onClose()V
    .locals 0

    .prologue
    .line 794
    return-void
.end method

.method public onIdleExpired(J)V
    .locals 2
    .param p1, "idleForMs"    # J

    .prologue
    .line 841
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->shutdownOutput()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :goto_0
    return-void

    .line 843
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$500()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 846
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->close()V

    goto :goto_0
.end method

.method public onInputShutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 775
    return-void
.end method

.method public setConnection(Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    .prologue
    .line 798
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_toServer:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    .line 799
    return-void
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 834
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 835
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientToProxy"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 706
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "(:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 707
    const-string v1, "<=>:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->_endPoint:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->getRemotePort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 708
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
