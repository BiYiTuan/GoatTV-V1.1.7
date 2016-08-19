.class public Lorg/eclipse/jetty/server/ResourceCache$Content;
.super Ljava/lang/Object;
.source "ResourceCache.java"

# interfaces
.implements Lorg/eclipse/jetty/http/HttpContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/ResourceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Content"
.end annotation


# instance fields
.field final _contentType:Lorg/eclipse/jetty/io/Buffer;

.field _directBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field _indirectBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field final _key:Ljava/lang/String;

.field volatile _lastAccessed:J

.field final _lastModified:J

.field final _lastModifiedBytes:Lorg/eclipse/jetty/io/Buffer;

.field final _length:I

.field final _resource:Lorg/eclipse/jetty/util/resource/Resource;

.field final synthetic this$0:Lorg/eclipse/jetty/server/ResourceCache;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/ResourceCache;Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 5
    .param p2, "pathInContext"    # Ljava/lang/String;
    .param p3, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 364
    iput-object p1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_indirectBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 360
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_directBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 365
    iput-object p2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_key:Ljava/lang/String;

    .line 366
    iput-object p3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 368
    # getter for: Lorg/eclipse/jetty/server/ResourceCache;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;
    invoke-static {p1}, Lorg/eclipse/jetty/server/ResourceCache;->access$000(Lorg/eclipse/jetty/server/ResourceCache;)Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_contentType:Lorg/eclipse/jetty/io/Buffer;

    .line 369
    invoke-virtual {p3}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v0

    .line 370
    .local v0, "exists":Z
    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v1

    :goto_0
    iput-wide v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModified:J

    .line 371
    iget-wide v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModified:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModifiedBytes:Lorg/eclipse/jetty/io/Buffer;

    .line 373
    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v1

    long-to-int v1, v1

    :goto_2
    iput v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    .line 374
    # getter for: Lorg/eclipse/jetty/server/ResourceCache;->_cachedSize:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {p1}, Lorg/eclipse/jetty/server/ResourceCache;->access$100(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    iget v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 375
    # getter for: Lorg/eclipse/jetty/server/ResourceCache;->_cachedFiles:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {p1}, Lorg/eclipse/jetty/server/ResourceCache;->access$200(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastAccessed:J

    .line 377
    return-void

    .line 370
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 371
    :cond_1
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-wide v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModified:J

    invoke-static {v2, v3}, Lorg/eclipse/jetty/http/HttpFields;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 373
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 490
    iget v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_contentType:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 469
    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_directBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .line 470
    .local v0, "buffer":Lorg/eclipse/jetty/io/Buffer;
    if-nez v0, :cond_0

    .line 472
    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    iget-object v4, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/server/ResourceCache;->getDirectBuffer(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 474
    .local v1, "buffer2":Lorg/eclipse/jetty/io/Buffer;
    if-nez v1, :cond_1

    .line 475
    # getter for: Lorg/eclipse/jetty/server/ResourceCache;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/ResourceCache;->access$400()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    .end local v1    # "buffer2":Lorg/eclipse/jetty/io/Buffer;
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 484
    :goto_1
    return-object v2

    .line 476
    .restart local v1    # "buffer2":Lorg/eclipse/jetty/io/Buffer;
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_directBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 477
    move-object v0, v1

    goto :goto_0

    .line 479
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_directBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .restart local v0    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    goto :goto_0

    .line 484
    .end local v1    # "buffer2":Lorg/eclipse/jetty/io/Buffer;
    :cond_3
    new-instance v2, Lorg/eclipse/jetty/io/View;

    invoke-direct {v2, v0}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_1
.end method

.method public getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 448
    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_indirectBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .line 449
    .local v0, "buffer":Lorg/eclipse/jetty/io/Buffer;
    if-nez v0, :cond_0

    .line 451
    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    iget-object v4, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/server/ResourceCache;->getIndirectBuffer(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 453
    .local v1, "buffer2":Lorg/eclipse/jetty/io/Buffer;
    if-nez v1, :cond_1

    .line 454
    # getter for: Lorg/eclipse/jetty/server/ResourceCache;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/ResourceCache;->access$400()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    .end local v1    # "buffer2":Lorg/eclipse/jetty/io/Buffer;
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 462
    :goto_1
    return-object v2

    .line 455
    .restart local v1    # "buffer2":Lorg/eclipse/jetty/io/Buffer;
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_indirectBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 456
    move-object v0, v1

    goto :goto_0

    .line 458
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_indirectBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .restart local v0    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    goto :goto_0

    .line 462
    .end local v1    # "buffer2":Lorg/eclipse/jetty/io/Buffer;
    :cond_3
    new-instance v2, Lorg/eclipse/jetty/io/View;

    invoke-direct {v2, v0}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ResourceCache$Content;->getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 497
    .local v0, "indirect":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 498
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 500
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModifiedBytes:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method protected invalidate()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    # getter for: Lorg/eclipse/jetty/server/ResourceCache;->_cachedSize:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lorg/eclipse/jetty/server/ResourceCache;->access$100(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 423
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    # getter for: Lorg/eclipse/jetty/server/ResourceCache;->_cachedFiles:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lorg/eclipse/jetty/server/ResourceCache;->access$200(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 424
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    .line 425
    return-void
.end method

.method public isCached()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_key:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMiss()Z
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method isValid()Z
    .locals 4

    .prologue
    .line 407
    iget-wide v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModified:J

    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastAccessed:J

    .line 410
    const/4 v0, 0x1

    .line 415
    :goto_0
    return v0

    .line 413
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    # getter for: Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lorg/eclipse/jetty/server/ResourceCache;->access$300(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 414
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ResourceCache$Content;->invalidate()V

    .line 415
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 507
    const-string v0, "%s %s %d %s %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_contentType:Lorg/eclipse/jetty/io/Buffer;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModifiedBytes:Lorg/eclipse/jetty/io/Buffer;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
