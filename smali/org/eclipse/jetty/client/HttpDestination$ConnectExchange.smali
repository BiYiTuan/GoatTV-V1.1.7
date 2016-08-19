.class Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;
.super Lorg/eclipse/jetty/client/ContentExchange;
.source "HttpDestination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/HttpDestination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectExchange"
.end annotation


# instance fields
.field private final exchange:Lorg/eclipse/jetty/client/HttpExchange;

.field private final proxyEndPoint:Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

.field final synthetic this$0:Lorg/eclipse/jetty/client/HttpDestination;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/Address;Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 3
    .param p2, "serverAddress"    # Lorg/eclipse/jetty/client/Address;
    .param p3, "proxyEndPoint"    # Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;
    .param p4, "exchange"    # Lorg/eclipse/jetty/client/HttpExchange;

    .prologue
    .line 674
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->this$0:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-direct {p0}, Lorg/eclipse/jetty/client/ContentExchange;-><init>()V

    .line 675
    iput-object p3, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->proxyEndPoint:Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    .line 676
    iput-object p4, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 677
    const-string v1, "CONNECT"

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->setMethod(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p4}, Lorg/eclipse/jetty/client/HttpExchange;->getVersion()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->setVersion(I)V

    .line 679
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/Address;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "serverHostAndPort":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->setRequestURI(Ljava/lang/String;)V

    .line 681
    const-string v1, "Host"

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v1, "Proxy-Connection"

    const-string v2, "keep-alive"

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v1, "User-Agent"

    const-string v2, "Jetty-Client"

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    return-void
.end method


# virtual methods
.method protected onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "x"    # Ljava/lang/Throwable;

    .prologue
    .line 707
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->this$0:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->onConnectionFailed(Ljava/lang/Throwable;)V

    .line 708
    return-void
.end method

.method protected onException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "x"    # Ljava/lang/Throwable;

    .prologue
    .line 713
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->this$0:Lorg/eclipse/jetty/client/HttpDestination;

    # getter for: Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;
    invoke-static {v0}, Lorg/eclipse/jetty/client/HttpDestination;->access$000(Lorg/eclipse/jetty/client/HttpDestination;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 714
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->exchange:Lorg/eclipse/jetty/client/HttpExchange;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 716
    :cond_0
    return-void
.end method

.method protected onExpire()V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->this$0:Lorg/eclipse/jetty/client/HttpDestination;

    # getter for: Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;
    invoke-static {v0}, Lorg/eclipse/jetty/client/HttpDestination;->access$000(Lorg/eclipse/jetty/client/HttpDestination;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 722
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->exchange:Lorg/eclipse/jetty/client/HttpExchange;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onExpire()V

    .line 724
    :cond_0
    return-void
.end method

.method protected onResponseComplete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->getResponseStatus()I

    move-result v0

    .line 690
    .local v0, "responseStatus":I
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 692
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->proxyEndPoint:Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->upgrade()V

    .line 702
    :goto_0
    return-void

    .line 694
    :cond_0
    const/16 v1, 0x1f8

    if-ne v0, v1, :cond_1

    .line 696
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->onExpire()V

    goto :goto_0

    .line 700
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->proxyEndPoint:Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->proxyEndPoint:Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->getRemotePort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " didn\'t return http return code 200, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while trying to request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpExchange;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/Address;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/HttpDestination$ConnectExchange;->onException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
