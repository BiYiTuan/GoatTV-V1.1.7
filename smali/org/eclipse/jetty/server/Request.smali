.class public Lorg/eclipse/jetty/server/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletRequest;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final _STREAM:I = 0x1

.field private static final __ASYNC_FWD:Ljava/lang/String; = "org.eclipse.asyncfwd"

.field private static final __NONE:I = 0x0

.field private static final __READER:I = 0x2

.field private static final __defaultLocale:Ljava/util/Collection;


# instance fields
.field protected final _async:Lorg/eclipse/jetty/server/AsyncContinuation;

.field private _asyncSupported:Z

.field private volatile _attributes:Lorg/eclipse/jetty/util/Attributes;

.field private _authentication:Lorg/eclipse/jetty/server/Authentication;

.field private _baseParameters:Lorg/eclipse/jetty/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _characterEncoding:Ljava/lang/String;

.field protected _connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

.field private _context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

.field private _contextPath:Ljava/lang/String;

.field private _cookies:Lorg/eclipse/jetty/server/CookieCutter;

.field private _cookiesExtracted:Z

.field private _dispatchTime:J

.field private _dispatcherType:Lorg/eclipse/jetty/server/DispatcherType;

.field private _dns:Z

.field private _endp:Lorg/eclipse/jetty/io/EndPoint;

.field private _handled:Z

.field private _inputState:I

.field private _method:Ljava/lang/String;

.field private _newContext:Z

.field private _parameters:Lorg/eclipse/jetty/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _paramsExtracted:Z

.field private _pathInfo:Ljava/lang/String;

.field private _port:I

.field private _protocol:Ljava/lang/String;

.field private _queryEncoding:Ljava/lang/String;

.field private _queryString:Ljava/lang/String;

.field private _reader:Ljava/io/BufferedReader;

.field private _readerEncoding:Ljava/lang/String;

.field private _remoteAddr:Ljava/lang/String;

.field private _remoteHost:Ljava/lang/String;

.field private _requestAttributeListeners:Ljava/lang/Object;

.field private _requestURI:Ljava/lang/String;

.field private _requestedSessionId:Ljava/lang/String;

.field private _requestedSessionIdFromCookie:Z

.field private _savedNewSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljavax/servlet/http/HttpSession;",
            ">;"
        }
    .end annotation
.end field

.field private _scheme:Ljava/lang/String;

.field private _scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

.field private _serverName:Ljava/lang/String;

.field private _servletPath:Ljava/lang/String;

.field private _session:Ljavax/servlet/http/HttpSession;

.field private _sessionManager:Lorg/eclipse/jetty/server/SessionManager;

.field private _timeStamp:J

.field private _timeStampBuffer:Lorg/eclipse/jetty/io/Buffer;

.field private _uri:Lorg/eclipse/jetty/http/HttpURI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const-class v0, Lorg/eclipse/jetty/server/Request;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 113
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/Request;->__defaultLocale:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    .line 135
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_cookiesExtracted:Z

    .line 137
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_dns:Z

    .line 139
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    .line 140
    iput v1, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    .line 146
    const-string v0, "HTTP/1.1"

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_protocol:Ljava/lang/String;

    .line 155
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    .line 158
    const-string v0, "http"

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scheme:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    .line 135
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_cookiesExtracted:Z

    .line 137
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_dns:Z

    .line 139
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    .line 140
    iput v1, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    .line 146
    const-string v0, "HTTP/1.1"

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_protocol:Ljava/lang/String;

    .line 155
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    .line 158
    const-string v0, "http"

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scheme:Ljava/lang/String;

    .line 178
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Request;->setConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 179
    return-void
.end method

.method public static getRequest(Ljavax/servlet/http/HttpServletRequest;)Lorg/eclipse/jetty/server/Request;
    .locals 1
    .param p0, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 119
    instance-of v0, p0, Lorg/eclipse/jetty/server/Request;

    if-eqz v0, :cond_0

    .line 120
    check-cast p0, Lorg/eclipse/jetty/server/Request;

    .line 122
    .end local p0    # "request":Ljavax/servlet/http/HttpServletRequest;
    :goto_0
    return-object p0

    .restart local p0    # "request":Ljavax/servlet/http/HttpServletRequest;
    :cond_0
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 184
    instance-of v0, p1, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    .line 186
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jetty/continuation/ContinuationListener;

    if-eqz v0, :cond_1

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 188
    :cond_1
    return-void
.end method

.method public extractParameters()V
    .locals 19

    .prologue
    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 197
    new-instance v16, Lorg/eclipse/jetty/util/MultiMap;

    const/16 v17, 0x10

    invoke-direct/range {v16 .. v17}, Lorg/eclipse/jetty/util/MultiMap;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    .line 199
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    .line 305
    :cond_1
    :goto_0
    return-void

    .line 206
    :cond_2
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    .line 211
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/http/HttpURI;->hasQuery()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_7

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lorg/eclipse/jetty/http/HttpURI;->decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 232
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "encoding":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/Request;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "content_type":Ljava/lang/String;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_5

    .line 236
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lorg/eclipse/jetty/http/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 238
    const-string v16, "application/x-www-form-urlencoded"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    move/from16 v16, v0

    if-nez v16, :cond_5

    const-string v16, "POST"

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    const-string v16, "PUT"

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 241
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/Request;->getContentLength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 242
    .local v2, "content_length":I
    if-eqz v2, :cond_5

    .line 246
    const/4 v11, -0x1

    .line 247
    .local v11, "maxFormContentSize":I
    const/4 v12, -0x1

    .line 249
    .local v12, "maxFormKeys":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getMaxFormContentSize()I

    move-result v11

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getMaxFormKeys()I

    move-result v12

    .line 263
    :goto_2
    if-le v2, v11, :cond_d

    if-lez v11, :cond_d

    .line 265
    new-instance v16, Ljava/lang/IllegalStateException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Form too large"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ">"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    :catch_0
    move-exception v4

    .line 274
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v16, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 275
    sget-object v16, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 283
    .end local v2    # "content_length":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v11    # "maxFormContentSize":I
    .end local v12    # "maxFormKeys":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v16, v0

    if-nez v16, :cond_10

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    goto/16 :goto_0

    .line 219
    .end local v3    # "content_type":Ljava/lang/String;
    .end local v5    # "encoding":Ljava/lang/String;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lorg/eclipse/jetty/http/HttpURI;->decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 221
    :catch_1
    move-exception v4

    .line 223
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_4
    sget-object v16, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 224
    sget-object v16, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 302
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    :cond_8
    throw v16

    .line 226
    .restart local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_9
    :try_start_5
    sget-object v16, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-interface/range {v16 .. v18}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 256
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "content_length":I
    .restart local v3    # "content_type":Ljava/lang/String;
    .restart local v5    # "encoding":Ljava/lang/String;
    .restart local v11    # "maxFormContentSize":I
    .restart local v12    # "maxFormKeys":I
    :cond_a
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jetty/server/Connector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v16

    const-string v17, "org.eclipse.jetty.server.Request.maxFormContentSize"

    invoke-virtual/range {v16 .. v17}, Lorg/eclipse/jetty/server/Server;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    .line 258
    .local v14, "size":Ljava/lang/Number;
    if-nez v14, :cond_b

    const v11, 0x30d40

    .line 259
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jetty/server/Connector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v16

    const-string v17, "org.eclipse.jetty.server.Request.maxFormKeys"

    invoke-virtual/range {v16 .. v17}, Lorg/eclipse/jetty/server/Server;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    .line 260
    .local v10, "keys":Ljava/lang/Number;
    if-nez v10, :cond_c

    const/16 v12, 0x3e8

    :goto_5
    goto/16 :goto_2

    .line 258
    .end local v10    # "keys":Ljava/lang/Number;
    :cond_b
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v11

    goto :goto_4

    .line 260
    .restart local v10    # "keys":Ljava/lang/Number;
    :cond_c
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v12

    goto :goto_5

    .line 267
    .end local v10    # "keys":Ljava/lang/Number;
    .end local v14    # "size":Ljava/lang/Number;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/Request;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v8

    .line 270
    .local v8, "in":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v17, v0

    if-gez v2, :cond_e

    move/from16 v16, v11

    :goto_6
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v8, v0, v5, v1, v12}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    :cond_e
    const/16 v16, -0x1

    goto :goto_6

    .line 277
    .end local v8    # "in":Ljava/io/InputStream;
    .local v4, "e":Ljava/io/IOException;
    :cond_f
    :try_start_7
    sget-object v16, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-interface/range {v16 .. v18}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 285
    .end local v2    # "content_length":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v11    # "maxFormContentSize":I
    .end local v12    # "maxFormKeys":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_6

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 289
    .local v9, "iter":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 291
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 292
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 293
    .local v13, "name":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 294
    .local v15, "values":Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    invoke-static {v15}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_11

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v16, v0

    invoke-static {v15, v7}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 294
    add-int/lit8 v7, v7, 0x1

    goto :goto_7
.end method

.method public getAsyncContext()Lorg/eclipse/jetty/server/AsyncContext;
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    return-object v0
.end method

.method public getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 327
    const-string v1, "org.eclipse.jetty.io.EndPoint.maxIdleTime"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 333
    :cond_0
    :goto_0
    return-object v0

    .line 330
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 331
    .local v0, "attr":Ljava/lang/Object;
    :goto_1
    if-nez v0, :cond_0

    const-string v1, "org.eclipse.jetty.continuation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    goto :goto_0

    .line 330
    .end local v0    # "attr":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v1, p1}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v0, :cond_0

    .line 343
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-static {v0}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNamesCopy(Lorg/eclipse/jetty/util/Attributes;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributes()Lorg/eclipse/jetty/util/Attributes;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/server/Authentication$Deferred;->authenticate(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    .line 378
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Authentication$User;->getAuthMethod()Ljava/lang/String;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAuthentication()Lorg/eclipse/jetty/server/Authentication;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    return-object v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    return-object v0
.end method

.method public getContentLength()I
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->getLongField(Lorg/eclipse/jetty/io/Buffer;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getContentRead()J
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object v0

    if-nez v0, :cond_1

    .line 413
    :cond_0
    const-wide/16 v0, -0x1

    .line 415
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->getContentRead()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_contextPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCookies()[Ljavax/servlet/http/Cookie;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 451
    iget-boolean v3, p0, Lorg/eclipse/jetty/server/Request;->_cookiesExtracted:Z

    if-eqz v3, :cond_2

    .line 452
    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    if-nez v3, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-object v2

    .line 452
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/CookieCutter;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v2

    goto :goto_0

    .line 454
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/eclipse/jetty/server/Request;->_cookiesExtracted:Z

    .line 456
    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->COOKIE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Lorg/eclipse/jetty/io/Buffer;)Ljava/util/Enumeration;

    move-result-object v1

    .line 459
    .local v1, "enm":Ljava/util/Enumeration;
    if-eqz v1, :cond_4

    .line 461
    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    if-nez v3, :cond_3

    .line 462
    new-instance v3, Lorg/eclipse/jetty/server/CookieCutter;

    invoke-direct {v3}, Lorg/eclipse/jetty/server/CookieCutter;-><init>()V

    iput-object v3, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    .line 464
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 466
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 467
    .local v0, "c":Ljava/lang/String;
    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/server/CookieCutter;->addCookieField(Ljava/lang/String;)V

    goto :goto_1

    .line 471
    .end local v0    # "c":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/CookieCutter;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v2

    goto :goto_0
.end method

.method public getDateHeader(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 480
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getDateField(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDispatchTime()J
    .locals 2

    .prologue
    .line 1265
    iget-wide v0, p0, Lorg/eclipse/jetty/server/Request;->_dispatchTime:J

    return-wide v0
.end method

.method public getDispatcherType()Lorg/eclipse/jetty/server/DispatcherType;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_dispatcherType:Lorg/eclipse/jetty/server/DispatcherType;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 495
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields;->getFieldNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 513
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 514
    .local v0, "e":Ljava/util/Enumeration;
    if-nez v0, :cond_0

    .line 515
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 516
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_0
    return-object v0
.end method

.method public getInputState()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    return v0
.end method

.method public getInputStream()Ljavax/servlet/ServletInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 534
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-eq v0, v1, :cond_0

    .line 535
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    iput v1, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    .line 537
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getIntHeader(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 546
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getLongField(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 644
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v1, :cond_1

    .line 645
    const/4 v0, 0x0

    .line 652
    :cond_0
    :goto_0
    return-object v0

    .line 646
    :cond_1
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_dns:Z

    if-eqz v1, :cond_2

    .line 647
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 649
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "local":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 564
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v6

    const-string v7, "Accept-Language"

    const-string v8, ", \t"

    invoke-virtual {v6, v7, v8}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    .line 567
    .local v3, "enm":Ljava/util/Enumeration;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_1

    .line 568
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 591
    :goto_0
    return-object v6

    .line 571
    :cond_1
    invoke-static {v3}, Lorg/eclipse/jetty/http/HttpFields;->qualityList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object v0

    .line 572
    .local v0, "acceptLanguage":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 573
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    goto :goto_0

    .line 575
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 577
    .local v5, "size":I
    if-lez v5, :cond_4

    .line 579
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 580
    .local v4, "language":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v4, v6}, Lorg/eclipse/jetty/http/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 581
    const-string v1, ""

    .line 582
    .local v1, "country":Ljava/lang/String;
    const/16 v6, 0x2d

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 583
    .local v2, "dash":I
    const/4 v6, -0x1

    if-le v2, v6, :cond_3

    .line 585
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 586
    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 588
    :cond_3
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v4, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 591
    .end local v1    # "country":Ljava/lang/String;
    .end local v2    # "dash":I
    .end local v4    # "language":Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    goto :goto_0
.end method

.method public getLocales()Ljava/util/Enumeration;
    .locals 11

    .prologue
    .line 601
    iget-object v8, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v8}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v8

    const-string v9, "Accept-Language"

    const-string v10, ", \t"

    invoke-virtual {v8, v9, v10}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    .line 604
    .local v3, "enm":Ljava/util/Enumeration;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-nez v8, :cond_1

    .line 605
    :cond_0
    sget-object v8, Lorg/eclipse/jetty/server/Request;->__defaultLocale:Ljava/util/Collection;

    invoke-static {v8}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v8

    .line 635
    :goto_0
    return-object v8

    .line 608
    :cond_1
    invoke-static {v3}, Lorg/eclipse/jetty/http/HttpFields;->qualityList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object v0

    .line 610
    .local v0, "acceptLanguage":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 611
    sget-object v8, Lorg/eclipse/jetty/server/Request;->__defaultLocale:Ljava/util/Collection;

    invoke-static {v8}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v8

    goto :goto_0

    .line 613
    :cond_2
    const/4 v5, 0x0

    .line 614
    .local v5, "langs":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 617
    .local v7, "size":I
    const/4 v4, 0x0

    .end local v5    # "langs":Ljava/lang/Object;
    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_4

    .line 619
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 620
    .local v6, "language":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lorg/eclipse/jetty/http/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 621
    const-string v1, ""

    .line 622
    .local v1, "country":Ljava/lang/String;
    const/16 v8, 0x2d

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 623
    .local v2, "dash":I
    const/4 v8, -0x1

    if-le v2, v8, :cond_3

    .line 625
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 626
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 628
    :cond_3
    invoke-static {v5, v7}, Lorg/eclipse/jetty/util/LazyList;->ensureSize(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 629
    .restart local v5    # "langs":Ljava/lang/Object;
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v6, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v8}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 617
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 632
    .end local v1    # "country":Ljava/lang/String;
    .end local v2    # "dash":I
    .end local v5    # "langs":Ljava/lang/Object;
    .end local v6    # "language":Ljava/lang/String;
    :cond_4
    invoke-static {v5}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v8

    if-nez v8, :cond_5

    .line 633
    sget-object v8, Lorg/eclipse/jetty/server/Request;->__defaultLocale:Ljava/util/Collection;

    invoke-static {v8}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v8

    goto :goto_0

    .line 635
    :cond_5
    invoke-static {v5}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v8

    goto :goto_0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 679
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 680
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 681
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jetty/util/MultiMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 690
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 691
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 693
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->toStringArrayMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 702
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 703
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 704
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getParameterValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 722
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-nez v1, :cond_0

    .line 723
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 724
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/util/MultiMap;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 725
    .local v0, "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 726
    const/4 v1, 0x0

    .line 727
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getParameters()Lorg/eclipse/jetty/util/MultiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    return-object v0
.end method

.method public getPathInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPathTranslated()Ljava/lang/String;
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v0, :cond_1

    .line 746
    :cond_0
    const/4 v0, 0x0

    .line 747
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 774
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    .line 778
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    return-object v0

    .line 776
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->getQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    goto :goto_0
.end method

.method public getReader()Ljava/io/BufferedReader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 787
    iget v2, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-eq v2, v4, :cond_0

    .line 788
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "STREAMED"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 790
    :cond_0
    iget v2, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-ne v2, v4, :cond_1

    .line 791
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    .line 811
    :goto_0
    return-object v2

    .line 793
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 795
    const-string v0, "ISO-8859-1"

    .line 797
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_readerEncoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 799
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v1

    .line 800
    .local v1, "in":Ljavax/servlet/ServletInputStream;
    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_readerEncoding:Ljava/lang/String;

    .line 801
    new-instance v2, Lorg/eclipse/jetty/server/Request$1;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, p0, v3, v1}, Lorg/eclipse/jetty/server/Request$1;-><init>(Lorg/eclipse/jetty/server/Request;Ljava/io/Reader;Ljavax/servlet/ServletInputStream;)V

    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    .line 810
    .end local v1    # "in":Ljavax/servlet/ServletInputStream;
    :cond_4
    iput v4, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    .line 811
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    goto :goto_0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 820
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v0, :cond_0

    .line 821
    const/4 v0, 0x0

    .line 822
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_remoteAddr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_remoteAddr:Ljava/lang/String;

    .line 833
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 842
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_dns:Z

    if-eqz v0, :cond_2

    .line 844
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_remoteHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_remoteHost:Ljava/lang/String;

    .line 850
    :goto_0
    return-object v0

    .line 848
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 850
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getRemotePort()I

    move-result v0

    goto :goto_0
.end method

.method public getRemoteUser()Ljava/lang/String;
    .locals 2

    .prologue
    .line 868
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 869
    .local v0, "p":Ljava/security/Principal;
    if-nez v0, :cond_0

    .line 870
    const/4 v1, 0x0

    .line 871
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 880
    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v2, :cond_1

    .line 881
    :cond_0
    const/4 v2, 0x0

    .line 895
    :goto_0
    return-object v2

    .line 884
    :cond_1
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 886
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, "relTo":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 888
    .local v1, "slash":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 889
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 892
    :goto_1
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 895
    .end local v0    # "relTo":Ljava/lang/String;
    .end local v1    # "slash":I
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v2

    goto :goto_0

    .line 891
    .restart local v0    # "relTo":Ljava/lang/String;
    .restart local v1    # "slash":I
    :cond_3
    const-string v0, "/"

    goto :goto_1
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestURI:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getPathAndParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestURI:Ljava/lang/String;

    .line 915
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestURI:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestURL()Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 924
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 925
    .local v2, "url":Ljava/lang/StringBuffer;
    monitor-enter v2

    .line 927
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 928
    .local v1, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServerPort()I

    move-result v0

    .line 930
    .local v0, "port":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 931
    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 932
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 933
    iget v3, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    if-lez v3, :cond_2

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x50

    if-ne v0, v3, :cond_1

    :cond_0
    const-string v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1bb

    if-eq v0, v3, :cond_2

    .line 935
    :cond_1
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 936
    iget v3, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 939
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 940
    monitor-exit v2

    return-object v2

    .line 941
    .end local v0    # "port":I
    .end local v1    # "scheme":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getRequestedSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getResolvedUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v0

    .line 1231
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResponse()Lorg/eclipse/jetty/server/Response;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    return-object v0
.end method

.method public getRootURL()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 963
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 964
    .local v2, "url":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 965
    .local v1, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServerPort()I

    move-result v0

    .line 967
    .local v0, "port":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    if-lez v0, :cond_2

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x50

    if-ne v0, v3, :cond_1

    :cond_0
    const-string v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1bb

    if-eq v0, v3, :cond_2

    .line 973
    :cond_1
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 976
    :cond_2
    return-object v2
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 11

    .prologue
    .line 995
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 996
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1067
    :goto_0
    return-object v6

    .line 998
    :cond_0
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    if-nez v6, :cond_1

    .line 999
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "No uri"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1002
    :cond_1
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v6}, Lorg/eclipse/jetty/http/HttpURI;->getHost()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1003
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v6}, Lorg/eclipse/jetty/http/HttpURI;->getPort()I

    move-result v6

    iput v6, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1004
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1005
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    goto :goto_0

    .line 1008
    :cond_2
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v6

    sget-object v7, Lorg/eclipse/jetty/http/HttpHeaders;->HOST_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/http/HttpFields;->get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    .line 1009
    .local v3, "hostPort":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v3, :cond_7

    .line 1011
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v4

    .local v4, "i":I
    :goto_1
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v6

    if-le v4, v6, :cond_4

    .line 1013
    invoke-interface {v3, v5}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-char v0, v6

    .line 1014
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    move v4, v5

    .line 1039
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 1020
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :sswitch_0
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v6

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v7

    sub-int v7, v5, v7

    invoke-interface {v3, v6, v7}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jetty/io/BufferUtil;->to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1023
    add-int/lit8 v6, v5, 0x1

    :try_start_0
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v7

    sub-int/2addr v7, v5

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v3, v6, v7}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v6

    invoke-static {v6}, Lorg/eclipse/jetty/io/BufferUtil;->toInt(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v6

    iput v6, p0, Lorg/eclipse/jetty/server/Request;->_port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :cond_3
    :goto_2
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    goto :goto_0

    .line 1025
    :catch_0
    move-exception v1

    .line 1029
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v6, :cond_3

    .line 1030
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v6, v6, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/16 v7, 0x190

    const-string v8, "Bad Host header"

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v6, v7, v8, v9, v10}, Lorg/eclipse/jetty/http/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1032
    :catch_1
    move-exception v2

    .line 1034
    .local v2, "e1":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1040
    .end local v0    # "ch":C
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_4
    :sswitch_1
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget v6, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    if-gez v6, :cond_6

    .line 1042
    :cond_5
    invoke-static {v3}, Lorg/eclipse/jetty/io/BufferUtil;->to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1043
    const/4 v6, 0x0

    iput v6, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1046
    :cond_6
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1050
    .end local v5    # "i":I
    :cond_7
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v6, :cond_8

    .line 1052
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getLocalName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1053
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getLocalPort()I

    move-result v6

    iput v6, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1054
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-eqz v6, :cond_8

    const-string v6, "0.0.0.0"

    iget-object v7, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1055
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1061
    :cond_8
    :try_start_2
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1067
    :goto_3
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1063
    :catch_2
    move-exception v1

    .line 1065
    .local v1, "e":Ljava/net/UnknownHostException;
    sget-object v6, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1014
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method public getServerPort()I
    .locals 2

    .prologue
    .line 1076
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    if-gtz v0, :cond_1

    .line 1078
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1079
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    .line 1081
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    if-gtz v0, :cond_1

    .line 1083
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    if-eqz v0, :cond_2

    .line 1084
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1090
    :cond_1
    :goto_0
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    if-gtz v0, :cond_5

    .line 1092
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1093
    const/16 v0, 0x1bb

    .line 1096
    :goto_1
    return v0

    .line 1086
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getLocalPort()I

    move-result v0

    goto :goto_2

    .line 1094
    :cond_4
    const/16 v0, 0x50

    goto :goto_1

    .line 1096
    :cond_5
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    goto :goto_1
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getServletName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/UserIdentity$Scope;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServletPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1122
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    .line 1123
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    return-object v0
.end method

.method public getServletResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Ljavax/servlet/http/HttpSession;
    .locals 1

    .prologue
    .line 1138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Z)Ljavax/servlet/http/HttpSession;
    .locals 5
    .param p1, "create"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1147
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    if-eqz v2, :cond_0

    .line 1149
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1150
    iput-object v1, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1155
    :cond_0
    if-nez p1, :cond_2

    .line 1166
    :goto_0
    return-object v1

    .line 1152
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    goto :goto_0

    .line 1158
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-nez v1, :cond_3

    .line 1159
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No SessionManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1161
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v1, p0}, Lorg/eclipse/jetty/server/SessionManager;->newHttpSession(Ljavax/servlet/http/HttpServletRequest;)Ljavax/servlet/http/HttpSession;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1162
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->isSecure()Z

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookie(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Z)Lorg/eclipse/jetty/http/HttpCookie;

    move-result-object v0

    .line 1163
    .local v0, "cookie":Lorg/eclipse/jetty/http/HttpCookie;
    if-eqz v0, :cond_4

    .line 1164
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/Response;->addCookie(Lorg/eclipse/jetty/http/HttpCookie;)V

    .line 1166
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    goto :goto_0
.end method

.method public getSessionManager()Lorg/eclipse/jetty/server/SessionManager;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 1186
    iget-wide v0, p0, Lorg/eclipse/jetty/server/Request;->_timeStamp:J

    return-wide v0
.end method

.method public getTimeStampBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 4

    .prologue
    .line 1197
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_timeStampBuffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/server/Request;->_timeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1198
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateCache:Lorg/eclipse/jetty/io/BufferDateCache;

    iget-wide v1, p0, Lorg/eclipse/jetty/server/Request;->_timeStamp:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferDateCache;->formatBuffer(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_timeStampBuffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1199
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_timeStampBuffer:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getUri()Lorg/eclipse/jetty/http/HttpURI;
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    return-object v0
.end method

.method public getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/server/Authentication$Deferred;->authenticate(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 1217
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v0, :cond_1

    .line 1218
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v0

    .line 1219
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserIdentityScope()Lorg/eclipse/jetty/server/UserIdentity$Scope;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 1246
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v1, v1, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v1, :cond_0

    .line 1247
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v1, Lorg/eclipse/jetty/server/Authentication$Deferred;

    invoke-interface {v1, p0}, Lorg/eclipse/jetty/server/Authentication$Deferred;->authenticate(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 1249
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v1, v1, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v1, :cond_1

    .line 1251
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v1, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v0

    .line 1252
    .local v0, "user":Lorg/eclipse/jetty/server/UserIdentity;
    invoke-interface {v0}, Lorg/eclipse/jetty/server/UserIdentity;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v1

    .line 1254
    .end local v0    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAsyncSupported()Z
    .locals 1

    .prologue
    .line 1277
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    return v0
.end method

.method public isHandled()Z
    .locals 1

    .prologue
    .line 1271
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    return v0
.end method

.method public isRequestedSessionIdFromCookie()Z
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestedSessionIdFromURL()Z
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestedSessionIdFromUrl()Z
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestedSessionIdValid()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1313
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1317
    :cond_0
    :goto_0
    return v1

    .line 1316
    :cond_1
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    .line 1317
    .local v0, "session":Ljavax/servlet/http/HttpSession;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v2}, Lorg/eclipse/jetty/server/SessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/server/SessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/server/SessionManager;->getClusterId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isConfidential(Lorg/eclipse/jetty/server/Request;)Z

    move-result v0

    return v0
.end method

.method public isUserInRole(Ljava/lang/String;)Z
    .locals 2
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 1335
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/server/Authentication$Deferred;->authenticate(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 1338
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v0, :cond_1

    .line 1339
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/server/Authentication$User;->isUserInRole(Lorg/eclipse/jetty/server/UserIdentity$Scope;Ljava/lang/String;)Z

    move-result v0

    .line 1340
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeQueryString(Ljava/lang/String;)V
    .locals 12
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1919
    new-instance v8, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v8}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    .line 1920
    .local v8, "parameters":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v8, v10}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    .line 1922
    const/4 v3, 0x0

    .line 1925
    .local v3, "merge_old_query":Z
    iget-boolean v10, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-nez v10, :cond_0

    .line 1926
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 1929
    :cond_0
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v10}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 1932
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v10}, Lorg/eclipse/jetty/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1933
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1935
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1936
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1939
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v8, v4}, Lorg/eclipse/jetty/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1940
    const/4 v3, 0x1

    .line 1943
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 1944
    .local v9, "values":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {v9}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v10

    if-ge v1, v10, :cond_1

    .line 1945
    invoke-static {v9, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v4, v10}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1944
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1949
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "i":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v9    # "values":Ljava/lang/Object;
    :cond_3
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 1951
    if-eqz v3, :cond_7

    .line 1953
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1954
    .local v7, "overridden_query_string":Ljava/lang/StringBuilder;
    new-instance v6, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v6}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    .line 1955
    .local v6, "overridden_old_query":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v6, v11}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    .line 1957
    new-instance v5, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v5}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    .line 1958
    .local v5, "overridden_new_query":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v5, v10}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    .line 1960
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1961
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1963
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1964
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1965
    .restart local v4    # "name":Ljava/lang/String;
    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1967
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 1968
    .restart local v9    # "values":Ljava/lang/Object;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-static {v9}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v10

    if-ge v1, v10, :cond_4

    .line 1970
    const-string v10, "&"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1968
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1975
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v9    # "values":Ljava/lang/Object;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1983
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v5    # "overridden_new_query":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    .end local v6    # "overridden_old_query":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    .end local v7    # "overridden_query_string":Ljava/lang/StringBuilder;
    :cond_6
    :goto_2
    invoke-virtual {p0, v8}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 1984
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Request;->setQueryString(Ljava/lang/String;)V

    .line 1985
    return-void

    .line 1979
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public recoverNewSession(Ljava/lang/Object;)Ljavax/servlet/http/HttpSession;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1346
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1347
    const/4 v0, 0x0

    .line 1348
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/HttpSession;

    goto :goto_0
.end method

.method protected recycle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1354
    iget v2, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1358
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v1

    .line 1359
    .local v1, "r":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1360
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1362
    .end local v1    # "r":I
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 1365
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    .line 1369
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v2, Lorg/eclipse/jetty/server/Authentication;->NOT_CHECKED:Lorg/eclipse/jetty/server/Authentication;

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 1370
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->recycle()V

    .line 1371
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    .line 1372
    iput-boolean v5, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    .line 1373
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eqz v2, :cond_1

    .line 1374
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Request in context!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1375
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-eqz v2, :cond_2

    .line 1376
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v2}, Lorg/eclipse/jetty/util/Attributes;->clearAttributes()V

    .line 1377
    :cond_2
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_characterEncoding:Ljava/lang/String;

    .line 1378
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    if-eqz v2, :cond_3

    .line 1379
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/CookieCutter;->reset()V

    .line 1380
    :cond_3
    iput-boolean v5, p0, Lorg/eclipse/jetty/server/Request;->_cookiesExtracted:Z

    .line 1381
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 1382
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1383
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_method:Ljava/lang/String;

    .line 1384
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    .line 1385
    iput v5, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1386
    const-string v2, "HTTP/1.1"

    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_protocol:Ljava/lang/String;

    .line 1387
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    .line 1388
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    .line 1389
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    .line 1390
    iput-boolean v5, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    .line 1391
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1392
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    .line 1393
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_requestURI:Ljava/lang/String;

    .line 1394
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    .line 1395
    const-string v2, "http"

    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_scheme:Ljava/lang/String;

    .line 1396
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    .line 1397
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/eclipse/jetty/server/Request;->_timeStamp:J

    .line 1398
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_timeStampBuffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1399
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    .line 1400
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    if-eqz v2, :cond_4

    .line 1401
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/MultiMap;->clear()V

    .line 1402
    :cond_4
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    .line 1403
    iput-boolean v5, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    .line 1404
    iput v5, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    .line 1406
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 1407
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1408
    :cond_5
    iput-object v4, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    .line 1409
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1417
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v6, :cond_2

    const/4 v4, 0x0

    .line 1419
    .local v4, "old_value":Ljava/lang/Object;
    :goto_0
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-eqz v6, :cond_0

    .line 1420
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v6, p1}, Lorg/eclipse/jetty/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    .line 1422
    :cond_0
    if-eqz v4, :cond_3

    .line 1424
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 1426
    new-instance v0, Ljavax/servlet/ServletRequestAttributeEvent;

    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v0, v6, p0, p1, v4}, Ljavax/servlet/ServletRequestAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1427
    .local v0, "event":Ljavax/servlet/ServletRequestAttributeEvent;
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v6}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    .line 1428
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 1430
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v6, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/ServletRequestAttributeListener;

    .line 1431
    .local v3, "listener":Ljava/util/EventListener;
    instance-of v6, v3, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v6, :cond_1

    move-object v2, v3

    .line 1433
    check-cast v2, Ljavax/servlet/ServletRequestAttributeListener;

    .line 1434
    .local v2, "l":Ljavax/servlet/ServletRequestAttributeListener;
    invoke-interface {v2, v0}, Ljavax/servlet/ServletRequestAttributeListener;->attributeRemoved(Ljavax/servlet/ServletRequestAttributeEvent;)V

    .line 1428
    .end local v2    # "l":Ljavax/servlet/ServletRequestAttributeListener;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1417
    .end local v0    # "event":Ljavax/servlet/ServletRequestAttributeEvent;
    .end local v1    # "i":I
    .end local v3    # "listener":Ljava/util/EventListener;
    .end local v4    # "old_value":Ljava/lang/Object;
    .end local v5    # "size":I
    :cond_2
    iget-object v6, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v6, p1}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 1439
    .restart local v4    # "old_value":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public removeEventListener(Ljava/util/EventListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 1444
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    .line 1445
    return-void
.end method

.method public saveNewSession(Ljava/lang/Object;Ljavax/servlet/http/HttpSession;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 1450
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    .line 1452
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    return-void
.end method

.method public setAsyncSupported(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 1458
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    .line 1459
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 1472
    iget-object v11, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v11, :cond_3

    move-object v8, v10

    .line 1474
    .local v8, "old_value":Ljava/lang/Object;
    :goto_0
    const-string v11, "org.eclipse.jetty."

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1476
    const-string v11, "org.eclipse.jetty.server.Request.queryEncoding"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1477
    if-nez p2, :cond_4

    :goto_1
    invoke-virtual {p0, v10}, Lorg/eclipse/jetty/server/Request;->setQueryEncoding(Ljava/lang/String;)V

    .line 1518
    :cond_0
    :goto_2
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v10, :cond_1

    .line 1519
    new-instance v10, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v10}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v10, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    .line 1520
    :cond_1
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v10, p1, p2}, Lorg/eclipse/jetty/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1522
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v10, :cond_c

    .line 1524
    new-instance v4, Ljavax/servlet/ServletRequestAttributeEvent;

    iget-object v11, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v8, :cond_9

    move-object v10, p2

    :goto_3
    invoke-direct {v4, v11, p0, p1, v10}, Ljavax/servlet/ServletRequestAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1525
    .local v4, "event":Ljavax/servlet/ServletRequestAttributeEvent;
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v10}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v9

    .line 1526
    .local v9, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v9, :cond_c

    .line 1528
    iget-object v10, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v10, v5}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/servlet/ServletRequestAttributeListener;

    .line 1529
    .local v7, "listener":Ljava/util/EventListener;
    instance-of v10, v7, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v10, :cond_2

    move-object v6, v7

    .line 1531
    check-cast v6, Ljavax/servlet/ServletRequestAttributeListener;

    .line 1533
    .local v6, "l":Ljavax/servlet/ServletRequestAttributeListener;
    if-nez v8, :cond_a

    .line 1534
    invoke-interface {v6, v4}, Ljavax/servlet/ServletRequestAttributeListener;->attributeAdded(Ljavax/servlet/ServletRequestAttributeEvent;)V

    .line 1526
    .end local v6    # "l":Ljavax/servlet/ServletRequestAttributeListener;
    :cond_2
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1472
    .end local v4    # "event":Ljavax/servlet/ServletRequestAttributeEvent;
    .end local v5    # "i":I
    .end local v7    # "listener":Ljava/util/EventListener;
    .end local v8    # "old_value":Ljava/lang/Object;
    .end local v9    # "size":I
    :cond_3
    iget-object v11, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v11, p1}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 1477
    .restart local v8    # "old_value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 1478
    :cond_5
    const-string v10, "org.eclipse.jetty.server.sendContent"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1482
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServletResponse()Ljavax/servlet/ServletResponse;

    move-result-object v10

    invoke-interface {v10}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v10, p2}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->sendContent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1484
    :catch_0
    move-exception v3

    .line 1486
    .local v3, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 1489
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6
    const-string v10, "org.eclipse.jetty.server.ResponseBuffer"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1493
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/nio/ByteBuffer;

    move-object v2, v0

    .line 1494
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    monitor-enter v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1496
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v1, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    const/4 v10, 0x1

    invoke-direct {v1, v2, v10}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 1497
    .local v1, "buffer":Lorg/eclipse/jetty/io/nio/NIOBuffer;
    :goto_6
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServletResponse()Ljavax/servlet/ServletResponse;

    move-result-object v10

    invoke-interface {v10}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v10, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->sendResponse(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1498
    monitor-exit v2

    goto/16 :goto_2

    .end local v1    # "buffer":Lorg/eclipse/jetty/io/nio/NIOBuffer;
    :catchall_0
    move-exception v10

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1500
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v3

    .line 1502
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 1496
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_7
    :try_start_4
    new-instance v1, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    const/4 v10, 0x1

    invoke-direct {v1, v2, v10}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(Ljava/nio/ByteBuffer;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 1505
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_8
    const-string v10, "org.eclipse.jetty.io.EndPoint.maxIdleTime"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1509
    :try_start_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v10

    invoke-virtual {v10}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v10

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 1511
    :catch_2
    move-exception v3

    .line 1513
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .end local v3    # "e":Ljava/io/IOException;
    :cond_9
    move-object v10, v8

    .line 1524
    goto/16 :goto_3

    .line 1535
    .restart local v4    # "event":Ljavax/servlet/ServletRequestAttributeEvent;
    .restart local v5    # "i":I
    .restart local v6    # "l":Ljavax/servlet/ServletRequestAttributeListener;
    .restart local v7    # "listener":Ljava/util/EventListener;
    .restart local v9    # "size":I
    :cond_a
    if-nez p2, :cond_b

    .line 1536
    invoke-interface {v6, v4}, Ljavax/servlet/ServletRequestAttributeListener;->attributeRemoved(Ljavax/servlet/ServletRequestAttributeEvent;)V

    goto/16 :goto_5

    .line 1538
    :cond_b
    invoke-interface {v6, v4}, Ljavax/servlet/ServletRequestAttributeListener;->attributeReplaced(Ljavax/servlet/ServletRequestAttributeEvent;)V

    goto/16 :goto_5

    .line 1542
    .end local v4    # "event":Ljavax/servlet/ServletRequestAttributeEvent;
    .end local v5    # "i":I
    .end local v6    # "l":Ljavax/servlet/ServletRequestAttributeListener;
    .end local v7    # "listener":Ljava/util/EventListener;
    .end local v9    # "size":I
    :cond_c
    return-void
.end method

.method public setAttributes(Lorg/eclipse/jetty/util/Attributes;)V
    .locals 0
    .param p1, "attributes"    # Lorg/eclipse/jetty/util/Attributes;

    .prologue
    .line 1549
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    .line 1550
    return-void
.end method

.method public setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V
    .locals 0
    .param p1, "authentication"    # Lorg/eclipse/jetty/server/Authentication;

    .prologue
    .line 1563
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    .line 1564
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1572
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-eqz v0, :cond_1

    .line 1581
    :cond_0
    :goto_0
    return-void

    .line 1575
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_characterEncoding:Ljava/lang/String;

    .line 1578
    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1580
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    goto :goto_0
.end method

.method public setCharacterEncodingUnchecked(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 1589
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_characterEncoding:Ljava/lang/String;

    .line 1590
    return-void
.end method

.method protected final setConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 1596
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 1597
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/AsyncContinuation;->setConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 1598
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 1599
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResolveNames()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_dns:Z

    .line 1600
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 1608
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    .line 1610
    return-void
.end method

.method public setContext(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V
    .locals 1
    .param p1, "context"    # Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .prologue
    .line 1621
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_newContext:Z

    .line 1622
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 1623
    return-void

    .line 1621
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContextPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "contextPath"    # Ljava/lang/String;

    .prologue
    .line 1645
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_contextPath:Ljava/lang/String;

    .line 1646
    return-void
.end method

.method public setCookies([Ljavax/servlet/http/Cookie;)V
    .locals 1
    .param p1, "cookies"    # [Ljavax/servlet/http/Cookie;

    .prologue
    .line 1655
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    if-nez v0, :cond_0

    .line 1656
    new-instance v0, Lorg/eclipse/jetty/server/CookieCutter;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/CookieCutter;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    .line 1657
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/CookieCutter;->setCookies([Ljavax/servlet/http/Cookie;)V

    .line 1658
    return-void
.end method

.method public setDispatchTime(J)V
    .locals 0
    .param p1, "value"    # J

    .prologue
    .line 1880
    iput-wide p1, p0, Lorg/eclipse/jetty/server/Request;->_dispatchTime:J

    .line 1881
    return-void
.end method

.method public setDispatcherType(Lorg/eclipse/jetty/server/DispatcherType;)V
    .locals 0
    .param p1, "type"    # Lorg/eclipse/jetty/server/DispatcherType;

    .prologue
    .line 1663
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_dispatcherType:Lorg/eclipse/jetty/server/DispatcherType;

    .line 1664
    return-void
.end method

.method public setHandled(Z)V
    .locals 0
    .param p1, "h"    # Z

    .prologue
    .line 1669
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    .line 1670
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1679
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_method:Ljava/lang/String;

    .line 1680
    return-void
.end method

.method public setParameters(Lorg/eclipse/jetty/util/MultiMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1689
    .local p1, "parameters":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    .end local p1    # "parameters":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    .line 1690
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    if-nez v0, :cond_1

    .line 1691
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1692
    :cond_1
    return-void
.end method

.method public setPathInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathInfo"    # Ljava/lang/String;

    .prologue
    .line 1701
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    .line 1702
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 1711
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_protocol:Ljava/lang/String;

    .line 1712
    return-void
.end method

.method public setQueryEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "queryEncoding"    # Ljava/lang/String;

    .prologue
    .line 1725
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    .line 1726
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    .line 1727
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 1736
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    .line 1737
    return-void
.end method

.method public setRemoteAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 1746
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_remoteAddr:Ljava/lang/String;

    .line 1747
    return-void
.end method

.method public setRemoteHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 1756
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_remoteHost:Ljava/lang/String;

    .line 1757
    return-void
.end method

.method public setRequestURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestURI"    # Ljava/lang/String;

    .prologue
    .line 1786
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_requestURI:Ljava/lang/String;

    .line 1787
    return-void
.end method

.method public setRequestedSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestedSessionId"    # Ljava/lang/String;

    .prologue
    .line 1766
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    .line 1767
    return-void
.end method

.method public setRequestedSessionIdFromCookie(Z)V
    .locals 0
    .param p1, "requestedSessionIdCookie"    # Z

    .prologue
    .line 1776
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    .line 1777
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 1796
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_scheme:Ljava/lang/String;

    .line 1797
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 1806
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1807
    return-void
.end method

.method public setServerPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 1816
    iput p1, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1817
    return-void
.end method

.method public setServletPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "servletPath"    # Ljava/lang/String;

    .prologue
    .line 1826
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    .line 1827
    return-void
.end method

.method public setSession(Ljavax/servlet/http/HttpSession;)V
    .locals 0
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 1836
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1837
    return-void
.end method

.method public setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V
    .locals 0
    .param p1, "sessionManager"    # Lorg/eclipse/jetty/server/SessionManager;

    .prologue
    .line 1846
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    .line 1847
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .param p1, "ts"    # J

    .prologue
    .line 1852
    iput-wide p1, p0, Lorg/eclipse/jetty/server/Request;->_timeStamp:J

    .line 1853
    return-void
.end method

.method public setUri(Lorg/eclipse/jetty/http/HttpURI;)V
    .locals 0
    .param p1, "uri"    # Lorg/eclipse/jetty/http/HttpURI;

    .prologue
    .line 1862
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    .line 1863
    return-void
.end method

.method public setUserIdentityScope(Lorg/eclipse/jetty/server/UserIdentity$Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/eclipse/jetty/server/UserIdentity$Scope;

    .prologue
    .line 1868
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    .line 1869
    return-void
.end method

.method public startAsync()Lorg/eclipse/jetty/server/AsyncContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1886
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    if-nez v0, :cond_0

    .line 1887
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!asyncSupported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1888
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v2, v2, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v0, v1, p0, v2}, Lorg/eclipse/jetty/server/AsyncContinuation;->suspend(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 1889
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    return-object v0
.end method

.method public startAsync(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/eclipse/jetty/server/AsyncContext;
    .locals 2
    .param p1, "servletRequest"    # Ljavax/servlet/ServletRequest;
    .param p2, "servletResponse"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1895
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    if-nez v0, :cond_0

    .line 1896
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!asyncSupported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1897
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jetty/server/AsyncContinuation;->suspend(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 1898
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    return-object v0
.end method

.method public takeNewContext()Z
    .locals 2

    .prologue
    .line 1632
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_newContext:Z

    .line 1633
    .local v0, "nc":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_newContext:Z

    .line 1634
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    if-eqz v0, :cond_0

    const-string v0, "["

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    if-eqz v0, :cond_1

    const-string v0, "]@"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "("

    goto :goto_0

    :cond_1
    const-string v0, ")@"

    goto :goto_1
.end method
