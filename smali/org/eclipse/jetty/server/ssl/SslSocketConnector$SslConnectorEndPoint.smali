.class public Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;
.super Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;
.source "SslSocketConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/ssl/SslSocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SslConnectorEndPoint"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/ssl/SslSocketConnector;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/ssl/SslSocketConnector;Ljava/net/Socket;)V
    .locals 0
    .param p2, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    iput-object p1, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/ssl/SslSocketConnector;

    .line 617
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;-><init>(Lorg/eclipse/jetty/server/bio/SocketConnector;Ljava/net/Socket;)V

    .line 618
    return-void
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    invoke-super {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->close()V

    return-void
.end method

.method public bridge synthetic dispatch()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    invoke-super {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->dispatch()V

    return-void
.end method

.method public bridge synthetic fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 1
    .param p1, "x0"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getConnection()Lorg/eclipse/jetty/io/Connection;
    .locals 1

    .prologue
    .line 613
    invoke-super {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 637
    :try_start_0
    iget-object v5, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->this$0:Lorg/eclipse/jetty/server/ssl/SslSocketConnector;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->getHandshakeTimeout()I

    move-result v2

    .line 638
    .local v2, "handshakeTimeout":I
    iget-object v5, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getSoTimeout()I

    move-result v3

    .line 639
    .local v3, "oldTimeout":I
    if-lez v2, :cond_0

    .line 640
    iget-object v5, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v5, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 642
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->_socket:Ljava/net/Socket;

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    .line 643
    .local v4, "ssl":Ljavax/net/ssl/SSLSocket;
    new-instance v5, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;

    invoke-direct {v5, p0, v4}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint$1;-><init>(Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;Ljavax/net/ssl/SSLSocket;)V

    invoke-virtual {v4, v5}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 660
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 662
    if-lez v2, :cond_1

    .line 663
    iget-object v5, p0, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v5, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 665
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->run()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 679
    .end local v2    # "handshakeTimeout":I
    .end local v3    # "oldTimeout":I
    .end local v4    # "ssl":Ljavax/net/ssl/SSLSocket;
    :goto_0
    return-void

    .line 667
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Ljavax/net/ssl/SSLException;
    # getter for: Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 670
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 671
    :catch_1
    move-exception v1

    .local v1, "e2":Ljava/io/IOException;
    # getter for: Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 673
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .end local v1    # "e2":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 675
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 676
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 677
    :catch_3
    move-exception v1

    .restart local v1    # "e2":Ljava/io/IOException;
    # getter for: Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic setConnection(Lorg/eclipse/jetty/io/Connection;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 613
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/bio/SocketConnector$ConnectorEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    return-void
.end method

.method public shutdownInput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->close()V

    .line 630
    return-void
.end method

.method public shutdownOutput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 623
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSocketConnector$SslConnectorEndPoint;->close()V

    .line 624
    return-void
.end method
