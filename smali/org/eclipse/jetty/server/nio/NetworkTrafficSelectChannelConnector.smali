.class public Lorg/eclipse/jetty/server/nio/NetworkTrafficSelectChannelConnector;
.super Lorg/eclipse/jetty/server/nio/SelectChannelConnector;
.source "NetworkTrafficSelectChannelConnector.java"


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/io/NetworkTrafficListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/nio/NetworkTrafficSelectChannelConnector;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addNetworkTrafficListener(Lorg/eclipse/jetty/io/NetworkTrafficListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/eclipse/jetty/io/NetworkTrafficListener;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/NetworkTrafficSelectChannelConnector;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method protected endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 0
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 66
    check-cast p1, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;

    .end local p1    # "endpoint":Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    invoke-virtual {p1}, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->notifyClosed()V

    .line 67
    return-void
.end method

.method protected newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .locals 6
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "selectSet"    # Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .param p3, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;

    iget v4, p0, Lorg/eclipse/jetty/server/nio/NetworkTrafficSelectChannelConnector;->_maxIdleTime:I

    iget-object v5, p0, Lorg/eclipse/jetty/server/nio/NetworkTrafficSelectChannelConnector;->listeners:Ljava/util/List;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;-><init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;ILjava/util/List;)V

    .line 57
    .local v0, "endPoint":Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 58
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/NetworkTrafficSelectChannelEndPoint;->notifyOpened()V

    .line 59
    return-object v0
.end method

.method public removeNetworkTrafficListener(Lorg/eclipse/jetty/io/NetworkTrafficListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/eclipse/jetty/io/NetworkTrafficListener;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/NetworkTrafficSelectChannelConnector;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method
