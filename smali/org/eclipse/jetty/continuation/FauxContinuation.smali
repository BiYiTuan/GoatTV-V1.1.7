.class Lorg/eclipse/jetty/continuation/FauxContinuation;
.super Ljava/lang/Object;
.source "FauxContinuation.java"

# interfaces
.implements Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;


# static fields
.field private static final __COMPLETE:I = 0x7

.field private static final __COMPLETING:I = 0x4

.field private static final __HANDLING:I = 0x1

.field private static final __RESUMING:I = 0x3

.field private static final __SUSPENDED:I = 0x5

.field private static final __SUSPENDING:I = 0x2

.field private static final __UNSUSPENDING:I = 0x6

.field private static final __exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;


# instance fields
.field private _initial:Z

.field private _listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/eclipse/jetty/continuation/ContinuationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final _request:Ljavax/servlet/ServletRequest;

.field private _response:Ljavax/servlet/ServletResponse;

.field private _responseWrapped:Z

.field private _resumed:Z

.field private _state:I

.field private _timeout:Z

.field private _timeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/continuation/FauxContinuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    return-void
.end method

.method constructor <init>(Ljavax/servlet/ServletRequest;)V
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 50
    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_initial:Z

    .line 51
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_resumed:Z

    .line 52
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeout:Z

    .line 53
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_responseWrapped:Z

    .line 54
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeoutMs:J

    .line 60
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_request:Ljavax/servlet/ServletRequest;

    .line 61
    return-void
.end method

.method private fauxResume()V
    .locals 2

    .prologue
    .line 424
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeoutMs:J

    .line 425
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 426
    return-void
.end method

.method private fauxSuspend()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeoutMs:J

    add-long v1, v5, v7

    .line 404
    .local v1, "expire_at":J
    iget-wide v3, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeoutMs:J

    .line 405
    .local v3, "wait":J
    :goto_0
    iget-wide v5, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeoutMs:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_0

    cmp-long v5, v3, v9

    if-lez v5, :cond_0

    .line 409
    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v1, v5

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 418
    :cond_0
    iget-wide v5, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeoutMs:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_1

    cmp-long v5, v3, v9

    if-gtz v5, :cond_1

    .line 419
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->expire()V

    .line 420
    :cond_1
    return-void
.end method


# virtual methods
.method public addContinuationListener(Lorg/eclipse/jetty/continuation/ContinuationListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/eclipse/jetty/continuation/ContinuationListener;

    .prologue
    .line 455
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_listeners:Ljava/util/ArrayList;

    .line 457
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    return-void
.end method

.method public complete()V
    .locals 2

    .prologue
    .line 225
    monitor-enter p0

    .line 227
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 230
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :pswitch_1
    const/4 v0, 0x4

    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 253
    :goto_0
    :pswitch_2
    monitor-exit p0

    .line 254
    :goto_1
    return-void

    .line 240
    :pswitch_3
    monitor-exit p0

    goto :goto_1

    .line 243
    :pswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 244
    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->fauxResume()V

    goto :goto_0

    .line 248
    :pswitch_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public enter(Ljavax/servlet/ServletResponse;)Z
    .locals 1
    .param p1, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 262
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_response:Ljavax/servlet/ServletResponse;

    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public exit()Z
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 313
    monitor-enter p0

    .line 315
    :try_start_0
    iget v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    packed-switch v2, :pswitch_data_0

    .line 350
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 318
    :pswitch_0
    const/4 v1, 0x7

    :try_start_1
    iput v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 319
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->onComplete()V

    .line 320
    monitor-exit p0

    .line 345
    :goto_0
    return v0

    .line 323
    :pswitch_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_initial:Z

    .line 324
    const/4 v2, 0x5

    iput v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 325
    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->fauxSuspend()V

    .line 326
    iget v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 328
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->onComplete()V

    .line 329
    monitor-exit p0

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_initial:Z

    .line 333
    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 334
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 337
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_initial:Z

    .line 338
    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 339
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 342
    :pswitch_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_initial:Z

    .line 343
    const/4 v1, 0x7

    iput v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 344
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->onComplete()V

    .line 345
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected expire()V
    .locals 2

    .prologue
    .line 360
    monitor-enter p0

    .line 362
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeout:Z

    .line 363
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 365
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->onTimeout()V

    .line 367
    monitor-enter p0

    .line 369
    :try_start_1
    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 396
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 363
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 372
    :pswitch_0
    :try_start_3
    monitor-exit p0

    .line 399
    :goto_0
    return-void

    .line 375
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeout:Z

    .line 376
    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 377
    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->fauxResume()V

    .line 378
    monitor-exit p0

    goto :goto_0

    .line 381
    :pswitch_2
    monitor-exit p0

    goto :goto_0

    .line 384
    :pswitch_3
    monitor-exit p0

    goto :goto_0

    .line 387
    :pswitch_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeout:Z

    .line 388
    const/4 v0, 0x6

    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 398
    monitor-exit p0

    goto :goto_0

    .line 392
    :pswitch_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeout:Z

    .line 393
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 467
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getServletResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_response:Ljavax/servlet/ServletResponse;

    return-object v0
.end method

.method getStatusString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 436
    monitor-enter p0

    .line 438
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "HANDLING"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_initial:Z

    if-eqz v0, :cond_6

    const-string v0, ",initial"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_resumed:Z

    if-eqz v0, :cond_7

    const-string v0, ",resumed"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeout:Z

    if-eqz v0, :cond_8

    const-string v0, ",timeout"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v0, "SUSPENDING"

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    const-string v0, "SUSPENDED"

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const-string v0, "RESUMING"

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    const-string v0, "UNSUSPENDING"

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    const-string v0, "COMPLETING"

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "???"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, ""

    goto :goto_1

    :cond_7
    const-string v0, ""

    goto :goto_2

    :cond_8
    const-string v0, ""

    goto :goto_3

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handling()V
    .locals 3

    .prologue
    .line 279
    monitor-enter p0

    .line 281
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_responseWrapped:Z

    .line 282
    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 301
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 285
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :pswitch_2
    monitor-exit p0

    .line 298
    :goto_0
    return-void

    .line 295
    :pswitch_3
    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->fauxResume()V

    .line 297
    :pswitch_4
    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 298
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    .line 132
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeout:Z

    monitor-exit p0

    return v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isInitial()Z
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    .line 93
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_initial:Z

    monitor-exit p0

    return v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isResponseWrapped()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_responseWrapped:Z

    return v0
.end method

.method public isResumed()Z
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    .line 102
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_resumed:Z

    monitor-exit p0

    return v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSuspended()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    monitor-enter p0

    .line 111
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    packed-switch v1, :pswitch_data_0

    .line 122
    monitor-exit p0

    :goto_0
    return v0

    .line 114
    :pswitch_0
    monitor-exit p0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 119
    :pswitch_1
    const/4 v0, 0x1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onComplete()V
    .locals 3

    .prologue
    .line 66
    iget-object v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_listeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 68
    .local v1, "l":Lorg/eclipse/jetty/continuation/ContinuationListener;
    invoke-interface {v1, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V

    goto :goto_0

    .line 69
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lorg/eclipse/jetty/continuation/ContinuationListener;
    :cond_0
    return-void
.end method

.method public onTimeout()V
    .locals 3

    .prologue
    .line 74
    iget-object v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_listeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/continuation/ContinuationListener;

    .line 76
    .local v1, "l":Lorg/eclipse/jetty/continuation/ContinuationListener;
    invoke-interface {v1, p0}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V

    goto :goto_0

    .line 77
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lorg/eclipse/jetty/continuation/ContinuationListener;
    :cond_0
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 476
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 186
    monitor-enter p0

    .line 188
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 191
    :pswitch_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_resumed:Z

    .line 192
    monitor-exit p0

    .line 218
    :goto_0
    return-void

    .line 195
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_resumed:Z

    .line 196
    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 197
    monitor-exit p0

    goto :goto_0

    .line 201
    :pswitch_2
    monitor-exit p0

    goto :goto_0

    .line 204
    :pswitch_3
    invoke-direct {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->fauxResume()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_resumed:Z

    .line 206
    const/4 v0, 0x6

    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 216
    monitor-exit p0

    goto :goto_0

    .line 210
    :pswitch_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_resumed:Z

    .line 211
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/Object;

    .prologue
    .line 485
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_request:Ljavax/servlet/ServletRequest;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    return-void
.end method

.method public setTimeout(J)V
    .locals 0
    .param p1, "timeoutMs"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeoutMs:J

    .line 140
    return-void
.end method

.method public suspend()V
    .locals 3

    .prologue
    .line 153
    monitor-enter p0

    .line 155
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    packed-switch v0, :pswitch_data_0

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 158
    :pswitch_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_timeout:Z

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_resumed:Z

    .line 160
    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_state:I

    .line 161
    monitor-exit p0

    .line 165
    :goto_0
    return-void

    :pswitch_1
    monitor-exit p0

    goto :goto_0

    .line 170
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public suspend(Ljavax/servlet/ServletResponse;)V
    .locals 1
    .param p1, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_response:Ljavax/servlet/ServletResponse;

    .line 146
    instance-of v0, p1, Ljavax/servlet/ServletResponseWrapper;

    iput-boolean v0, p0, Lorg/eclipse/jetty/continuation/FauxContinuation;->_responseWrapped:Z

    .line 147
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->suspend()V

    .line 148
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public undispatch()V
    .locals 2

    .prologue
    .line 494
    invoke-virtual {p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    sget-boolean v0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->__debug:Z

    if-eqz v0, :cond_0

    .line 497
    new-instance v0, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    invoke-direct {v0}, Lorg/eclipse/jetty/continuation/ContinuationThrowable;-><init>()V

    throw v0

    .line 498
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/continuation/FauxContinuation;->__exception:Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    throw v0

    .line 500
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
