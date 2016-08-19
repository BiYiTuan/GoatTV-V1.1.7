.class public Lorg/eclipse/jetty/io/bio/SocketEndPoint;
.super Lorg/eclipse/jetty/io/bio/StreamEndPoint;
.source "SocketEndPoint.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field final _local:Ljava/net/InetSocketAddress;

.field final _remote:Ljava/net/InetSocketAddress;

.field final _socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 43
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    .line 44
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    .line 45
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    .line 46
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    invoke-super {p0, v0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->setMaxIdleTime(I)V

    .line 47
    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;I)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "maxIdleTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 57
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    .line 58
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    .line 60
    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    if-lez p2, :cond_0

    move v0, p2

    :goto_0
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 61
    invoke-super {p0, p2}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->setMaxIdleTime(I)V

    .line 62
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 157
    iput-object v1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_in:Ljava/io/InputStream;

    .line 158
    iput-object v1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_out:Ljava/io/OutputStream;

    .line 159
    return-void
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    const-string v0, "0.0.0.0"

    .line 172
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    const-string v0, "0.0.0.0"

    .line 185
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 196
    const/4 v0, -0x1

    .line 197
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v2, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-nez v2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-object v1

    .line 209
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 210
    .local v0, "addr":Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 233
    const/4 v0, -0x1

    .line 234
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    return-object v0
.end method

.method protected idleExpired()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->isInputShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->shutdownInput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 272
    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    goto :goto_0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 79
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->isInputShutdown()Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 88
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->isOutputShutdown()Z

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxIdleTime(I)V
    .locals 2
    .param p1, "timeMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->getMaxIdleTime()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 255
    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    if-lez p1, :cond_1

    move v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 256
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->setMaxIdleTime(I)V

    .line 257
    return-void

    .line 255
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shutdownInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 144
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->shutdownInput()V

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->shutdownSocketInput()V

    goto :goto_0
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 116
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->shutdownOutput()V

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->shutdownSocketOutput()V

    goto :goto_0
.end method

.method public shutdownSocketInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 134
    :cond_1
    return-void
.end method

.method protected final shutdownSocketOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 106
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <--> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/SocketEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
