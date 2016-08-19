.class Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;
.super Ljavax/servlet/http/HttpServletRequestWrapper;
.source "Invoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/Invoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvokedRequest"
.end annotation


# instance fields
.field _included:Z

.field _pathInfo:Ljava/lang/String;

.field _servletPath:Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/jetty/servlet/Invoker;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/servlet/Invoker;Ljavax/servlet/http/HttpServletRequest;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p3, "included"    # Z
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "servletPath"    # Ljava/lang/String;
    .param p6, "pathInfo"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;->this$0:Lorg/eclipse/jetty/servlet/Invoker;

    .line 252
    invoke-direct {p0, p2}, Ljavax/servlet/http/HttpServletRequestWrapper;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    .line 253
    iput-boolean p3, p0, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;->_included:Z

    .line 254
    invoke-static {p5, p4}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;->_servletPath:Ljava/lang/String;

    .line 255
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;->_pathInfo:Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;->_pathInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;->_pathInfo:Ljava/lang/String;

    .line 258
    :cond_0
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;->_included:Z

    if-eqz v0, :cond_2

    .line 281
    const-string v0, "javax.servlet.include.request_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;->getContextPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;->_servletPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;->_pathInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    .line 283
    :cond_0
    const-string v0, "javax.servlet.include.path_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;->_pathInfo:Ljava/lang/String;

    goto :goto_0

    .line 285
    :cond_1
    const-string v0, "javax.servlet.include.servlet_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;->_servletPath:Ljava/lang/String;

    goto :goto_0

    .line 288
    :cond_2
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletRequestWrapper;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getPathInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;->_included:Z

    if-eqz v0, :cond_0

    .line 272
    invoke-super {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;->_pathInfo:Ljava/lang/String;

    goto :goto_0
.end method

.method public getServletPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;->_included:Z

    if-eqz v0, :cond_0

    .line 264
    invoke-super {p0}, Ljavax/servlet/http/HttpServletRequestWrapper;->getServletPath()Ljava/lang/String;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker$InvokedRequest;->_servletPath:Ljava/lang/String;

    goto :goto_0
.end method
