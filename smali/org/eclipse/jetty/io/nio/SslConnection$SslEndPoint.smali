.class public Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;
.super Ljava/lang/Object;
.source "SslConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/io/AsyncEndPoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/nio/SslConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SslEndPoint"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/io/nio/SslConnection;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/nio/SslConnection;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncDispatch()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->asyncDispatch()V

    .line 724
    return-void
.end method

.method public blockReadable(J)Z
    .locals 8
    .param p1, "millisecs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 688
    .local v2, "now":J
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_1

    add-long v0, v2, p1

    .line 690
    .local v0, "end":J
    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 692
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # invokes: Lorg/eclipse/jetty/io/nio/SslConnection;->process(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z
    invoke-static {v4, v7, v7}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$900(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 698
    :cond_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 688
    .end local v0    # "end":J
    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 694
    .restart local v0    # "end":J
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;
    invoke-static {v4}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1000(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v4

    sub-long v5, v0, v2

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/io/EndPoint;->blockReadable(J)Z

    .line 695
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    .line 698
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public blockWritable(J)Z
    .locals 1
    .param p1, "millisecs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->blockWritable(J)Z

    move-result v0

    return v0
.end method

.method public cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 1
    .param p1, "task"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .prologue
    .line 753
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 754
    return-void
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "{} ssl endp.close"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;
    invoke-static {v4}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$200(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLSession;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$800(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 653
    return-void
.end method

.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 4
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 658
    .local v1, "size":I
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    const/4 v3, 0x0

    # invokes: Lorg/eclipse/jetty/io/nio/SslConnection;->process(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z
    invoke-static {v2, p1, v3}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$900(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    .line 660
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    sub-int v0, v2, v1

    .line 662
    .local v0, "filled":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isInputShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    const/4 v0, -0x1

    .line 664
    .end local v0    # "filled":I
    :cond_0
    return v0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 3
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 670
    .local v0, "size":I
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    const/4 v2, 0x0

    # invokes: Lorg/eclipse/jetty/io/nio/SslConnection;->process(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z
    invoke-static {v1, v2, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$900(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    .line 671
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    sub-int v1, v0, v1

    return v1
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I
    .locals 1
    .param p1, "header"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .param p3, "trailer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 682
    :goto_0
    return v0

    .line 678
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    goto :goto_0

    .line 680
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 681
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    goto :goto_0

    .line 682
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 718
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # invokes: Lorg/eclipse/jetty/io/nio/SslConnection;->process(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z
    invoke-static {v0, v1, v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$900(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    .line 719
    return-void
.end method

.method public getConnection()Lorg/eclipse/jetty/io/Connection;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1500(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object v0

    return-object v0
.end method

.method public getEndpoint()Lorg/eclipse/jetty/io/AsyncEndPoint;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getSslEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$000(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    return-object v0
.end method

.method public hasProgressed()Z
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_progressed:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1400(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 798
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckForIdle()Z
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isCheckForIdle()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 2

    .prologue
    .line 641
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    monitor-enter v1

    .line 643
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$500(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$700(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$700(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1200(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 2

    .prologue
    .line 626
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    monitor-enter v1

    .line 628
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_oshut:Z
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$400(Lorg/eclipse/jetty/io/nio/SslConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$000(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isWritable()Z

    move-result v0

    return v0
.end method

.method public onIdleExpired(J)V
    .locals 1
    .param p1, "idleForMs"    # J

    .prologue
    .line 733
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/AsyncEndPoint;->onIdleExpired(J)V

    .line 734
    return-void
.end method

.method public scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V
    .locals 1
    .param p1, "task"    # Lorg/eclipse/jetty/util/thread/Timeout$Task;
    .param p2, "timeoutMs"    # J

    .prologue
    .line 748
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jetty/io/AsyncEndPoint;->scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 749
    return-void
.end method

.method public scheduleWrite()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->scheduleWrite()V

    .line 729
    return-void
.end method

.method public setCheckForIdle(Z)V
    .locals 1
    .param p1, "check"    # Z

    .prologue
    .line 738
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V

    .line 739
    return-void
.end method

.method public setConnection(Lorg/eclipse/jetty/io/Connection;)V
    .locals 1
    .param p1, "connection"    # Lorg/eclipse/jetty/io/Connection;

    .prologue
    .line 818
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    check-cast p1, Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .end local p1    # "connection":Lorg/eclipse/jetty/io/Connection;
    # setter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;
    invoke-static {v0, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1502(Lorg/eclipse/jetty/io/nio/SslConnection;Lorg/eclipse/jetty/io/nio/AsyncConnection;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    .line 819
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 1
    .param p1, "timeMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_aEndp:Lorg/eclipse/jetty/io/AsyncEndPoint;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$100(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setMaxIdleTime(I)V

    .line 809
    return-void
.end method

.method public shutdownInput()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "{} ssl endp.ishut!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;
    invoke-static {v4}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$200(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLSession;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    return-void
.end method

.method public shutdownOutput()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    monitor-enter v1

    .line 617
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_logger:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$300(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v2, "{} ssl endp.oshut {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_session:Ljavax/net/ssl/SSLSession;
    invoke-static {v5}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$200(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLSession;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$000(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 619
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    const/4 v2, 0x1

    # setter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_oshut:Z
    invoke-static {v0, v2}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$402(Lorg/eclipse/jetty/io/nio/SslConnection;Z)Z

    .line 620
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->flush()V

    .line 622
    return-void

    .line 620
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v4, -0x1

    .line 826
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_inbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;
    invoke-static {v6}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$700(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v1

    .line 827
    .local v1, "inbound":Lorg/eclipse/jetty/io/Buffer;
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_outbound:Lorg/eclipse/jetty/io/nio/NIOBuffer;
    invoke-static {v6}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v3

    .line 828
    .local v3, "outbound":Lorg/eclipse/jetty/io/Buffer;
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_unwrapBuf:Lorg/eclipse/jetty/io/nio/NIOBuffer;
    invoke-static {v6}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$600(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/NIOBuffer;

    move-result-object v5

    .line 829
    .local v5, "unwrap":Lorg/eclipse/jetty/io/Buffer;
    if-nez v1, :cond_0

    move v0, v4

    .line 830
    .local v0, "i":I
    :goto_0
    if-nez v3, :cond_1

    move v2, v4

    .line 831
    .local v2, "o":I
    :goto_1
    if-nez v5, :cond_2

    .line 832
    .local v4, "u":I
    :goto_2
    const-string v6, "SSL %s i/o/u=%d/%d/%d ishut=%b oshut=%b {%s}"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_engine:Ljavax/net/ssl/SSLEngine;
    invoke-static {v9}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$000(Lorg/eclipse/jetty/io/nio/SslConnection;)Ljavax/net/ssl/SSLEngine;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_ishut:Z
    invoke-static {v9}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1700(Lorg/eclipse/jetty/io/nio/SslConnection;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_oshut:Z
    invoke-static {v9}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$400(Lorg/eclipse/jetty/io/nio/SslConnection;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    iget-object v9, p0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->this$0:Lorg/eclipse/jetty/io/nio/SslConnection;

    # getter for: Lorg/eclipse/jetty/io/nio/SslConnection;->_connection:Lorg/eclipse/jetty/io/nio/AsyncConnection;
    invoke-static {v9}, Lorg/eclipse/jetty/io/nio/SslConnection;->access$1500(Lorg/eclipse/jetty/io/nio/SslConnection;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 829
    .end local v0    # "i":I
    .end local v2    # "o":I
    .end local v4    # "u":I
    :cond_0
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    goto :goto_0

    .line 830
    .restart local v0    # "i":I
    :cond_1
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    goto :goto_1

    .line 831
    .restart local v2    # "o":I
    :cond_2
    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    goto :goto_2
.end method
