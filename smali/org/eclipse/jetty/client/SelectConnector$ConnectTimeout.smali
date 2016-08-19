.class Lorg/eclipse/jetty/client/SelectConnector$ConnectTimeout;
.super Lorg/eclipse/jetty/util/thread/Timeout$Task;
.source "SelectConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/SelectConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectTimeout"
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/SocketChannel;

.field private final destination:Lorg/eclipse/jetty/client/HttpDestination;

.field final synthetic this$0:Lorg/eclipse/jetty/client/SelectConnector;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/SelectConnector;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 0
    .param p2, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p3, "destination"    # Lorg/eclipse/jetty/client/HttpDestination;

    .prologue
    .line 214
    iput-object p1, p0, Lorg/eclipse/jetty/client/SelectConnector$ConnectTimeout;->this$0:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;-><init>()V

    .line 215
    iput-object p2, p0, Lorg/eclipse/jetty/client/SelectConnector$ConnectTimeout;->channel:Ljava/nio/channels/SocketChannel;

    .line 216
    iput-object p3, p0, Lorg/eclipse/jetty/client/SelectConnector$ConnectTimeout;->destination:Lorg/eclipse/jetty/client/HttpDestination;

    .line 217
    return-void
.end method


# virtual methods
.method public expired()V
    .locals 6

    .prologue
    .line 222
    iget-object v1, p0, Lorg/eclipse/jetty/client/SelectConnector$ConnectTimeout;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    # getter for: Lorg/eclipse/jetty/client/SelectConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/client/SelectConnector;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    const-string v2, "Channel {} timed out while connecting, closing it"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/eclipse/jetty/client/SelectConnector$ConnectTimeout;->channel:Ljava/nio/channels/SocketChannel;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/SelectConnector$ConnectTimeout;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/SelectConnector$ConnectTimeout;->destination:Lorg/eclipse/jetty/client/HttpDestination;

    new-instance v2, Ljava/net/SocketTimeoutException;

    invoke-direct {v2}, Ljava/net/SocketTimeoutException;-><init>()V

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/HttpDestination;->onConnectionFailed(Ljava/lang/Throwable;)V

    .line 236
    :cond_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 232
    .local v0, "x":Ljava/io/IOException;
    # getter for: Lorg/eclipse/jetty/client/SelectConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/client/SelectConnector;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
