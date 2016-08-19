.class Lorg/eclipse/jetty/client/SocketConnector$1;
.super Ljava/lang/Object;
.source "SocketConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/client/SocketConnector;->startConnection(Lorg/eclipse/jetty/client/HttpDestination;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/client/SocketConnector;

.field final synthetic val$connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

.field final synthetic val$destination:Lorg/eclipse/jetty/client/HttpDestination;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/client/SocketConnector;Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/eclipse/jetty/client/SocketConnector$1;->this$0:Lorg/eclipse/jetty/client/SocketConnector;

    iput-object p2, p0, Lorg/eclipse/jetty/client/SocketConnector$1;->val$connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iput-object p3, p0, Lorg/eclipse/jetty/client/SocketConnector$1;->val$destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/SocketConnector$1;->val$connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 71
    .local v0, "con":Lorg/eclipse/jetty/io/Connection;
    :goto_0
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Connection;->handle()Lorg/eclipse/jetty/io/Connection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 72
    .local v2, "next":Lorg/eclipse/jetty/io/Connection;
    if-eq v2, v0, :cond_0

    .line 74
    move-object v0, v2

    .line 75
    goto :goto_0

    .line 94
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/client/SocketConnector$1;->val$destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v4, p0, Lorg/eclipse/jetty/client/SocketConnector$1;->val$connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    .end local v0    # "con":Lorg/eclipse/jetty/io/Connection;
    .end local v2    # "next":Lorg/eclipse/jetty/io/Connection;
    :goto_1
    return-void

    .line 96
    .restart local v0    # "con":Lorg/eclipse/jetty/io/Connection;
    .restart local v2    # "next":Lorg/eclipse/jetty/io/Connection;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lorg/eclipse/jetty/client/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/client/SocketConnector;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 80
    .end local v0    # "con":Lorg/eclipse/jetty/io/Connection;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "next":Lorg/eclipse/jetty/io/Connection;
    :catch_1
    move-exception v1

    .line 82
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    instance-of v3, v1, Ljava/io/InterruptedIOException;

    if-eqz v3, :cond_1

    .line 83
    # getter for: Lorg/eclipse/jetty/client/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/client/SocketConnector;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :goto_2
    :try_start_3
    iget-object v3, p0, Lorg/eclipse/jetty/client/SocketConnector$1;->val$destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v4, p0, Lorg/eclipse/jetty/client/SocketConnector$1;->val$connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 96
    :catch_2
    move-exception v1

    .line 98
    # getter for: Lorg/eclipse/jetty/client/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/client/SocketConnector;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 86
    :cond_1
    :try_start_4
    # getter for: Lorg/eclipse/jetty/client/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/client/SocketConnector;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 87
    iget-object v3, p0, Lorg/eclipse/jetty/client/SocketConnector$1;->val$destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v3, v1}, Lorg/eclipse/jetty/client/HttpDestination;->onException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 92
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 94
    :try_start_5
    iget-object v4, p0, Lorg/eclipse/jetty/client/SocketConnector$1;->val$destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v5, p0, Lorg/eclipse/jetty/client/SocketConnector$1;->val$connection:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jetty/client/HttpDestination;->returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 99
    :goto_3
    throw v3

    .line 96
    :catch_3
    move-exception v1

    .line 98
    .restart local v1    # "e":Ljava/io/IOException;
    # getter for: Lorg/eclipse/jetty/client/SocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/client/SocketConnector;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
