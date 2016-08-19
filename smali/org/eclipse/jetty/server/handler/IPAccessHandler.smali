.class public Lorg/eclipse/jetty/server/handler/IPAccessHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "IPAccessHandler.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field _black:Lorg/eclipse/jetty/util/IPAddressMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/IPAddressMap",
            "<",
            "Lorg/eclipse/jetty/http/PathMap;",
            ">;"
        }
    .end annotation
.end field

.field _white:Lorg/eclipse/jetty/util/IPAddressMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/IPAddressMap",
            "<",
            "Lorg/eclipse/jetty/http/PathMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-class v0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 99
    new-instance v0, Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/IPAddressMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    .line 100
    new-instance v0, Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/IPAddressMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    .line 109
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "white"    # [Ljava/lang/String;
    .param p2, "black"    # [Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 99
    new-instance v0, Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/IPAddressMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    .line 100
    new-instance v0, Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/IPAddressMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    .line 122
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->setWhite([Ljava/lang/String;)V

    .line 124
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    .line 125
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->setBlack([Ljava/lang/String;)V

    .line 126
    :cond_1
    return-void
.end method


# virtual methods
.method protected add(Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V
    .locals 9
    .param p1, "entry"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/IPAddressMap",
            "<",
            "Lorg/eclipse/jetty/http/PathMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "patternMap":Lorg/eclipse/jetty/util/IPAddressMap;, "Lorg/eclipse/jetty/util/IPAddressMap<Lorg/eclipse/jetty/http/PathMap;>;"
    const/16 v8, 0x7c

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 212
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 214
    const/4 v1, 0x0

    .line 216
    .local v1, "deprecated":Z
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_6

    .line 218
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 226
    .local v2, "idx":I
    :goto_0
    if-lez v2, :cond_8

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "addr":Ljava/lang/String;
    :goto_1
    if-lez v2, :cond_9

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "path":Ljava/lang/String;
    :goto_2
    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 230
    const/4 v1, 0x1

    .line 231
    :cond_0
    if-eqz v3, :cond_2

    const-string v7, "|"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "/*."

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 232
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 234
    :cond_2
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/util/IPAddressMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/http/PathMap;

    .line 235
    .local v4, "pathMap":Lorg/eclipse/jetty/http/PathMap;
    if-nez v4, :cond_3

    .line 237
    new-instance v4, Lorg/eclipse/jetty/http/PathMap;

    .end local v4    # "pathMap":Lorg/eclipse/jetty/http/PathMap;
    invoke-direct {v4, v5}, Lorg/eclipse/jetty/http/PathMap;-><init>(Z)V

    .line 238
    .restart local v4    # "pathMap":Lorg/eclipse/jetty/http/PathMap;
    invoke-virtual {p2, v0, v4}, Lorg/eclipse/jetty/util/IPAddressMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_3
    if-eqz v3, :cond_4

    .line 241
    invoke-virtual {v4, v3, v3}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_4
    if-eqz v1, :cond_5

    .line 244
    sget-object v5, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - deprecated specification syntax: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v5, v7, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    .end local v0    # "addr":Ljava/lang/String;
    .end local v1    # "deprecated":Z
    .end local v2    # "idx":I
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "pathMap":Lorg/eclipse/jetty/http/PathMap;
    :cond_5
    return-void

    .line 222
    .restart local v1    # "deprecated":Z
    :cond_6
    const/16 v7, 0x2f

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 223
    .restart local v2    # "idx":I
    if-ltz v2, :cond_7

    move v1, v5

    :goto_3
    goto :goto_0

    :cond_7
    move v1, v6

    goto :goto_3

    :cond_8
    move-object v0, p1

    .line 226
    goto :goto_1

    .line 227
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_9
    const-string v3, "/*"

    goto :goto_2
.end method

.method public addBlack(Ljava/lang/String;)V
    .locals 1
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->add(Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V

    .line 148
    return-void
.end method

.method public addWhite(Ljava/lang/String;)V
    .locals 1
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->add(Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V

    .line 137
    return-void
.end method

.method protected doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 330
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    .line 332
    sget-object v0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 336
    :cond_0
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v1, " WHITELIST:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->dump(Ljava/lang/StringBuilder;Lorg/eclipse/jetty/util/IPAddressMap;)V

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v1, " BLACKLIST:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->dump(Ljava/lang/StringBuilder;Lorg/eclipse/jetty/util/IPAddressMap;)V

    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected dump(Ljava/lang/StringBuilder;Lorg/eclipse/jetty/util/IPAddressMap;)V
    .locals 5
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lorg/eclipse/jetty/util/IPAddressMap",
            "<",
            "Lorg/eclipse/jetty/http/PathMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p2, "patternMap":Lorg/eclipse/jetty/util/IPAddressMap;, "Lorg/eclipse/jetty/util/IPAddressMap<Lorg/eclipse/jetty/http/PathMap;>;"
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/IPAddressMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 367
    .local v0, "addr":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/util/IPAddressMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v4}, Lorg/eclipse/jetty/http/PathMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 369
    .local v3, "path":Ljava/lang/Object;
    const-string v4, "# "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v4, "|"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 373
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 376
    .end local v0    # "addr":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "path":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 4
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
    .line 182
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v1

    .line 183
    .local v1, "connection":Lorg/eclipse/jetty/server/AbstractHttpConnection;
    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v2

    .line 186
    .local v2, "endp":Lorg/eclipse/jetty/io/EndPoint;
    if-eqz v2, :cond_0

    .line 188
    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "addr":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->isAddrUriAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    const/16 v3, 0x193

    invoke-interface {p4, v3}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 192
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 199
    .end local v0    # "addr":Ljava/lang/String;
    .end local v2    # "endp":Lorg/eclipse/jetty/io/EndPoint;
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0
.end method

.method protected isAddrUriAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 280
    iget-object v10, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {v10}, Lorg/eclipse/jetty/util/IPAddressMap;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 282
    const/4 v4, 0x0

    .line 284
    .local v4, "match":Z
    iget-object v10, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {v10, p1}, Lorg/eclipse/jetty/util/IPAddressMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 285
    .local v7, "whiteObj":Ljava/lang/Object;
    if-eqz v7, :cond_2

    .line 287
    instance-of v10, v7, Ljava/util/List;

    if-eqz v10, :cond_4

    check-cast v7, Ljava/util/List;

    .end local v7    # "whiteObj":Ljava/lang/Object;
    move-object v6, v7

    .line 289
    .local v6, "whiteList":Ljava/util/List;
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 291
    .local v2, "entry":Ljava/lang/Object;
    check-cast v2, Ljava/util/Map$Entry;

    .end local v2    # "entry":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jetty/http/PathMap;

    .line 292
    .local v5, "pathMap":Lorg/eclipse/jetty/http/PathMap;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/eclipse/jetty/http/PathMap;->size()I

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v5, p2}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    :cond_1
    move v4, v9

    :goto_1
    if-eqz v4, :cond_0

    .line 297
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pathMap":Lorg/eclipse/jetty/http/PathMap;
    .end local v6    # "whiteList":Ljava/util/List;
    :cond_2
    if-nez v4, :cond_6

    .line 317
    .end local v4    # "match":Z
    :cond_3
    :goto_2
    return v8

    .line 287
    .restart local v4    # "match":Z
    .restart local v7    # "whiteObj":Ljava/lang/Object;
    :cond_4
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_0

    .end local v7    # "whiteObj":Ljava/lang/Object;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "pathMap":Lorg/eclipse/jetty/http/PathMap;
    .restart local v6    # "whiteList":Ljava/util/List;
    :cond_5
    move v4, v8

    .line 292
    goto :goto_1

    .line 301
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "match":Z
    .end local v5    # "pathMap":Lorg/eclipse/jetty/http/PathMap;
    .end local v6    # "whiteList":Ljava/util/List;
    :cond_6
    iget-object v10, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {v10}, Lorg/eclipse/jetty/util/IPAddressMap;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 303
    iget-object v10, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {v10, p1}, Lorg/eclipse/jetty/util/IPAddressMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 304
    .local v1, "blackObj":Ljava/lang/Object;
    if-eqz v1, :cond_9

    .line 306
    instance-of v10, v1, Ljava/util/List;

    if-eqz v10, :cond_8

    check-cast v1, Ljava/util/List;

    .end local v1    # "blackObj":Ljava/lang/Object;
    move-object v0, v1

    .line 308
    .local v0, "blackList":Ljava/util/List;
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 310
    .restart local v2    # "entry":Ljava/lang/Object;
    check-cast v2, Ljava/util/Map$Entry;

    .end local v2    # "entry":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jetty/http/PathMap;

    .line 311
    .restart local v5    # "pathMap":Lorg/eclipse/jetty/http/PathMap;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lorg/eclipse/jetty/http/PathMap;->size()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v5, p2}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_7

    goto :goto_2

    .line 306
    .end local v0    # "blackList":Ljava/util/List;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pathMap":Lorg/eclipse/jetty/http/PathMap;
    .restart local v1    # "blackObj":Ljava/lang/Object;
    :cond_8
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .end local v1    # "blackObj":Ljava/lang/Object;
    :cond_9
    move v8, v9

    .line 317
    goto :goto_2
.end method

.method protected set([Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V
    .locals 5
    .param p1, "entries"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/IPAddressMap",
            "<",
            "Lorg/eclipse/jetty/http/PathMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p2, "patternMap":Lorg/eclipse/jetty/util/IPAddressMap;, "Lorg/eclipse/jetty/util/IPAddressMap<Lorg/eclipse/jetty/http/PathMap;>;"
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/IPAddressMap;->clear()V

    .line 260
    if-eqz p1, :cond_0

    array-length v4, p1

    if-lez v4, :cond_0

    .line 262
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 264
    .local v0, "addrPath":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->add(Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "addrPath":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method

.method public setBlack([Ljava/lang/String;)V
    .locals 1
    .param p1, "entries"    # [Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->set([Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V

    .line 170
    return-void
.end method

.method public setWhite([Ljava/lang/String;)V
    .locals 1
    .param p1, "entries"    # [Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->set([Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V

    .line 159
    return-void
.end method
