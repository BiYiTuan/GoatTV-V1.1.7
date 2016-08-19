.class public Lorg/eclipse/jetty/continuation/Jetty6Continuation;
.super Ljava/lang/Object;
.source "Jetty6Continuation.java"

# interfaces
.implements Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;


# static fields
.field private static final LOG:Lorg/mortbay/log/Logger;

.field private static final __exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;


# instance fields
.field private volatile _completed:Z

.field private volatile _expired:Z

.field private _initial:Z

.field private final _j6Continuation:Lorg/mortbay/util/ajax/Continuation;

.field private _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/continuation/ContinuationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final _request:Ljavax/servlet/ServletRequest;

.field private _response:Ljavax/servlet/ServletResponse;

.field private _responseWrapped:Z

.field private volatile _resumed:Z

.field private _retry:Ljava/lang/Throwable;

.field private _timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->getLogger(Ljava/lang/String;)Lorg/mortbay/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->LOG:Lorg/mortbay/log/Logger;

    .line 25
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/ServletRequest;Lorg/mortbay/util/ajax/Continuation;)V
    .locals 3
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "continuation"    # Lorg/mortbay/util/ajax/Continuation;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_initial:Z

    .line 34
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    .line 35
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    .line 36
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    .line 37
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_responseWrapped:Z

    .line 42
    sget-boolean v0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_initialized:Z

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->LOG:Lorg/mortbay/log/Logger;

    const-string v1, "!ContinuationFilter installed"

    invoke-interface {v0, v1, v2, v2}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!ContinuationFilter installed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_request:Ljavax/servlet/ServletRequest;

    .line 48
    iput-object p2, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    .line 49
    return-void
.end method


# virtual methods
.method public addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/eclipse/jetty/continuation/ContinuationListener;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public complete()V
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    .line 62
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 64
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    .line 65
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->resume()V

    .line 67
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    return-void
.end method

.method public enter(Ljavax/servlet/ServletResponse;)Z
    .locals 5
    .param p1, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 209
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_response:Ljavax/servlet/ServletResponse;

    .line 210
    iget-object v2, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v2}, Lorg/mortbay/util/ajax/Continuation;->isResumed()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    .line 212
    iget-boolean v2, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_initial:Z

    if-eqz v2, :cond_2

    .line 226
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v2, v4

    .line 210
    goto :goto_0

    .line 215
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v2}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    .line 217
    iget-boolean v2, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    if-eqz v2, :cond_3

    .line 219
    iget-object v2, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 221
    iget-object v2, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 222
    .local v1, "l":Lorg/eclipse/jetty/continuation/ContinuationListener;
    invoke-interface {v1, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V

    goto :goto_2

    .line 226
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lorg/eclipse/jetty/continuation/ContinuationListener;
    :cond_3
    iget-boolean v2, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    if-eqz v2, :cond_0

    move v3, v4

    goto :goto_1
.end method

.method public exit()Z
    .locals 4

    .prologue
    .line 232
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_initial:Z

    .line 234
    iget-object v2, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_retry:Ljava/lang/Throwable;

    .line 235
    .local v2, "th":Ljava/lang/Throwable;
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_retry:Ljava/lang/Throwable;

    .line 236
    instance-of v3, v2, Ljava/lang/Error;

    if-eqz v3, :cond_0

    .line 237
    check-cast v2, Ljava/lang/Error;

    .end local v2    # "th":Ljava/lang/Throwable;
    throw v2

    .line 238
    .restart local v2    # "th":Ljava/lang/Throwable;
    :cond_0
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_1

    .line 239
    check-cast v2, Ljava/lang/RuntimeException;

    .end local v2    # "th":Ljava/lang/Throwable;
    throw v2

    .line 241
    .restart local v2    # "th":Ljava/lang/Throwable;
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 243
    iget-object v3, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 244
    .local v1, "l":Lorg/eclipse/jetty/continuation/ContinuationListener;
    invoke-interface {v1, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V

    goto :goto_0

    .line 247
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lorg/eclipse/jetty/continuation/ContinuationListener;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getServletResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_response:Ljavax/servlet/ServletResponse;

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    return v0
.end method

.method public isInitial()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_initial:Z

    return v0
.end method

.method public isResponseWrapped()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_responseWrapped:Z

    return v0
.end method

.method public isResumed()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_retry:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    .line 132
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 134
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->resume()V

    .line 137
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/Object;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public setTimeout(J)V
    .locals 2
    .param p1, "timeoutMs"    # J

    .prologue
    .line 143
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    iput v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_timeout:I

    .line 144
    return-void

    .line 143
    :cond_0
    long-to-int v0, p1

    goto :goto_0
.end method

.method public suspend()V
    .locals 4

    .prologue
    .line 172
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_response:Ljavax/servlet/ServletResponse;

    .line 173
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_responseWrapped:Z

    .line 174
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    .line 175
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    .line 177
    iget-object v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    iget v2, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_timeout:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/mortbay/util/ajax/Continuation;->suspend(J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 181
    .local v0, "retry":Ljava/lang/Throwable;
    iput-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_retry:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public suspend(Ljavax/servlet/ServletResponse;)V
    .locals 4
    .param p1, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 154
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_response:Ljavax/servlet/ServletResponse;

    .line 155
    iget-object v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_response:Ljavax/servlet/ServletResponse;

    instance-of v1, v1, Ljavax/servlet/ServletResponseWrapper;

    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_responseWrapped:Z

    .line 156
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_resumed:Z

    .line 157
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_expired:Z

    .line 158
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_completed:Z

    .line 159
    iget-object v1, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_j6Continuation:Lorg/mortbay/util/ajax/Continuation;

    iget v2, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_timeout:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/mortbay/util/ajax/Continuation;->suspend(J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 163
    .local v0, "retry":Ljava/lang/Throwable;
    iput-object v0, p0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->_retry:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public undispatch()V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    sget-boolean v0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->__debug:Z

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    throw v0

    .line 201
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/continuation/Jetty6Continuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    throw v0

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
