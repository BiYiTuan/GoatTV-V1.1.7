.class Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;
.super Ljava/lang/Object;
.source "AbstractHttpConnection.java"

# interfaces
.implements Lorg/eclipse/jetty/client/HttpEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/AbstractHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonFinalResponseListener"
.end annotation


# instance fields
.field final _exchange:Lorg/eclipse/jetty/client/HttpExchange;

.field final _next:Lorg/eclipse/jetty/client/HttpEventListener;

.field final synthetic this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 1
    .param p2, "exchange"    # Lorg/eclipse/jetty/client/HttpExchange;

    .prologue
    .line 498
    iput-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 500
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_next:Lorg/eclipse/jetty/client/HttpEventListener;

    .line 501
    return-void
.end method


# virtual methods
.method public onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 546
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_next:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 547
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_next:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onConnectionFailed(Ljava/lang/Throwable;)V

    .line 548
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 553
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_next:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 554
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_next:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 555
    return-void
.end method

.method public onExpire()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_next:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 561
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_next:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onExpire()V

    .line 562
    return-void
.end method

.method public onRequestCommitted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    return-void
.end method

.method public onRequestComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    return-void
.end method

.method public onResponseComplete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_next:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 539
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 540
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->reset()V

    .line 541
    return-void
.end method

.method public onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0
    .param p1, "content"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
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
    .line 521
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_next:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 522
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
    .line 527
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_next:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseHeaderComplete()V

    .line 528
    return-void
.end method

.method public onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 0
    .param p1, "version"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "status"    # I
    .param p3, "reason"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    return-void
.end method

.method public onRetry()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_next:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 568
    iget-object v0, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;->_next:Lorg/eclipse/jetty/client/HttpEventListener;

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onRetry()V

    .line 569
    return-void
.end method
