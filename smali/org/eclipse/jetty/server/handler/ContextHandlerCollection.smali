.class public Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;
.super Lorg/eclipse/jetty/server/handler/HandlerCollection;
.source "ContextHandlerCollection.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _contextClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/eclipse/jetty/server/handler/ContextHandler;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _contextMap:Lorg/eclipse/jetty/http/PathMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;-><init>(Z)V

    .line 50
    const-class v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    .line 56
    return-void
.end method

.method private normalizeHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 318
    if-nez p1, :cond_1

    .line 319
    const/4 p1, 0x0

    .line 324
    .end local p1    # "host":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 321
    .restart local p1    # "host":Ljava/lang/String;
    :cond_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public addContext(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 3
    .param p1, "contextPath"    # Ljava/lang/String;
    .param p2, "resourceBase"    # Ljava/lang/String;

    .prologue
    .line 279
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 280
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setResourceBase(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->addHandler(Lorg/eclipse/jetty/server/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    return-object v0

    .line 285
    .end local v0    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 288
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->mapContexts()V

    .line 167
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->doStart()V

    .line 168
    return-void
.end method

.method public getContextClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 19
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v10

    .line 179
    .local v10, "handlers":[Lorg/eclipse/jetty/server/Handler;
    if-eqz v10, :cond_0

    array-length v0, v10

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v5

    .line 183
    .local v5, "async":Lorg/eclipse/jetty/server/AsyncContinuation;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsync()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 185
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AsyncContinuation;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v6

    .line 186
    .local v6, "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    if-eqz v6, :cond_2

    .line 188
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v6, v0, v1, v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 197
    .end local v6    # "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextMap:Lorg/eclipse/jetty/http/PathMap;

    move-object/from16 v16, v0

    .line 198
    .local v16, "map":Lorg/eclipse/jetty/http/PathMap;
    if-eqz v16, :cond_7

    if-eqz p1, :cond_7

    const-string v17, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 201
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/PathMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 203
    .local v7, "contexts":Ljava/lang/Object;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v17

    move/from16 v0, v17

    if-ge v13, v0, :cond_0

    .line 206
    invoke-static {v7, v13}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 207
    .local v8, "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 209
    .local v15, "list":Ljava/lang/Object;
    instance-of v0, v15, Ljava/util/Map;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object v12, v15

    .line 211
    check-cast v12, Ljava/util/Map;

    .line 212
    .local v12, "hosts":Ljava/util/Map;
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 215
    .local v11, "host":Ljava/lang/String;
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 216
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    invoke-static {v15}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v17

    move/from16 v0, v17

    if-ge v14, v0, :cond_3

    .line 218
    invoke-static {v15, v14}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/server/Handler;

    .line 219
    .local v9, "handler":Lorg/eclipse/jetty/server/Handler;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface {v9, v0, v1, v2, v3}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v17

    if-nez v17, :cond_0

    .line 216
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 225
    .end local v9    # "handler":Lorg/eclipse/jetty/server/Handler;
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "*."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 226
    const/4 v14, 0x0

    :goto_3
    invoke-static {v15}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v17

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 228
    invoke-static {v15, v14}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/server/Handler;

    .line 229
    .restart local v9    # "handler":Lorg/eclipse/jetty/server/Handler;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface {v9, v0, v1, v2, v3}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v17

    if-nez v17, :cond_0

    .line 226
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 236
    .end local v9    # "handler":Lorg/eclipse/jetty/server/Handler;
    :cond_4
    const-string v17, "*"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 237
    const/4 v14, 0x0

    :goto_4
    invoke-static {v15}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v17

    move/from16 v0, v17

    if-ge v14, v0, :cond_6

    .line 239
    invoke-static {v15, v14}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/server/Handler;

    .line 240
    .restart local v9    # "handler":Lorg/eclipse/jetty/server/Handler;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface {v9, v0, v1, v2, v3}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v17

    if-nez v17, :cond_0

    .line 237
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 247
    .end local v9    # "handler":Lorg/eclipse/jetty/server/Handler;
    .end local v11    # "host":Ljava/lang/String;
    .end local v12    # "hosts":Ljava/util/Map;
    .end local v14    # "j":I
    :cond_5
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_5
    invoke-static {v15}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v17

    move/from16 v0, v17

    if-ge v14, v0, :cond_6

    .line 249
    invoke-static {v15, v14}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/server/Handler;

    .line 250
    .restart local v9    # "handler":Lorg/eclipse/jetty/server/Handler;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface {v9, v0, v1, v2, v3}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v17

    if-nez v17, :cond_0

    .line 247
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 203
    .end local v9    # "handler":Lorg/eclipse/jetty/server/Handler;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 260
    .end local v7    # "contexts":Ljava/lang/Object;
    .end local v8    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "i":I
    .end local v14    # "j":I
    .end local v15    # "list":Ljava/lang/Object;
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v13, v0, :cond_0

    .line 262
    aget-object v17, v10, v13

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v17

    if-nez v17, :cond_0

    .line 260
    add-int/lit8 v13, v13, 0x1

    goto :goto_6
.end method

.method public mapContexts()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 65
    new-instance v2, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v2}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    .line 66
    .local v2, "contextMap":Lorg/eclipse/jetty/http/PathMap;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    .line 69
    .local v1, "branches":[Lorg/eclipse/jetty/server/Handler;
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_0
    if-eqz v1, :cond_b

    array-length v12, v1

    if-ge v0, v12, :cond_b

    .line 71
    const/4 v6, 0x0

    .line 73
    .local v6, "handlers":[Lorg/eclipse/jetty/server/Handler;
    aget-object v12, v1, v0

    instance-of v12, v12, Lorg/eclipse/jetty/server/handler/ContextHandler;

    if-eqz v12, :cond_1

    .line 75
    new-array v6, v14, [Lorg/eclipse/jetty/server/Handler;

    .end local v6    # "handlers":[Lorg/eclipse/jetty/server/Handler;
    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v6, v12

    .line 84
    .restart local v6    # "handlers":[Lorg/eclipse/jetty/server/Handler;
    :goto_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v12, v6

    if-ge v8, v12, :cond_a

    .line 86
    aget-object v5, v6, v8

    check-cast v5, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 88
    .local v5, "handler":Lorg/eclipse/jetty/server/handler/ContextHandler;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "contextPath":Ljava/lang/String;
    if-eqz v3, :cond_0

    const/16 v12, 0x2c

    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-gez v12, :cond_0

    const-string v12, "*"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 91
    :cond_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Illegal context spec:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 77
    .end local v3    # "contextPath":Ljava/lang/String;
    .end local v5    # "handler":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .end local v8    # "i":I
    :cond_1
    aget-object v12, v1, v0

    instance-of v12, v12, Lorg/eclipse/jetty/server/HandlerContainer;

    if-eqz v12, :cond_a

    .line 79
    aget-object v12, v1, v0

    check-cast v12, Lorg/eclipse/jetty/server/HandlerContainer;

    const-class v13, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-interface {v12, v13}, Lorg/eclipse/jetty/server/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v6

    goto :goto_1

    .line 93
    .restart local v3    # "contextPath":Ljava/lang/String;
    .restart local v5    # "handler":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .restart local v8    # "i":I
    :cond_2
    const-string v12, "/"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 94
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v14, :cond_4

    .line 98
    const-string v12, "/"

    invoke-virtual {v3, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 99
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    :cond_4
    :goto_3
    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/http/PathMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 105
    .local v4, "contexts":Ljava/lang/Object;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v11

    .line 108
    .local v11, "vhosts":[Ljava/lang/String;
    if-eqz v11, :cond_7

    array-length v12, v11

    if-lez v12, :cond_7

    .line 112
    instance-of v12, v4, Ljava/util/Map;

    if-eqz v12, :cond_6

    move-object v7, v4

    .line 113
    check-cast v7, Ljava/util/Map;

    .line 121
    .local v7, "hosts":Ljava/util/Map;
    :goto_4
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    array-length v12, v11

    if-ge v9, v12, :cond_8

    .line 123
    aget-object v10, v11, v9

    .line 124
    .local v10, "vhost":Ljava/lang/String;
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 125
    aget-object v12, v1, v0

    invoke-static {v4, v12}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 126
    invoke-interface {v7, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 100
    .end local v4    # "contexts":Ljava/lang/Object;
    .end local v7    # "hosts":Ljava/util/Map;
    .end local v9    # "j":I
    .end local v10    # "vhost":Ljava/lang/String;
    .end local v11    # "vhosts":[Ljava/lang/String;
    :cond_5
    const-string v12, "/*"

    invoke-virtual {v3, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 101
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 116
    .restart local v4    # "contexts":Ljava/lang/Object;
    .restart local v11    # "vhosts":[Ljava/lang/String;
    :cond_6
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 117
    .restart local v7    # "hosts":Ljava/util/Map;
    const-string v12, "*"

    invoke-interface {v7, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v2, v3, v7}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 129
    .end local v7    # "hosts":Ljava/util/Map;
    :cond_7
    instance-of v12, v4, Ljava/util/Map;

    if-eqz v12, :cond_9

    move-object v7, v4

    .line 131
    check-cast v7, Ljava/util/Map;

    .line 132
    .restart local v7    # "hosts":Ljava/util/Map;
    const-string v12, "*"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 133
    aget-object v12, v1, v0

    invoke-static {v4, v12}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 134
    const-string v12, "*"

    invoke-interface {v7, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v7    # "hosts":Ljava/util/Map;
    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 138
    :cond_9
    aget-object v12, v1, v0

    invoke-static {v4, v12}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 139
    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 69
    .end local v3    # "contextPath":Ljava/lang/String;
    .end local v4    # "contexts":Ljava/lang/Object;
    .end local v5    # "handler":Lorg/eclipse/jetty/server/handler/ContextHandler;
    .end local v8    # "i":I
    .end local v11    # "vhosts":[Ljava/lang/String;
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 143
    .end local v6    # "handlers":[Lorg/eclipse/jetty/server/Handler;
    :cond_b
    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextMap:Lorg/eclipse/jetty/http/PathMap;

    .line 145
    return-void
.end method

.method public setContextClass(Ljava/lang/Class;)V
    .locals 1
    .param p1, "contextClass"    # Ljava/lang/Class;

    .prologue
    .line 310
    if-eqz p1, :cond_0

    const-class v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 312
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    .line 313
    return-void
.end method

.method public setHandlers([Lorg/eclipse/jetty/server/Handler;)V
    .locals 1
    .param p1, "handlers"    # [Lorg/eclipse/jetty/server/Handler;

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextMap:Lorg/eclipse/jetty/http/PathMap;

    .line 157
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->setHandlers([Lorg/eclipse/jetty/server/Handler;)V

    .line 158
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->mapContexts()V

    .line 160
    :cond_0
    return-void
.end method
