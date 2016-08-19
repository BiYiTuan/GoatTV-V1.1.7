.class public Lorg/eclipse/jetty/client/RedirectListener;
.super Lorg/eclipse/jetty/client/HttpEventListenerWrapper;
.source "RedirectListener.java"


# instance fields
.field private _attempts:I

.field private _destination:Lorg/eclipse/jetty/client/HttpDestination;

.field private final _exchange:Lorg/eclipse/jetty/client/HttpExchange;

.field private _location:Ljava/lang/String;

.field private _redirected:Z

.field private _requestComplete:Z

.field private _responseComplete:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 2
    .param p1, "destination"    # Lorg/eclipse/jetty/client/HttpDestination;
    .param p2, "ex"    # Lorg/eclipse/jetty/client/HttpExchange;

    .prologue
    .line 42
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;-><init>(Lorg/eclipse/jetty/client/HttpEventListener;Z)V

    .line 44
    iput-object p1, p0, Lorg/eclipse/jetty/client/RedirectListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    .line 45
    iput-object p2, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 46
    return-void
.end method


# virtual methods
.method public checkExchangeComplete()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 108
    iget-boolean v7, p0, Lorg/eclipse/jetty/client/RedirectListener;->_redirected:Z

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Lorg/eclipse/jetty/client/RedirectListener;->_requestComplete:Z

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Lorg/eclipse/jetty/client/RedirectListener;->_responseComplete:Z

    if-eqz v7, :cond_7

    .line 110
    iget-object v7, p0, Lorg/eclipse/jetty/client/RedirectListener;->_location:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 112
    iget-object v7, p0, Lorg/eclipse/jetty/client/RedirectListener;->_location:Ljava/lang/String;

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    .line 114
    iget-object v7, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    iget-object v8, p0, Lorg/eclipse/jetty/client/RedirectListener;->_location:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/eclipse/jetty/client/HttpExchange;->setURL(Ljava/lang/String;)V

    .line 122
    :goto_0
    const-string v7, "https"

    iget-object v8, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v8}, Lorg/eclipse/jetty/client/HttpExchange;->getScheme()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 123
    .local v3, "isHttps":Z
    iget-object v7, p0, Lorg/eclipse/jetty/client/RedirectListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v7}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v8}, Lorg/eclipse/jetty/client/HttpExchange;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lorg/eclipse/jetty/client/HttpClient;->getDestination(Lorg/eclipse/jetty/client/Address;Z)Lorg/eclipse/jetty/client/HttpDestination;

    move-result-object v1

    .line 125
    .local v1, "destination":Lorg/eclipse/jetty/client/HttpDestination;
    iget-object v7, p0, Lorg/eclipse/jetty/client/RedirectListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    if-ne v7, v1, :cond_1

    .line 127
    iget-object v7, p0, Lorg/eclipse/jetty/client/RedirectListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    iget-object v8, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v7, v8}, Lorg/eclipse/jetty/client/HttpDestination;->resend(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 167
    .end local v1    # "destination":Lorg/eclipse/jetty/client/HttpDestination;
    .end local v3    # "isHttps":Z
    :goto_1
    return v6

    .line 118
    :cond_0
    iget-object v7, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    iget-object v8, p0, Lorg/eclipse/jetty/client/RedirectListener;->_location:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/eclipse/jetty/client/HttpExchange;->setRequestURI(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .restart local v1    # "destination":Lorg/eclipse/jetty/client/HttpDestination;
    .restart local v3    # "isHttps":Z
    :cond_1
    move-object v4, p0

    .line 133
    .local v4, "listener":Lorg/eclipse/jetty/client/HttpEventListener;
    :goto_2
    instance-of v7, v4, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;

    if-eqz v7, :cond_2

    .line 135
    check-cast v4, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;

    .end local v4    # "listener":Lorg/eclipse/jetty/client/HttpEventListener;
    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v4

    .restart local v4    # "listener":Lorg/eclipse/jetty/client/HttpEventListener;
    goto :goto_2

    .line 139
    :cond_2
    iget-object v7, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v7}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v7

    invoke-interface {v7}, Lorg/eclipse/jetty/client/HttpEventListener;->onRetry()V

    .line 140
    iget-object v7, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v7}, Lorg/eclipse/jetty/client/HttpExchange;->reset()V

    .line 141
    iget-object v7, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v7, v4}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 144
    iget-object v7, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v7}, Lorg/eclipse/jetty/client/HttpExchange;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v0

    .line 145
    .local v0, "address":Lorg/eclipse/jetty/client/Address;
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/Address;->getPort()I

    move-result v5

    .line 146
    .local v5, "port":I
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 147
    .local v2, "hostHeader":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/Address;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const/16 v7, 0x50

    if-ne v5, v7, :cond_3

    if-eqz v3, :cond_5

    :cond_3
    const/16 v7, 0x1bb

    if-ne v5, v7, :cond_4

    if-nez v3, :cond_5

    .line 150
    :cond_4
    const/16 v7, 0x3a

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    :cond_5
    iget-object v7, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    const-string v8, "Host"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/client/HttpExchange;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v7, p0, Lorg/eclipse/jetty/client/RedirectListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    invoke-virtual {v1, v7}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    goto :goto_1

    .line 163
    .end local v0    # "address":Lorg/eclipse/jetty/client/Address;
    .end local v1    # "destination":Lorg/eclipse/jetty/client/HttpDestination;
    .end local v2    # "hostHeader":Ljava/lang/StringBuilder;
    .end local v3    # "isHttps":Z
    .end local v4    # "listener":Lorg/eclipse/jetty/client/HttpEventListener;
    .end local v5    # "port":I
    :cond_6
    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegationResult(Z)V

    .line 167
    :cond_7
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x1

    .line 190
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegatingRequests(Z)V

    .line 191
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegatingResponses(Z)V

    .line 193
    invoke-super {p0, p1}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onConnectionFailed(Ljava/lang/Throwable;)V

    .line 194
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x1

    .line 202
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegatingRequests(Z)V

    .line 203
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegatingResponses(Z)V

    .line 205
    invoke-super {p0, p1}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onException(Ljava/lang/Throwable;)V

    .line 206
    return-void
.end method

.method public onRequestComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_requestComplete:Z

    .line 88
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/RedirectListener;->checkExchangeComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRequestComplete()V

    .line 92
    :cond_0
    return-void
.end method

.method public onResponseComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_responseComplete:Z

    .line 99
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/RedirectListener;->checkExchangeComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseComplete()V

    .line 103
    :cond_0
    return-void
.end method

.method public onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-boolean v1, p0, Lorg/eclipse/jetty/client/RedirectListener;->_redirected:Z

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 73
    .local v0, "header":I
    packed-switch v0, :pswitch_data_0

    .line 80
    .end local v0    # "header":I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 81
    return-void

    .line 76
    .restart local v0    # "header":I
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/client/RedirectListener;->_location:Ljava/lang/String;

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch
.end method

.method public onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 3
    .param p1, "version"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "status"    # I
    .param p3, "reason"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 52
    const/16 v0, 0x12d

    if-eq p2, v0, :cond_0

    const/16 v0, 0x12e

    if-ne p2, v0, :cond_2

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_attempts:I

    iget-object v2, p0, Lorg/eclipse/jetty/client/RedirectListener;->_destination:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpDestination;->getHttpClient()Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpClient;->maxRedirects()I

    move-result v2

    if-ge v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_redirected:Z

    .line 56
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_redirected:Z

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegatingRequests(Z)V

    .line 59
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegatingResponses(Z)V

    .line 62
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 63
    return-void

    :cond_2
    move v0, v1

    .line 52
    goto :goto_0
.end method

.method public onRetry()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 172
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/RedirectListener;->_redirected:Z

    .line 173
    iget v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_attempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/client/RedirectListener;->_attempts:I

    .line 175
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegatingRequests(Z)V

    .line 176
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/client/RedirectListener;->setDelegatingResponses(Z)V

    .line 178
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/RedirectListener;->_requestComplete:Z

    .line 179
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/RedirectListener;->_responseComplete:Z

    .line 181
    invoke-super {p0}, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->onRetry()V

    .line 182
    return-void
.end method
