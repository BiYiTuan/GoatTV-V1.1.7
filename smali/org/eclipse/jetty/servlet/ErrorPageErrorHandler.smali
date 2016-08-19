.class public Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;
.super Lorg/eclipse/jetty/server/handler/ErrorHandler;
.source "ErrorPageErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;
    }
.end annotation


# static fields
.field public static final ERROR_PAGE:Ljava/lang/String; = "org.eclipse.jetty.server.error_page"

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _errorPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;",
            ">;"
        }
    .end annotation
.end field

.field private final _errorPages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _servletContext:Ljavax/servlet/ServletContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    .line 55
    return-void
.end method


# virtual methods
.method public addErrorPage(IILjava/lang/String;)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    new-instance v1, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;-><init>(Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method

.method public addErrorPage(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public addErrorPage(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "exception":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public addErrorPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionClassName"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 224
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->doStart()V

    .line 225
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_servletContext:Ljavax/servlet/ServletContext;

    .line 226
    return-void
.end method

.method protected doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->doStop()V

    .line 234
    return-void
.end method

.method public getErrorPages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 15
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, "method":Ljava/lang/String;
    const-string v12, "GET"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "POST"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "HEAD"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 67
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v12

    invoke-virtual {v12}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 149
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    if-eqz v12, :cond_8

    .line 72
    const/4 v6, 0x0

    .line 73
    .local v6, "error_page":Ljava/lang/String;
    const-string v12, "javax.servlet.error.exception_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 75
    .local v7, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v12, Ljavax/servlet/ServletException;

    invoke-virtual {v12, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 77
    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "error_page":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 78
    .restart local v6    # "error_page":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 80
    const-string v12, "javax.servlet.error.exception"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Throwable;

    .line 81
    .local v11, "th":Ljava/lang/Throwable;
    :goto_1
    instance-of v12, v11, Ljavax/servlet/ServletException;

    if-eqz v12, :cond_1

    .line 82
    check-cast v11, Ljavax/servlet/ServletException;

    .end local v11    # "th":Ljava/lang/Throwable;
    invoke-virtual {v11}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v11

    .restart local v11    # "th":Ljava/lang/Throwable;
    goto :goto_1

    .line 83
    :cond_1
    if-eqz v11, :cond_2

    .line 84
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 88
    .end local v11    # "th":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    if-nez v6, :cond_3

    if-eqz v7, :cond_3

    .line 90
    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "error_page":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 91
    .restart local v6    # "error_page":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_2

    .line 94
    :cond_3
    if-nez v6, :cond_4

    .line 97
    const-string v12, "javax.servlet.error.status_code"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 98
    .local v2, "code":Ljava/lang/Integer;
    if-eqz v2, :cond_4

    .line 100
    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "error_page":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 103
    .restart local v6    # "error_page":Ljava/lang/String;
    if-nez v6, :cond_4

    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    if-eqz v12, :cond_4

    .line 106
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_4

    .line 108
    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;

    .line 109
    .local v5, "errCode":Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v5, v12}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->isInRange(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 111
    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->getUri()Ljava/lang/String;

    move-result-object v6

    .line 119
    .end local v2    # "code":Ljava/lang/Integer;
    .end local v5    # "errCode":Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;
    .end local v8    # "i":I
    :cond_4
    if-eqz v6, :cond_8

    .line 121
    const-string v12, "org.eclipse.jetty.server.error_page"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 122
    .local v10, "old_error_page":Ljava/lang/String;
    if-eqz v10, :cond_5

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 124
    :cond_5
    const-string v12, "org.eclipse.jetty.server.error_page"

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v6}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v12, v6}, Ljavax/servlet/ServletContext;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/Dispatcher;

    .line 129
    .local v3, "dispatcher":Lorg/eclipse/jetty/server/Dispatcher;
    if-eqz v3, :cond_7

    .line 131
    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v3, v0, v1}, Lorg/eclipse/jetty/server/Dispatcher;->error(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 139
    :catch_0
    move-exception v4

    .line 141
    .local v4, "e":Ljavax/servlet/ServletException;
    sget-object v12, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "EXCEPTION "

    invoke-interface {v12, v13, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 106
    .end local v3    # "dispatcher":Lorg/eclipse/jetty/server/Dispatcher;
    .end local v4    # "e":Ljavax/servlet/ServletException;
    .end local v10    # "old_error_page":Ljava/lang/String;
    .restart local v2    # "code":Ljava/lang/Integer;
    .restart local v5    # "errCode":Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;
    .restart local v8    # "i":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 136
    .end local v2    # "code":Ljava/lang/Integer;
    .end local v5    # "errCode":Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;
    .end local v8    # "i":I
    .restart local v3    # "dispatcher":Lorg/eclipse/jetty/server/Dispatcher;
    .restart local v10    # "old_error_page":Ljava/lang/String;
    :cond_7
    :try_start_1
    sget-object v12, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No error page "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    .end local v3    # "dispatcher":Lorg/eclipse/jetty/server/Dispatcher;
    .end local v6    # "error_page":Ljava/lang/String;
    .end local v7    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "old_error_page":Ljava/lang/String;
    :cond_8
    invoke-super/range {p0 .. p4}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto/16 :goto_0
.end method

.method public setErrorPages(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "errorPages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 169
    :cond_0
    return-void
.end method
