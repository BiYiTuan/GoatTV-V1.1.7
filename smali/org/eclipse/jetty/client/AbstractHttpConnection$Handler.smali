.class Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;
.super Lorg/eclipse/jetty/http/HttpParser$EventHandler;
.source "AbstractHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/AbstractHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/AbstractHttpConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .param p2, "x1"    # Lorg/eclipse/jetty/client/AbstractHttpConnection$1;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;-><init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V

    return-void
.end method


# virtual methods
.method public content(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .param p1, "ref"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 329
    .local v0, "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseContent(Lorg/eclipse/jetty/io/Buffer;)V

    .line 331
    :cond_0
    return-void
.end method

.method public earlyEOF()V
    .locals 4

    .prologue
    .line 344
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 345
    .local v0, "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jetty/io/EofException;

    const-string v3, "early EOF"

    invoke-direct {v2, v3}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 353
    :cond_0
    return-void
.end method

.method public headerComplete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 321
    .local v0, "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    if-eqz v0, :cond_0

    .line 322
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 323
    :cond_0
    return-void
.end method

.method public messageComplete(J)V
    .locals 2
    .param p1, "contextLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 337
    .local v0, "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    if-eqz v0, :cond_0

    .line 338
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 339
    :cond_0
    return-void
.end method

.method public parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 3
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 307
    .local v0, "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    if-eqz v0, :cond_1

    .line 309
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 311
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v2, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_connectionHeader:Lorg/eclipse/jetty/io/Buffer;

    .line 313
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 315
    :cond_1
    return-void
.end method

.method public startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0
    .param p1, "method"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "url"    # Lorg/eclipse/jetty/io/Buffer;
    .param p3, "version"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    return-void
.end method

.method public startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 4
    .param p1, "version"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "status"    # I
    .param p3, "reason"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v0, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_exchange:Lorg/eclipse/jetty/client/HttpExchange;

    .line 274
    .local v0, "exchange":Lorg/eclipse/jetty/client/HttpExchange;
    if-nez v0, :cond_0

    .line 276
    # getter for: Lorg/eclipse/jetty/client/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    const-string v2, "No exchange for response"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    # getter for: Lorg/eclipse/jetty/client/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;
    invoke-static {v1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->access$300(Lorg/eclipse/jetty/client/AbstractHttpConnection;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 301
    :goto_0
    return-void

    .line 281
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 296
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    sget-object v2, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_http11:Z

    .line 297
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iput p2, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_status:I

    .line 298
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpEventListener;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 299
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    goto :goto_0

    .line 286
    :sswitch_0
    new-instance v1, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;

    iget-object v2, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jetty/client/AbstractHttpConnection$NonFinalResponseListener;-><init>(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    goto :goto_1

    .line 291
    :sswitch_1
    const-string v1, "CONNECT"

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    iget-object v1, p0, Lorg/eclipse/jetty/client/AbstractHttpConnection$Handler;->this$0:Lorg/eclipse/jetty/client/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/http/HttpParser;->setHeadResponse(Z)V

    goto :goto_1

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x66 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
