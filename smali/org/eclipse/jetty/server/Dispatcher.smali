.class public Lorg/eclipse/jetty/server/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Ljavax/servlet/RequestDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;,
        Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;
    }
.end annotation


# static fields
.field public static final ERROR_EXCEPTION:Ljava/lang/String; = "javax.servlet.error.exception"

.field public static final ERROR_EXCEPTION_TYPE:Ljava/lang/String; = "javax.servlet.error.exception_type"

.field public static final ERROR_MESSAGE:Ljava/lang/String; = "javax.servlet.error.message"

.field public static final ERROR_REQUEST_URI:Ljava/lang/String; = "javax.servlet.error.request_uri"

.field public static final ERROR_SERVLET_NAME:Ljava/lang/String; = "javax.servlet.error.servlet_name"

.field public static final ERROR_STATUS_CODE:Ljava/lang/String; = "javax.servlet.error.status_code"

.field public static final FORWARD_CONTEXT_PATH:Ljava/lang/String; = "javax.servlet.forward.context_path"

.field public static final FORWARD_PATH_INFO:Ljava/lang/String; = "javax.servlet.forward.path_info"

.field public static final FORWARD_QUERY_STRING:Ljava/lang/String; = "javax.servlet.forward.query_string"

.field public static final FORWARD_REQUEST_URI:Ljava/lang/String; = "javax.servlet.forward.request_uri"

.field public static final FORWARD_SERVLET_PATH:Ljava/lang/String; = "javax.servlet.forward.servlet_path"

.field public static final INCLUDE_CONTEXT_PATH:Ljava/lang/String; = "javax.servlet.include.context_path"

.field public static final INCLUDE_PATH_INFO:Ljava/lang/String; = "javax.servlet.include.path_info"

.field public static final INCLUDE_QUERY_STRING:Ljava/lang/String; = "javax.servlet.include.query_string"

.field public static final INCLUDE_REQUEST_URI:Ljava/lang/String; = "javax.servlet.include.request_uri"

.field public static final INCLUDE_SERVLET_PATH:Ljava/lang/String; = "javax.servlet.include.servlet_path"

.field public static final __FORWARD_PREFIX:Ljava/lang/String; = "javax.servlet.forward."

.field public static final __INCLUDE_PREFIX:Ljava/lang/String; = "javax.servlet.include."

.field public static final __JSP_FILE:Ljava/lang/String; = "org.apache.catalina.jsp_file"


# instance fields
.field private final _contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

.field private final _dQuery:Ljava/lang/String;

.field private final _named:Ljava/lang/String;

.field private final _path:Ljava/lang/String;

.field private final _uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "contextHandler"    # Lorg/eclipse/jetty/server/handler/ContextHandler;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 103
    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher;->_dQuery:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "contextHandler"    # Lorg/eclipse/jetty/server/handler/ContextHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "pathInContext"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 87
    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lorg/eclipse/jetty/server/Dispatcher;->_dQuery:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/Dispatcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/Dispatcher;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public error(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lorg/eclipse/jetty/server/DispatcherType;->ERROR:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jetty/server/Dispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Lorg/eclipse/jetty/server/DispatcherType;)V

    .line 125
    return-void
.end method

.method public forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    sget-object v0, Lorg/eclipse/jetty/server/DispatcherType;->FORWARD:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jetty/server/Dispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Lorg/eclipse/jetty/server/DispatcherType;)V

    .line 116
    return-void
.end method

.method protected forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Lorg/eclipse/jetty/server/DispatcherType;)V
    .locals 23
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "dispatch"    # Lorg/eclipse/jetty/server/DispatcherType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/eclipse/jetty/server/Request;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v20, p1

    check-cast v20, Lorg/eclipse/jetty/server/Request;

    move-object/from16 v5, v20

    .line 215
    .local v5, "baseRequest":Lorg/eclipse/jetty/server/Request;
    :goto_0
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v6

    .line 216
    .local v6, "base_response":Lorg/eclipse/jetty/server/Response;
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->resetBuffer()V

    .line 217
    invoke-virtual {v6}, Lorg/eclipse/jetty/server/Response;->fwdReset()V

    .line 220
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/servlet/http/HttpServletRequest;

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 221
    new-instance v18, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;-><init>(Ljavax/servlet/ServletRequest;)V

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    .local v18, "request":Ljavax/servlet/ServletRequest;
    move-object/from16 p1, v18

    .line 222
    .end local v18    # "request":Ljavax/servlet/ServletRequest;
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    :cond_0
    move-object/from16 v0, p2

    instance-of v0, v0, Ljavax/servlet/http/HttpServletResponse;

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 223
    new-instance v19, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;-><init>(Ljavax/servlet/ServletResponse;)V

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    .local v19, "response":Ljavax/servlet/ServletResponse;
    move-object/from16 p2, v19

    .line 225
    .end local v19    # "response":Ljavax/servlet/ServletResponse;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_1
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v10

    .line 226
    .local v10, "old_handled":Z
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v16

    .line 227
    .local v16, "old_uri":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v9

    .line 228
    .local v9, "old_context_path":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v14

    .line 229
    .local v14, "old_servlet_path":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v12

    .line 230
    .local v12, "old_path_info":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v13

    .line 231
    .local v13, "old_query":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getAttributes()Lorg/eclipse/jetty/util/Attributes;

    move-result-object v8

    .line 232
    .local v8, "old_attr":Lorg/eclipse/jetty/util/Attributes;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lorg/eclipse/jetty/server/DispatcherType;

    move-result-object v15

    .line 233
    .local v15, "old_type":Lorg/eclipse/jetty/server/DispatcherType;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v11

    .line 237
    .local v11, "old_params":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    const/16 v20, 0x0

    :try_start_0
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 238
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Lorg/eclipse/jetty/server/DispatcherType;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    move-object/from16 v21, v0

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :goto_1
    invoke-virtual {v5, v10}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 311
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->setRequestURI(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v5, v9}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v5, v14}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v5, v12}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v5, v8}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 316
    invoke-virtual {v5, v11}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 317
    invoke-virtual {v5, v13}, Lorg/eclipse/jetty/server/Request;->setQueryString(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v5, v15}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Lorg/eclipse/jetty/server/DispatcherType;)V

    .line 320
    return-void

    .line 214
    .end local v5    # "baseRequest":Lorg/eclipse/jetty/server/Request;
    .end local v6    # "base_response":Lorg/eclipse/jetty/server/Response;
    .end local v8    # "old_attr":Lorg/eclipse/jetty/util/Attributes;
    .end local v9    # "old_context_path":Ljava/lang/String;
    .end local v10    # "old_handled":Z
    .end local v11    # "old_params":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    .end local v12    # "old_path_info":Ljava/lang/String;
    .end local v13    # "old_query":Ljava/lang/String;
    .end local v14    # "old_servlet_path":Ljava/lang/String;
    .end local v15    # "old_type":Lorg/eclipse/jetty/server/DispatcherType;
    .end local v16    # "old_uri":Ljava/lang/String;
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_2
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v5

    goto/16 :goto_0

    .line 246
    .restart local v5    # "baseRequest":Lorg/eclipse/jetty/server/Request;
    .restart local v6    # "base_response":Lorg/eclipse/jetty/server/Response;
    .restart local v8    # "old_attr":Lorg/eclipse/jetty/util/Attributes;
    .restart local v9    # "old_context_path":Ljava/lang/String;
    .restart local v10    # "old_handled":Z
    .restart local v11    # "old_params":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    .restart local v12    # "old_path_info":Ljava/lang/String;
    .restart local v13    # "old_query":Ljava/lang/String;
    .restart local v14    # "old_servlet_path":Ljava/lang/String;
    .restart local v15    # "old_type":Lorg/eclipse/jetty/server/DispatcherType;
    .restart local v16    # "old_uri":Ljava/lang/String;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_dQuery:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 247
    .local v17, "query":Ljava/lang/String;
    if-eqz v17, :cond_5

    .line 250
    if-nez v11, :cond_4

    .line 252
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 253
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v11

    .line 256
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->mergeQueryString(Ljava/lang/String;)V

    .line 259
    :cond_5
    new-instance v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8}, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;-><init>(Lorg/eclipse/jetty/server/Dispatcher;Lorg/eclipse/jetty/util/Attributes;)V

    .line 265
    .local v4, "attr":Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;
    const-string v20, "javax.servlet.forward.request_uri"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_6

    .line 267
    const-string v20, "javax.servlet.forward.path_info"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_pathInfo:Ljava/lang/String;

    .line 268
    const-string v20, "javax.servlet.forward.query_string"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_query:Ljava/lang/String;

    .line 269
    const-string v20, "javax.servlet.forward.request_uri"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_requestURI:Ljava/lang/String;

    .line 270
    const-string v20, "javax.servlet.forward.context_path"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_contextPath:Ljava/lang/String;

    .line 271
    const-string v20, "javax.servlet.forward.servlet_path"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_servletPath:Ljava/lang/String;

    .line 282
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->setRequestURI(Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 284
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    move-object/from16 v22, v0

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    move-object/from16 v0, p2

    check-cast v0, Ljavax/servlet/http/HttpServletResponse;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 290
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/eclipse/jetty/server/Response;->isWriting()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v20

    if-eqz v20, :cond_7

    .line 292
    :try_start_2
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 293
    :catch_0
    move-exception v7

    .line 295
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavax/servlet/ServletOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 310
    .end local v4    # "attr":Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    .end local v17    # "query":Ljava/lang/String;
    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    :catchall_0
    move-exception v20

    invoke-virtual {v5, v10}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 311
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->setRequestURI(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v5, v9}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v5, v14}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v5, v12}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v5, v8}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 316
    invoke-virtual {v5, v11}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 317
    invoke-virtual {v5, v13}, Lorg/eclipse/jetty/server/Request;->setQueryString(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v5, v15}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Lorg/eclipse/jetty/server/DispatcherType;)V

    .line 310
    throw v20

    .line 275
    .restart local v4    # "attr":Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;
    .restart local v17    # "query":Ljava/lang/String;
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_6
    :try_start_4
    iput-object v12, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_pathInfo:Ljava/lang/String;

    .line 276
    iput-object v13, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_query:Ljava/lang/String;

    .line 277
    move-object/from16 v0, v16

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_requestURI:Ljava/lang/String;

    .line 278
    iput-object v9, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_contextPath:Ljava/lang/String;

    .line 279
    iput-object v14, v4, Lorg/eclipse/jetty/server/Dispatcher$ForwardAttributes;->_servletPath:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 300
    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    :cond_7
    :try_start_5
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavax/servlet/ServletOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 301
    :catch_1
    move-exception v7

    .line 303
    .restart local v7    # "e":Ljava/lang/IllegalStateException;
    :try_start_6
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method public include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 20
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/eclipse/jetty/server/Request;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v18, p1

    check-cast v18, Lorg/eclipse/jetty/server/Request;

    move-object/from16 v5, v18

    .line 136
    .local v5, "baseRequest":Lorg/eclipse/jetty/server/Request;
    :goto_0
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/servlet/http/HttpServletRequest;

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 137
    new-instance v15, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;-><init>(Ljavax/servlet/ServletRequest;)V

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    .local v15, "request":Ljavax/servlet/ServletRequest;
    move-object/from16 p1, v15

    .line 138
    .end local v15    # "request":Ljavax/servlet/ServletRequest;
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    :cond_0
    move-object/from16 v0, p2

    instance-of v0, v0, Ljavax/servlet/http/HttpServletResponse;

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 139
    new-instance v16, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;-><init>(Ljavax/servlet/ServletResponse;)V

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    .local v16, "response":Ljavax/servlet/ServletResponse;
    move-object/from16 p2, v16

    .line 144
    .end local v16    # "response":Ljavax/servlet/ServletResponse;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_1
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lorg/eclipse/jetty/server/DispatcherType;

    move-result-object v12

    .line 145
    .local v12, "old_type":Lorg/eclipse/jetty/server/DispatcherType;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getAttributes()Lorg/eclipse/jetty/util/Attributes;

    move-result-object v10

    .line 146
    .local v10, "old_attr":Lorg/eclipse/jetty/util/Attributes;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v11

    .line 149
    .local v11, "old_params":Lorg/eclipse/jetty/util/MultiMap;
    :try_start_0
    sget-object v18, Lorg/eclipse/jetty/server/DispatcherType;->INCLUDE:Lorg/eclipse/jetty/server/DispatcherType;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Lorg/eclipse/jetty/server/DispatcherType;)V

    .line 150
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->include()V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    move-object/from16 v19, v0

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_1
    invoke-virtual {v5, v10}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 201
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->included()V

    .line 202
    invoke-virtual {v5, v11}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 203
    invoke-virtual {v5, v12}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Lorg/eclipse/jetty/server/DispatcherType;)V

    .line 205
    return-void

    .line 133
    .end local v5    # "baseRequest":Lorg/eclipse/jetty/server/Request;
    .end local v10    # "old_attr":Lorg/eclipse/jetty/util/Attributes;
    .end local v11    # "old_params":Lorg/eclipse/jetty/util/MultiMap;
    .end local v12    # "old_type":Lorg/eclipse/jetty/server/DispatcherType;
    .restart local p1    # "request":Ljavax/servlet/ServletRequest;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_2
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v5

    goto :goto_0

    .line 155
    .restart local v5    # "baseRequest":Lorg/eclipse/jetty/server/Request;
    .restart local v10    # "old_attr":Lorg/eclipse/jetty/util/Attributes;
    .restart local v11    # "old_params":Lorg/eclipse/jetty/util/MultiMap;
    .restart local v12    # "old_type":Lorg/eclipse/jetty/server/DispatcherType;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/Dispatcher;->_dQuery:Ljava/lang/String;

    .line 157
    .local v14, "query":Ljava/lang/String;
    if-eqz v14, :cond_7

    .line 160
    if-nez v11, :cond_4

    .line 162
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 163
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v11

    .line 166
    :cond_4
    new-instance v13, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v13}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    .line 167
    .local v13, "parameters":Lorg/eclipse/jetty/util/MultiMap;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v14, v13, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    .line 169
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v18

    if-lez v18, :cond_6

    .line 172
    invoke-virtual {v11}, Lorg/eclipse/jetty/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 173
    .local v8, "iter":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 175
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 176
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 177
    .local v9, "name":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 178
    .local v17, "values":Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-static/range {v17 .. v17}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_5

    .line 179
    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v9, v0}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 182
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "i":I
    .end local v8    # "iter":Ljava/util/Iterator;
    .end local v9    # "name":Ljava/lang/String;
    .end local v17    # "values":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v5, v13}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 185
    .end local v13    # "parameters":Lorg/eclipse/jetty/util/MultiMap;
    :cond_7
    new-instance v4, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v10}, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;-><init>(Lorg/eclipse/jetty/server/Dispatcher;Lorg/eclipse/jetty/util/Attributes;)V

    .line 187
    .local v4, "attr":Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_requestURI:Ljava/lang/String;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_contextPath:Ljava/lang/String;

    .line 189
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_servletPath:Ljava/lang/String;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v4, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_pathInfo:Ljava/lang/String;

    .line 191
    iput-object v14, v4, Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;->_query:Ljava/lang/String;

    .line 193
    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    move-object/from16 v19, v0

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 200
    .end local v4    # "attr":Lorg/eclipse/jetty/server/Dispatcher$IncludeAttributes;
    .end local v14    # "query":Ljava/lang/String;
    :catchall_0
    move-exception v18

    invoke-virtual {v5, v10}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 201
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->included()V

    .line 202
    invoke-virtual {v5, v11}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 203
    invoke-virtual {v5, v12}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Lorg/eclipse/jetty/server/DispatcherType;)V

    .line 200
    throw v18
.end method
