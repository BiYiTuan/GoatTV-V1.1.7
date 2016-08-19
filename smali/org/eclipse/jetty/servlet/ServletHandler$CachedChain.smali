.class Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;
.super Ljava/lang/Object;
.source "ServletHandler.java"

# interfaces
.implements Ljavax/servlet/FilterChain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/ServletHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedChain"
.end annotation


# instance fields
.field _filterHolder:Lorg/eclipse/jetty/servlet/FilterHolder;

.field _next:Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;

.field _servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

.field final synthetic this$0:Lorg/eclipse/jetty/servlet/ServletHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 2
    .param p2, "filters"    # Ljava/lang/Object;
    .param p3, "servletHolder"    # Lorg/eclipse/jetty/servlet/ServletHolder;

    .prologue
    const/4 v1, 0x0

    .line 1307
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->this$0:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1308
    invoke-static {p2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1310
    invoke-static {p2, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 1311
    invoke-static {p2, v1}, Lorg/eclipse/jetty/util/LazyList;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    .line 1312
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;-><init>(Lorg/eclipse/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/eclipse/jetty/servlet/ServletHolder;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_next:Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;

    .line 1316
    :goto_0
    return-void

    .line 1315
    :cond_0
    iput-object p3, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    goto :goto_0
.end method


# virtual methods
.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 9
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1322
    instance-of v4, p1, Lorg/eclipse/jetty/server/Request;

    if-eqz v4, :cond_1

    move-object v4, p1

    check-cast v4, Lorg/eclipse/jetty/server/Request;

    move-object v0, v4

    .line 1325
    .local v0, "baseRequest":Lorg/eclipse/jetty/server/Request;
    :goto_0
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eqz v4, :cond_4

    .line 1327
    # getter for: Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1328
    # getter for: Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call filter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1329
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterHolder;->getFilter()Ljavax/servlet/Filter;

    move-result-object v1

    .line 1330
    .local v1, "filter":Ljavax/servlet/Filter;
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterHolder;->isAsyncSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1331
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_next:Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;

    invoke-interface {v1, p1, p2, v4}, Ljavax/servlet/Filter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    .line 1368
    .end local v1    # "filter":Ljavax/servlet/Filter;
    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    :goto_1
    return-void

    .line 1322
    .end local v0    # "baseRequest":Lorg/eclipse/jetty/server/Request;
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_1
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    goto :goto_0

    .line 1334
    .restart local v0    # "baseRequest":Lorg/eclipse/jetty/server/Request;
    .restart local v1    # "filter":Ljavax/servlet/Filter;
    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->isAsyncSupported()Z

    move-result v3

    .line 1335
    .local v3, "suspendable":Z
    if-eqz v3, :cond_3

    .line 1339
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 1340
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_next:Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;

    invoke-interface {v1, p1, p2, v4}, Ljavax/servlet/Filter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1344
    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    throw v4

    .line 1348
    :cond_3
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_next:Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;

    invoke-interface {v1, p1, p2, v4}, Ljavax/servlet/Filter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    goto :goto_1

    .end local v1    # "filter":Ljavax/servlet/Filter;
    .end local v3    # "suspendable":Z
    :cond_4
    move-object v2, p1

    .line 1355
    check-cast v2, Ljavax/servlet/http/HttpServletRequest;

    .line 1356
    .local v2, "srequest":Ljavax/servlet/http/HttpServletRequest;
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v4, :cond_6

    .line 1358
    # getter for: Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1359
    # getter for: Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/servlet/ServletHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call servlet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1360
    :cond_5
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v4, v0, p1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->handle(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_1

    .line 1362
    :cond_6
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->this$0:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v4

    if-nez v4, :cond_7

    .line 1363
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->this$0:Lorg/eclipse/jetty/servlet/ServletHandler;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    invoke-virtual {v4, v2, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_1

    .line 1365
    .restart local p2    # "response":Ljavax/servlet/ServletResponse;
    :cond_7
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->this$0:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-interface {v2}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .end local p2    # "response":Ljavax/servlet/ServletResponse;
    invoke-virtual {v4, v5, v0, v2, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1372
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eqz v0, :cond_0

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_filterHolder:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_next:Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1376
    :goto_0
    return-object v0

    .line 1374
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v0, :cond_1

    .line 1375
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;->_servletHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1376
    :cond_1
    const-string v0, "null"

    goto :goto_0
.end method
