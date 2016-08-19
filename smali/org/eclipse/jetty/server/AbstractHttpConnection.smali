.class public abstract Lorg/eclipse/jetty/server/AbstractHttpConnection;
.super Lorg/eclipse/jetty/io/AbstractConnection;
.source "AbstractHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;,
        Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;,
        Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final UNKNOWN:I = -0x2

.field private static final __currentConnection:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/eclipse/jetty/server/AbstractHttpConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _associatedObject:Ljava/lang/Object;

.field protected final _connector:Lorg/eclipse/jetty/server/Connector;

.field private _delayedHandling:Z

.field private _expect:Z

.field private _expect100Continue:Z

.field private _expect102Processing:Z

.field protected final _generator:Lorg/eclipse/jetty/http/Generator;

.field private _head:Z

.field private _host:Z

.field protected volatile _in:Ljavax/servlet/ServletInputStream;

.field _include:I

.field protected volatile _out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

.field protected final _parser:Lorg/eclipse/jetty/http/Parser;

.field protected volatile _printWriter:Ljava/io/PrintWriter;

.field protected final _request:Lorg/eclipse/jetty/server/Request;

.field protected final _requestFields:Lorg/eclipse/jetty/http/HttpFields;

.field private _requests:I

.field protected final _response:Lorg/eclipse/jetty/server/Response;

.field protected final _responseFields:Lorg/eclipse/jetty/http/HttpFields;

.field protected final _server:Lorg/eclipse/jetty/server/Server;

.field protected final _uri:Lorg/eclipse/jetty/http/HttpURI;

.field private _version:I

.field protected volatile _writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-class v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 94
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->__currentConnection:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V
    .locals 4
    .param p1, "connector"    # Lorg/eclipse/jetty/server/Connector;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;)V

    .line 118
    const/4 v1, -0x2

    iput v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    .line 120
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z

    .line 121
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    .line 122
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z

    .line 123
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z

    .line 124
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_host:Z

    .line 125
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    .line 146
    const-string v1, "UTF-8"

    sget-object v2, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v1}, Lorg/eclipse/jetty/http/HttpURI;-><init>()V

    :goto_0
    iput-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    .line 147
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    check-cast v0, Lorg/eclipse/jetty/http/HttpBuffers;

    .line 149
    .local v0, "ab":Lorg/eclipse/jetty/http/HttpBuffers;
    invoke-interface {v0}, Lorg/eclipse/jetty/http/HttpBuffers;->getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;Lorg/eclipse/jetty/server/AbstractHttpConnection$1;)V

    invoke-virtual {p0, v1, p2, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->newHttpParser(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)Lorg/eclipse/jetty/http/HttpParser;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    .line 150
    new-instance v1, Lorg/eclipse/jetty/http/HttpFields;

    invoke-direct {v1}, Lorg/eclipse/jetty/http/HttpFields;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    .line 151
    new-instance v1, Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {p3}, Lorg/eclipse/jetty/server/Server;->getMaxCookieVersion()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/http/HttpFields;-><init>(I)V

    iput-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    .line 152
    new-instance v1, Lorg/eclipse/jetty/server/Request;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/server/Request;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    .line 153
    new-instance v1, Lorg/eclipse/jetty/server/Response;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/server/Response;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    .line 154
    new-instance v1, Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/HttpBuffers;->getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jetty/http/HttpGenerator;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    iput-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    .line 155
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-virtual {p3}, Lorg/eclipse/jetty/server/Server;->getSendServerVersion()Z

    move-result v2

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/http/Generator;->setSendServerVersion(Z)V

    .line 156
    iput-object p3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    .line 157
    return-void

    .line 146
    .end local v0    # "ab":Lorg/eclipse/jetty/http/HttpBuffers;
    :cond_0
    new-instance v1, Lorg/eclipse/jetty/http/EncodedHttpURI;

    sget-object v2, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/http/EncodedHttpURI;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;Lorg/eclipse/jetty/http/Parser;Lorg/eclipse/jetty/http/Generator;Lorg/eclipse/jetty/server/Request;)V
    .locals 2
    .param p1, "connector"    # Lorg/eclipse/jetty/server/Connector;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "server"    # Lorg/eclipse/jetty/server/Server;
    .param p4, "parser"    # Lorg/eclipse/jetty/http/Parser;
    .param p5, "generator"    # Lorg/eclipse/jetty/http/Generator;
    .param p6, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;)V

    .line 118
    const/4 v0, -0x2

    iput v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    .line 120
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z

    .line 121
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    .line 122
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z

    .line 123
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z

    .line 124
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_host:Z

    .line 125
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    .line 165
    sget-object v0, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpURI;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    .line 166
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    .line 167
    iput-object p4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    .line 168
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpFields;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    .line 169
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {p3}, Lorg/eclipse/jetty/server/Server;->getMaxCookieVersion()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    .line 170
    iput-object p6, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    .line 171
    new-instance v0, Lorg/eclipse/jetty/server/Response;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/Response;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    .line 172
    iput-object p5, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    .line 173
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-virtual {p3}, Lorg/eclipse/jetty/server/Server;->getSendServerVersion()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Generator;->setSendServerVersion(Z)V

    .line 174
    iput-object p3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    .line 175
    return-void

    .line 165
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/http/EncodedHttpURI;

    sget-object v1, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/http/EncodedHttpURI;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/server/AbstractHttpConnection;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_host:Z

    return v0
.end method

.method static synthetic access$102(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_host:Z

    return p1
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/AbstractHttpConnection;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z

    return v0
.end method

.method static synthetic access$202(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z

    return p1
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/AbstractHttpConnection;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    return v0
.end method

.method static synthetic access$302(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    return p1
.end method

.method static synthetic access$402(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z

    return p1
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/server/AbstractHttpConnection;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    return v0
.end method

.method static synthetic access$502(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    return p1
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/server/AbstractHttpConnection;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z

    return v0
.end method

.method static synthetic access$602(Lorg/eclipse/jetty/server/AbstractHttpConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z

    return p1
.end method

.method static synthetic access$700(Lorg/eclipse/jetty/server/AbstractHttpConnection;)I
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 89
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    return v0
.end method

.method static synthetic access$702(Lorg/eclipse/jetty/server/AbstractHttpConnection;I)I
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    return p1
.end method

.method static synthetic access$800()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$908(Lorg/eclipse/jetty/server/AbstractHttpConnection;)I
    .locals 2
    .param p0, "x0"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 89
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requests:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requests:I

    return v0
.end method

.method public static getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->__currentConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    return-object v0
.end method

.method protected static setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1
    .param p0, "connection"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 136
    sget-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->__currentConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 137
    return-void
.end method


# virtual methods
.method public commitResponse(Z)V
    .locals 7
    .param p1, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x1f4

    const/4 v5, 0x0

    .line 548
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v2}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 550
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Response;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    .line 555
    :try_start_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_0

    .line 556
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 557
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-interface {v2, v3, p1}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 576
    :cond_1
    if-eqz p1, :cond_2

    .line 577
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v2}, Lorg/eclipse/jetty/http/Generator;->complete()V

    .line 578
    :cond_2
    return-void

    .line 559
    :catch_0
    move-exception v1

    .line 561
    .local v1, "io":Ljava/io/IOException;
    throw v1

    .line 563
    .end local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "header full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Response;->reset()V

    .line 568
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v2}, Lorg/eclipse/jetty/http/Generator;->reset()V

    .line 569
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/4 v3, 0x0

    invoke-interface {v2, v6, v3}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    .line 570
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 571
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v2}, Lorg/eclipse/jetty/http/Generator;->complete()V

    .line 572
    new-instance v2, Lorg/eclipse/jetty/http/HttpException;

    invoke-direct {v2, v6}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v2
.end method

.method public completeResponse()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x1f4

    const/4 v5, 0x1

    .line 583
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v2}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 585
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Response;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    .line 588
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 608
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v2}, Lorg/eclipse/jetty/http/Generator;->complete()V

    .line 609
    return-void

    .line 590
    :catch_0
    move-exception v1

    .line 592
    .local v1, "io":Ljava/io/IOException;
    throw v1

    .line 594
    .end local v1    # "io":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "header full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    sget-object v2, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 599
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Response;->reset()V

    .line 600
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v2}, Lorg/eclipse/jetty/http/Generator;->reset()V

    .line 601
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/4 v3, 0x0

    invoke-interface {v2, v6, v3}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    .line 602
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-interface {v2, v3, v5}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 603
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v2}, Lorg/eclipse/jetty/http/Generator;->complete()V

    .line 604
    new-instance v2, Lorg/eclipse/jetty/http/HttpException;

    invoke-direct {v2, v6}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v2
.end method

.method public flushResponse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    .line 617
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->flushBuffer()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    return-void

    .line 619
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Ljava/io/IOException;
    instance-of v1, v0, Lorg/eclipse/jetty/io/EofException;

    if-eqz v1, :cond_0

    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    throw v0

    .restart local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getAssociatedObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_associatedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getConnector()Lorg/eclipse/jetty/server/Connector;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    return-object v0
.end method

.method public getGenerator()Lorg/eclipse/jetty/http/Generator;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    return-object v0
.end method

.method public getInputStream()Ljavax/servlet/ServletInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Committed before 100 Continues"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    check-cast v0, Lorg/eclipse/jetty/http/HttpGenerator;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpGenerator;->send1xx(I)V

    .line 328
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    .line 331
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_in:Ljavax/servlet/ServletInputStream;

    if-nez v0, :cond_4

    .line 332
    new-instance v0, Lorg/eclipse/jetty/server/HttpInput;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/HttpInput;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_in:Ljavax/servlet/ServletInputStream;

    .line 333
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_in:Ljavax/servlet/ServletInputStream;

    return-object v0
.end method

.method public getMaxIdleTime()I
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->isLowResources()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getMaxIdleTime()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 688
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getLowResourceMaxIdleTime()I

    move-result v0

    .line 691
    :goto_0
    return v0

    .line 689
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v0

    if-lez v0, :cond_1

    .line 690
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v0

    goto :goto_0

    .line 691
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getMaxIdleTime()I

    move-result v0

    goto :goto_0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    .line 344
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    return-object v0
.end method

.method public getParser()Lorg/eclipse/jetty/http/Parser;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    return-object v0
.end method

.method public getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    .line 355
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    .line 358
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->isUncheckedPrintWriter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    new-instance v0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_printWriter:Ljava/io/PrintWriter;

    .line 380
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;->setCharacterEncoding(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_printWriter:Ljava/io/PrintWriter;

    return-object v0

    .line 361
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$1;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection$1;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_printWriter:Ljava/io/PrintWriter;

    goto :goto_0
.end method

.method public getRequest()Lorg/eclipse/jetty/server/Request;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    return-object v0
.end method

.method public getRequestFields()Lorg/eclipse/jetty/http/HttpFields;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    return-object v0
.end method

.method public getRequests()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requests:I

    return v0
.end method

.method public getResolveNames()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getResolveNames()Z

    move-result v0

    return v0
.end method

.method public getResponse()Lorg/eclipse/jetty/server/Response;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    return-object v0
.end method

.method public getResponseFields()Lorg/eclipse/jetty/http/HttpFields;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    return-object v0
.end method

.method public getServer()Lorg/eclipse/jetty/server/Server;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    return-object v0
.end method

.method public abstract handle()Lorg/eclipse/jetty/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected handleRequest()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x194

    const/16 v9, 0x190

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 407
    const/4 v1, 0x0

    .line 409
    .local v1, "error":Z
    const/4 v5, 0x0

    .line 412
    .local v5, "threadName":Ljava/lang/String;
    :try_start_0
    sget-object v8, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 414
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    .line 415
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 427
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    .line 428
    .local v4, "server":Lorg/eclipse/jetty/server/Server;
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->handling()Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_1

    move v2, v6

    .line 429
    .local v2, "handling":Z
    :goto_0
    if-eqz v2, :cond_b

    .line 431
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    const/4 v3, 0x0

    .line 436
    .local v3, "info":Ljava/lang/String;
    :try_start_1
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpURI;->getPort()I

    .line 437
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v8}, Lorg/eclipse/jetty/http/HttpURI;->getDecodedPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 438
    if-nez v3, :cond_2

    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v10, "CONNECT"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 439
    new-instance v8, Lorg/eclipse/jetty/http/HttpException;

    const/16 v10, 0x190

    invoke-direct {v8, v10}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v8
    :try_end_1
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 457
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Lorg/eclipse/jetty/continuation/ContinuationThrowable;
    :try_start_2
    sget-object v8, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 489
    :try_start_3
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v8

    if-nez v8, :cond_13

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_13

    move v2, v6

    .end local v0    # "e":Lorg/eclipse/jetty/continuation/ContinuationThrowable;
    :goto_1
    goto :goto_0

    .end local v2    # "handling":Z
    .end local v3    # "info":Ljava/lang/String;
    :cond_1
    move v2, v7

    .line 428
    goto :goto_0

    .line 440
    .restart local v2    # "handling":Z
    .restart local v3    # "info":Ljava/lang/String;
    :cond_2
    :try_start_4
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v8, v3}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 442
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    if-eqz v8, :cond_3

    .line 443
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->reopen()V

    .line 445
    :cond_3
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 447
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    sget-object v10, Lorg/eclipse/jetty/server/DispatcherType;->REQUEST:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {v8, v10}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Lorg/eclipse/jetty/server/DispatcherType;)V

    .line 448
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    iget-object v10, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v11, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-interface {v8, v10, v11}, Lorg/eclipse/jetty/server/Connector;->customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    .line 449
    invoke-virtual {v4, p0}, Lorg/eclipse/jetty/server/Server;->handle(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    :try_end_4
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 489
    :goto_2
    :try_start_5
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v8

    if-nez v8, :cond_18

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_18

    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_18

    move v2, v6

    goto :goto_1

    .line 453
    :cond_4
    :try_start_6
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    sget-object v10, Lorg/eclipse/jetty/server/DispatcherType;->ASYNC:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {v8, v10}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Lorg/eclipse/jetty/server/DispatcherType;)V

    .line 454
    invoke-virtual {v4, p0}, Lorg/eclipse/jetty/server/Server;->handleAsync(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    :try_end_6
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 461
    :catch_1
    move-exception v0

    .line 463
    .local v0, "e":Lorg/eclipse/jetty/io/EofException;
    :try_start_7
    sget-object v8, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 464
    const/4 v1, 0x1

    .line 465
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 489
    :try_start_8
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v8

    if-nez v8, :cond_14

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v8, :cond_14

    move v2, v6

    goto :goto_1

    .line 467
    .end local v0    # "e":Lorg/eclipse/jetty/io/EofException;
    :catch_2
    move-exception v0

    .line 469
    .local v0, "e":Lorg/eclipse/jetty/io/RuntimeIOException;
    :try_start_9
    sget-object v8, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 470
    const/4 v1, 0x1

    .line 471
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 489
    :try_start_a
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v8

    if-nez v8, :cond_15

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v8, :cond_15

    move v2, v6

    goto/16 :goto_1

    .line 473
    .end local v0    # "e":Lorg/eclipse/jetty/io/RuntimeIOException;
    :catch_3
    move-exception v0

    .line 475
    .local v0, "e":Lorg/eclipse/jetty/http/HttpException;
    :try_start_b
    sget-object v8, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 476
    const/4 v1, 0x1

    .line 477
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 478
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpException;->getStatus()I

    move-result v10

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpException;->getReason()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lorg/eclipse/jetty/server/Response;->sendError(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 489
    :try_start_c
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v8, :cond_16

    move v2, v6

    goto/16 :goto_1

    .line 480
    .end local v0    # "e":Lorg/eclipse/jetty/http/HttpException;
    :catch_4
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_d
    sget-object v8, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    iget-object v10, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 483
    const/4 v1, 0x1

    .line 484
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 485
    iget-object v10, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    if-nez v3, :cond_5

    move v8, v9

    :goto_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-interface {v10, v8, v11, v12, v13}, Lorg/eclipse/jetty/http/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 489
    :try_start_e
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v8

    if-nez v8, :cond_17

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    if-eqz v8, :cond_17

    move v2, v6

    goto/16 :goto_1

    .line 485
    :cond_5
    const/16 v8, 0x1f4

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    move v2, v7

    .line 489
    :goto_4
    throw v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 495
    .end local v2    # "handling":Z
    .end local v3    # "info":Ljava/lang/String;
    .end local v4    # "server":Lorg/eclipse/jetty/server/Server;
    :catchall_0
    move-exception v8

    if-eqz v5, :cond_7

    .line 496
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 498
    :cond_7
    iget-object v9, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v9, v9, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/AsyncContinuation;->isUncompleted()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 500
    iget-object v9, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v9, v9, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/AsyncContinuation;->doComplete()V

    .line 502
    iget-boolean v9, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    if-eqz v9, :cond_8

    .line 504
    sget-object v9, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "100 continues not sent"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    iput-boolean v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    .line 510
    iget-object v9, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v9

    if-nez v9, :cond_8

    .line 511
    iget-object v9, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v9, v7}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 514
    :cond_8
    iget-object v9, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 516
    if-eqz v1, :cond_11

    .line 518
    iget-object v9, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 519
    iget-object v9, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v9, v7}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 520
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v7}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v7

    if-nez v7, :cond_9

    .line 521
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Response;->complete()V

    .line 537
    :cond_9
    :goto_5
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v7, v6}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 495
    :cond_a
    throw v8

    .restart local v2    # "handling":Z
    .restart local v4    # "server":Lorg/eclipse/jetty/server/Server;
    :cond_b
    if-eqz v5, :cond_c

    .line 496
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 498
    :cond_c
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->isUncompleted()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 500
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v8, v8, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AsyncContinuation;->doComplete()V

    .line 502
    iget-boolean v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    if-eqz v8, :cond_d

    .line 504
    sget-object v8, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v9, "100 continues not sent"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    iput-boolean v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    .line 510
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v8

    if-nez v8, :cond_d

    .line 511
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v8, v7}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 514
    :cond_d
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 516
    if-eqz v1, :cond_1a

    .line 518
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 519
    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v8, v7}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 520
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v7}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v7

    if-nez v7, :cond_e

    .line 521
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Response;->complete()V

    .line 537
    :cond_e
    :goto_6
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v7, v6}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 540
    :cond_f
    return-void

    .line 534
    .end local v2    # "handling":Z
    .end local v4    # "server":Lorg/eclipse/jetty/server/Server;
    :cond_10
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Response;->complete()V

    goto :goto_5

    .line 525
    :cond_11
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v7

    if-nez v7, :cond_12

    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v7

    if-nez v7, :cond_12

    .line 526
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v7, v14}, Lorg/eclipse/jetty/server/Response;->sendError(I)V

    .line 527
    :cond_12
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Response;->complete()V

    .line 528
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v7}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 529
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    iget-object v9, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7, v9}, Lorg/eclipse/jetty/server/Connector;->persist(Lorg/eclipse/jetty/io/EndPoint;)V

    goto/16 :goto_5

    .line 489
    .restart local v2    # "handling":Z
    .restart local v3    # "info":Ljava/lang/String;
    .restart local v4    # "server":Lorg/eclipse/jetty/server/Server;
    :catchall_1
    move-exception v8

    :try_start_f
    iget-object v9, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v9, v9, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v9, :cond_6

    move v2, v6

    goto/16 :goto_4

    .local v0, "e":Lorg/eclipse/jetty/continuation/ContinuationThrowable;
    :cond_13
    move v2, v7

    goto/16 :goto_1

    .local v0, "e":Lorg/eclipse/jetty/io/EofException;
    :cond_14
    move v2, v7

    goto/16 :goto_1

    .local v0, "e":Lorg/eclipse/jetty/io/RuntimeIOException;
    :cond_15
    move v2, v7

    goto/16 :goto_1

    .local v0, "e":Lorg/eclipse/jetty/http/HttpException;
    :cond_16
    move v2, v7

    goto/16 :goto_1

    .local v0, "e":Ljava/lang/Throwable;
    :cond_17
    move v2, v7

    goto/16 :goto_1

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_18
    move v2, v7

    goto/16 :goto_1

    .line 534
    .end local v3    # "info":Ljava/lang/String;
    :cond_19
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Response;->complete()V

    goto :goto_6

    .line 525
    :cond_1a
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v7

    if-nez v7, :cond_1b

    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v7

    if-nez v7, :cond_1b

    .line 526
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v7, v14}, Lorg/eclipse/jetty/server/Response;->sendError(I)V

    .line 527
    :cond_1b
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/Response;->complete()V

    .line 528
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v7}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 529
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    iget-object v8, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v7, v8}, Lorg/eclipse/jetty/server/Connector;->persist(Lorg/eclipse/jetty/io/EndPoint;)V

    goto/16 :goto_6
.end method

.method public include()V
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_include:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_include:I

    .line 641
    return-void
.end method

.method public included()V
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_include:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_include:I

    .line 647
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->reopen()V

    .line 649
    :cond_0
    return-void
.end method

.method public isConfidential(Lorg/eclipse/jetty/server/Request;)Z
    .locals 1
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    .line 258
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/Connector;->isConfidential(Lorg/eclipse/jetty/server/Request;)Z

    move-result v0

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpecting100Continues()Z
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    return v0
.end method

.method public isExpecting102Processing()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncluding()Z
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_include:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIntegral(Lorg/eclipse/jetty/server/Request;)Z
    .locals 1
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    .line 272
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/Connector;->isIntegral(Lorg/eclipse/jetty/server/Request;)Z

    move-result v0

    .line 274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponseCommitted()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v0

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v0

    return v0
.end method

.method protected newHttpParser(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)Lorg/eclipse/jetty/http/HttpParser;
    .locals 1
    .param p1, "requestBuffers"    # Lorg/eclipse/jetty/io/Buffers;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "requestHandler"    # Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .prologue
    .line 179
    new-instance v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpParser;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V

    return-object v0
.end method

.method public onClose()V
    .locals 4

    .prologue
    .line 669
    sget-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "closed {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->reset()V

    .line 394
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->returnBuffers()V

    .line 395
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields;->clear()V

    .line 396
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->recycle()V

    .line 397
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->reset()V

    .line 398
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->returnBuffers()V

    .line 399
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields;->clear()V

    .line 400
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->recycle()V

    .line 401
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->clear()V

    .line 402
    return-void
.end method

.method public setAssociatedObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "associatedObject"    # Ljava/lang/Object;

    .prologue
    .line 221
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_associatedObject:Ljava/lang/Object;

    .line 222
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 697
    const-string v0, "%s,g=%s,p=%s,r=%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Lorg/eclipse/jetty/io/AbstractConnection;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requests:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
