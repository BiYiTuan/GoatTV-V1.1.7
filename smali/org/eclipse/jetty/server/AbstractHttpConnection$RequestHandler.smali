.class Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;
.super Lorg/eclipse/jetty/http/HttpParser$EventHandler;
.source "AbstractHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/AbstractHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# instance fields
.field private _charset:Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;Lorg/eclipse/jetty/server/AbstractHttpConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .param p2, "x1"    # Lorg/eclipse/jetty/server/AbstractHttpConnection$1;

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

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
    .line 922
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # getter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z
    invoke-static {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$500(Lorg/eclipse/jetty/server/AbstractHttpConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v1, 0x0

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z
    invoke-static {v0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$502(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z

    .line 925
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->handleRequest()V

    .line 927
    :cond_0
    return-void
.end method

.method public headerComplete()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 847
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # operator++ for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requests:I
    invoke-static {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$908(Lorg/eclipse/jetty/server/AbstractHttpConnection;)I

    .line 848
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # getter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I
    invoke-static {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$700(Lorg/eclipse/jetty/server/AbstractHttpConnection;)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Generator;->setVersion(I)V

    .line 849
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # getter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I
    invoke-static {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$700(Lorg/eclipse/jetty/server/AbstractHttpConnection;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 905
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->_charset:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 906
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->_charset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Request;->setCharacterEncodingUnchecked(Ljava/lang/String;)V

    .line 909
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->isChunking()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # getter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z
    invoke-static {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$300(Lorg/eclipse/jetty/server/AbstractHttpConnection;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 910
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->handleRequest()V

    .line 913
    :goto_1
    return-void

    .line 854
    :pswitch_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # getter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z
    invoke-static {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$600(Lorg/eclipse/jetty/server/AbstractHttpConnection;)Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Generator;->setHead(Z)V

    .line 855
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 857
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaderValues;->KEEP_ALIVE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 858
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 866
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getSendDateHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getTimeStampBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Generator;->setDate(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    .line 860
    :cond_5
    const-string v0, "CONNECT"

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 862
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 863
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/http/Parser;->setPersistent(Z)V

    goto :goto_2

    .line 871
    :pswitch_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # getter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z
    invoke-static {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$600(Lorg/eclipse/jetty/server/AbstractHttpConnection;)Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Generator;->setHead(Z)V

    .line 873
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_6

    .line 875
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaderValues;->CLOSE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 876
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0, v3}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 878
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getSendDateHeader()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 879
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getTimeStampBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Generator;->setDate(Lorg/eclipse/jetty/io/Buffer;)V

    .line 881
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # getter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_host:Z
    invoke-static {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$100(Lorg/eclipse/jetty/server/AbstractHttpConnection;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 883
    # getter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$800()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "!host {}"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/16 v1, 0x190

    invoke-interface {v0, v1, v5}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    .line 885
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaderValues;->CLOSE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 886
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-interface {v0, v1, v4}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 887
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->complete()V

    goto/16 :goto_1

    .line 891
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # getter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z
    invoke-static {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$200(Lorg/eclipse/jetty/server/AbstractHttpConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    # getter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$800()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "!expectation {}"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 894
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/16 v1, 0x1a1

    invoke-interface {v0, v1, v5}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    .line 895
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaderValues;->CLOSE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 896
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-interface {v0, v1, v4}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 897
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->complete()V

    goto/16 :goto_1

    .line 912
    :cond_9
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z
    invoke-static {v0, v4}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$502(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z

    goto/16 :goto_1

    .line 849
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public messageComplete(J)V
    .locals 2
    .param p1, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 938
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # getter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z
    invoke-static {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$500(Lorg/eclipse/jetty/server/AbstractHttpConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v1, 0x0

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z
    invoke-static {v0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$502(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z

    .line 941
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->handleRequest()V

    .line 943
    :cond_0
    return-void
.end method

.method public parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 7
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    const/4 v6, 0x1

    .line 782
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    .line 783
    .local v1, "ho":I
    sparse-switch v1, :sswitch_data_0

    .line 838
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v4, v4, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 839
    return-void

    .line 787
    :sswitch_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_host:Z
    invoke-static {v4, v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$102(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z

    goto :goto_0

    .line 791
    :sswitch_1
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v4, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 792
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v4, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 803
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 804
    .local v3, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-eqz v3, :cond_0

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 806
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/http/HttpHeaderValues;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 807
    .local v0, "cb":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-nez v0, :cond_1

    .line 808
    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z
    invoke-static {v4, v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$202(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z

    .line 804
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 795
    .end local v0    # "cb":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .end local v2    # "i":I
    .end local v3    # "values":[Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v5, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v5, v5, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    instance-of v5, v5, Lorg/eclipse/jetty/http/HttpGenerator;

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z
    invoke-static {v4, v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$302(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z

    goto :goto_0

    .line 799
    :pswitch_1
    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v5, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v5, v5, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    instance-of v5, v5, Lorg/eclipse/jetty/http/HttpGenerator;

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z
    invoke-static {v4, v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$402(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z

    goto :goto_0

    .line 811
    .restart local v0    # "cb":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "values":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 820
    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z
    invoke-static {v4, v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$202(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z

    goto :goto_2

    .line 814
    :pswitch_2
    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v5, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v5, v5, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    instance-of v5, v5, Lorg/eclipse/jetty/http/HttpGenerator;

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z
    invoke-static {v4, v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$302(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z

    goto :goto_2

    .line 817
    :pswitch_3
    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v5, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v5, v5, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    instance-of v5, v5, Lorg/eclipse/jetty/http/HttpGenerator;

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z
    invoke-static {v4, v5}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$402(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z

    goto :goto_2

    .line 829
    .end local v0    # "cb":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .end local v2    # "i":I
    .end local v3    # "values":[Ljava/lang/String;
    :sswitch_2
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v4, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 830
    goto/16 :goto_0

    .line 833
    :sswitch_3
    sget-object v4, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v4, p2}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 834
    invoke-static {p2}, Lorg/eclipse/jetty/http/MimeTypes;->getCharsetFromContentType(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->_charset:Ljava/lang/String;

    goto/16 :goto_0

    .line 783
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_3
        0x15 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1b -> :sswitch_0
        0x28 -> :sswitch_2
    .end sparse-switch

    .line 792
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 811
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 7
    .param p1, "method"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "uri"    # Lorg/eclipse/jetty/io/Buffer;
    .param p3, "version"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x190

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 719
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->asImmutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 721
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_host:Z
    invoke-static {v1, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$102(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z

    .line 722
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z
    invoke-static {v1, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$202(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z

    .line 723
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z
    invoke-static {v1, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$302(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z

    .line 724
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z
    invoke-static {v1, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$402(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z

    .line 725
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z
    invoke-static {v1, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$502(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z

    .line 726
    iput-object v5, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->_charset:Ljava/lang/String;

    .line 728
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 729
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/server/Request;->setTimeStamp(J)V

    .line 730
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/Request;->setMethod(Ljava/lang/String;)V

    .line 734
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v2, 0x0

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z
    invoke-static {v1, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$602(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z

    .line 735
    sget-object v1, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/io/BufferCache;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 747
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpURI;->parse([BII)V

    .line 750
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v2, v2, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/Request;->setUri(Lorg/eclipse/jetty/http/HttpURI;)V

    .line 752
    if-nez p3, :cond_1

    .line 754
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/Request;->setProtocol(Ljava/lang/String;)V

    .line 755
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/16 v2, 0x9

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I
    invoke-static {v1, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$702(Lorg/eclipse/jetty/server/AbstractHttpConnection;I)I

    .line 774
    :goto_1
    return-void

    .line 738
    :sswitch_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpURI;->parseConnect([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 767
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$800()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 770
    instance-of v1, v0, Lorg/eclipse/jetty/http/HttpException;

    if-eqz v1, :cond_4

    .line 771
    check-cast v0, Lorg/eclipse/jetty/http/HttpException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 742
    :sswitch_1
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v2, 0x1

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z
    invoke-static {v1, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$602(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z

    .line 743
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpURI;->parse([BII)V

    goto :goto_0

    .line 759
    :cond_1
    sget-object v1, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v1, p3}, Lorg/eclipse/jetty/io/BufferCache;->get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object p3

    .line 760
    if-nez p3, :cond_2

    .line 761
    new-instance v1, Lorg/eclipse/jetty/http/HttpException;

    const/16 v2, 0x190

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 762
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    sget-object v2, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v2, p3}, Lorg/eclipse/jetty/io/BufferCache;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I
    invoke-static {v1, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$702(Lorg/eclipse/jetty/server/AbstractHttpConnection;I)I

    .line 763
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    # getter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I
    invoke-static {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$700(Lorg/eclipse/jetty/server/AbstractHttpConnection;)I

    move-result v1

    if-gtz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/16 v2, 0xa

    # setter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I
    invoke-static {v1, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$702(Lorg/eclipse/jetty/server/AbstractHttpConnection;I)I

    .line 764
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v1, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/Request;->setProtocol(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 772
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v1, Lorg/eclipse/jetty/http/HttpException;

    invoke-direct {v1, v6, v5, v0}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 735
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 3
    .param p1, "version"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "status"    # I
    .param p3, "reason"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 955
    # getter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$800()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    # getter for: Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->access$800()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad request!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 957
    :cond_0
    return-void
.end method
