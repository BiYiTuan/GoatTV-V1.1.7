.class public Lorg/eclipse/jetty/client/HttpEventListenerWrapper;
.super Ljava/lang/Object;
.source "HttpEventListenerWrapper.java"

# interfaces
.implements Lorg/eclipse/jetty/client/HttpEventListener;


# instance fields
.field _delegatingRequests:Z

.field _delegatingResponses:Z

.field _delegationResult:Z

.field _listener:Lorg/eclipse/jetty/client/HttpEventListener;

.field private _reason:Lorg/eclipse/jetty/io/Buffer;

.field private _status:I

.field private _version:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegationResult:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    .line 34
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    .line 35
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/client/HttpEventListener;Z)V
    .locals 1
    .param p1, "eventListener"    # Lorg/eclipse/jetty/client/HttpEventListener;
    .param p2, "delegating"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegationResult:Z

    .line 40
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    .line 41
    iput-boolean p2, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    .line 42
    iput-boolean p2, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    .line 43
    return-void
.end method


# virtual methods
.method public getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    return-object v0
.end method

.method public isDelegatingRequests()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    return v0
.end method

.method public isDelegatingResponses()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    return v0
.end method

.method public onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onConnectionFailed(Ljava/lang/Throwable;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 90
    :cond_1
    return-void
.end method

.method public onExpire()V
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onExpire()V

    .line 96
    :cond_1
    return-void
.end method

.method public onRequestCommitted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onRequestCommitted()V

    .line 102
    :cond_0
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
    .line 106
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onRequestComplete()V

    .line 108
    :cond_0
    return-void
.end method

.method public onResponseComplete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_1

    .line 114
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegationResult:Z

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_version:Lorg/eclipse/jetty/io/Buffer;

    iget v2, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_status:I

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_reason:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseComplete()V

    .line 120
    :cond_1
    return-void
.end method

.method public onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "content"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V

    .line 126
    :cond_0
    return-void
.end method

.method public onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 132
    :cond_0
    return-void
.end method

.method public onResponseHeaderComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseHeaderComplete()V

    .line 138
    :cond_0
    return-void
.end method

.method public onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "version"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "status"    # I
    .param p3, "reason"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 152
    :goto_0
    return-void

    .line 148
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_version:Lorg/eclipse/jetty/io/Buffer;

    .line 149
    iput p2, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_status:I

    .line 150
    iput-object p3, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_reason:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onRetry()V

    .line 158
    :cond_0
    return-void
.end method

.method public setDelegatingRequests(Z)V
    .locals 0
    .param p1, "delegating"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingRequests:Z

    .line 68
    return-void
.end method

.method public setDelegatingResponses(Z)V
    .locals 0
    .param p1, "delegating"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegatingResponses:Z

    .line 73
    return-void
.end method

.method public setDelegationResult(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_delegationResult:Z

    .line 78
    return-void
.end method

.method public setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/eclipse/jetty/client/HttpEventListener;

    .prologue
    .line 52
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpEventListenerWrapper;->_listener:Lorg/eclipse/jetty/client/HttpEventListener;

    .line 53
    return-void
.end method
