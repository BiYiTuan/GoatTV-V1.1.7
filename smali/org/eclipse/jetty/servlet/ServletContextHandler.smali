.class public Lorg/eclipse/jetty/servlet/ServletContextHandler;
.super Lorg/eclipse/jetty/server/handler/ContextHandler;
.source "ServletContextHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;,
        Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;
    }
.end annotation


# static fields
.field public static final NO_SECURITY:I = 0x0

.field public static final NO_SESSIONS:I = 0x0

.field public static final SECURITY:I = 0x2

.field public static final SESSIONS:I = 0x1


# instance fields
.field protected final _decorators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;",
            ">;"
        }
    .end annotation
.end field

.field protected _defaultSecurityHandlerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/eclipse/jetty/security/SecurityHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected _options:I

.field protected _restrictedContextListeners:Ljava/lang/Object;

.field protected _securityHandler:Lorg/eclipse/jetty/security/SecurityHandler;

.field protected _servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

.field protected _sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

.field protected _wrapper:Lorg/eclipse/jetty/server/handler/HandlerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 82
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/servlet/ServletContextHandler;-><init>(Lorg/eclipse/jetty/server/HandlerContainer;Lorg/eclipse/jetty/server/session/SessionHandler;Lorg/eclipse/jetty/security/SecurityHandler;Lorg/eclipse/jetty/servlet/ServletHandler;Lorg/eclipse/jetty/server/handler/ErrorHandler;)V

    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0, v0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;-><init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;)V
    .locals 7
    .param p1, "parent"    # Lorg/eclipse/jetty/server/HandlerContainer;
    .param p2, "contextPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/servlet/ServletContextHandler;-><init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;Lorg/eclipse/jetty/server/session/SessionHandler;Lorg/eclipse/jetty/security/SecurityHandler;Lorg/eclipse/jetty/servlet/ServletHandler;Lorg/eclipse/jetty/server/handler/ErrorHandler;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;I)V
    .locals 7
    .param p1, "parent"    # Lorg/eclipse/jetty/server/HandlerContainer;
    .param p2, "contextPath"    # Ljava/lang/String;
    .param p3, "options"    # I

    .prologue
    const/4 v3, 0x0

    .line 100
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/servlet/ServletContextHandler;-><init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;Lorg/eclipse/jetty/server/session/SessionHandler;Lorg/eclipse/jetty/security/SecurityHandler;Lorg/eclipse/jetty/servlet/ServletHandler;Lorg/eclipse/jetty/server/handler/ErrorHandler;)V

    .line 101
    iput p3, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_options:I

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;Lorg/eclipse/jetty/server/session/SessionHandler;Lorg/eclipse/jetty/security/SecurityHandler;Lorg/eclipse/jetty/servlet/ServletHandler;Lorg/eclipse/jetty/server/handler/ErrorHandler;)V
    .locals 1
    .param p1, "parent"    # Lorg/eclipse/jetty/server/HandlerContainer;
    .param p2, "contextPath"    # Ljava/lang/String;
    .param p3, "sessionHandler"    # Lorg/eclipse/jetty/server/session/SessionHandler;
    .param p4, "securityHandler"    # Lorg/eclipse/jetty/security/SecurityHandler;
    .param p5, "servletHandler"    # Lorg/eclipse/jetty/servlet/ServletHandler;
    .param p6, "errorHandler"    # Lorg/eclipse/jetty/server/handler/ErrorHandler;

    .prologue
    .line 119
    const/4 v0, 0x0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    .line 71
    const-class v0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_defaultSecurityHandlerClass:Ljava/lang/Class;

    .line 120
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;-><init>(Lorg/eclipse/jetty/servlet/ServletContextHandler;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_scontext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 121
    iput-object p3, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    .line 122
    iput-object p4, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_securityHandler:Lorg/eclipse/jetty/security/SecurityHandler;

    .line 123
    iput-object p5, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    .line 125
    if-eqz p6, :cond_0

    .line 126
    invoke-virtual {p0, p6}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->setErrorHandler(Lorg/eclipse/jetty/server/handler/ErrorHandler;)V

    .line 128
    :cond_0
    if-eqz p2, :cond_1

    .line 129
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 131
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    if-eqz v0, :cond_3

    .line 132
    check-cast p1, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    .end local p1    # "parent":Lorg/eclipse/jetty/server/HandlerContainer;
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 135
    :cond_2
    :goto_0
    return-void

    .line 133
    .restart local p1    # "parent":Lorg/eclipse/jetty/server/HandlerContainer;
    :cond_3
    instance-of v0, p1, Lorg/eclipse/jetty/server/handler/HandlerCollection;

    if-eqz v0, :cond_2

    .line 134
    check-cast p1, Lorg/eclipse/jetty/server/handler/HandlerCollection;

    .end local p1    # "parent":Lorg/eclipse/jetty/server/HandlerContainer;
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->addHandler(Lorg/eclipse/jetty/server/Handler;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "parent"    # Lorg/eclipse/jetty/server/HandlerContainer;
    .param p2, "contextPath"    # Ljava/lang/String;
    .param p3, "sessions"    # Z
    .param p4, "security"    # Z

    .prologue
    const/4 v0, 0x0

    .line 107
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz p4, :cond_0

    const/4 v0, 0x2

    :cond_0
    or-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;-><init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;I)V

    .line 108
    return-void

    :cond_1
    move v1, v0

    .line 107
    goto :goto_0
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/HandlerContainer;Lorg/eclipse/jetty/server/session/SessionHandler;Lorg/eclipse/jetty/security/SecurityHandler;Lorg/eclipse/jetty/servlet/ServletHandler;Lorg/eclipse/jetty/server/handler/ErrorHandler;)V
    .locals 7
    .param p1, "parent"    # Lorg/eclipse/jetty/server/HandlerContainer;
    .param p2, "sessionHandler"    # Lorg/eclipse/jetty/server/session/SessionHandler;
    .param p3, "securityHandler"    # Lorg/eclipse/jetty/security/SecurityHandler;
    .param p4, "servletHandler"    # Lorg/eclipse/jetty/servlet/ServletHandler;
    .param p5, "errorHandler"    # Lorg/eclipse/jetty/server/handler/ErrorHandler;

    .prologue
    .line 113
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/servlet/ServletContextHandler;-><init>(Lorg/eclipse/jetty/server/HandlerContainer;Ljava/lang/String;Lorg/eclipse/jetty/server/session/SessionHandler;Lorg/eclipse/jetty/security/SecurityHandler;Lorg/eclipse/jetty/servlet/ServletHandler;Lorg/eclipse/jetty/server/handler/ErrorHandler;)V

    .line 114
    return-void
.end method


# virtual methods
.method public addDecorator(Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;)V
    .locals 1
    .param p1, "decorator"    # Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;

    .prologue
    .line 436
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    return-void
.end method

.method public addFilter(Ljava/lang/Class;Ljava/lang/String;I)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1
    .param p2, "pathSpec"    # Ljava/lang/String;
    .param p3, "dispatches"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Filter;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "filterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Filter;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Ljava/lang/Class;Ljava/lang/String;I)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    return-object v0
.end method

.method public addFilter(Ljava/lang/Class;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1
    .param p2, "pathSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Filter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lorg/eclipse/jetty/server/DispatcherType;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "filterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Filter;>;"
    .local p3, "dispatches":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/eclipse/jetty/server/DispatcherType;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Ljava/lang/Class;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    return-object v0
.end method

.method public addFilter(Ljava/lang/String;Ljava/lang/String;I)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1
    .param p1, "filterClass"    # Ljava/lang/String;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .param p3, "dispatches"    # I

    .prologue
    .line 357
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;I)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    return-object v0
.end method

.method public addFilter(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1
    .param p1, "filterClass"    # Ljava/lang/String;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lorg/eclipse/jetty/server/DispatcherType;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .prologue
    .line 332
    .local p3, "dispatches":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/eclipse/jetty/server/DispatcherType;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    return-object v0
.end method

.method public addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;I)V
    .locals 1
    .param p1, "holder"    # Lorg/eclipse/jetty/servlet/FilterHolder;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .param p3, "dispatches"    # I

    .prologue
    .line 341
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;I)V

    .line 342
    return-void
.end method

.method public addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 1
    .param p1, "holder"    # Lorg/eclipse/jetty/servlet/FilterHolder;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/servlet/FilterHolder;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lorg/eclipse/jetty/server/DispatcherType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p3, "dispatches":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/eclipse/jetty/server/DispatcherType;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 317
    return-void
.end method

.method public addServlet(Ljava/lang/Class;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 2
    .param p2, "pathSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Servlet;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/eclipse/jetty/servlet/ServletHolder;"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "servlet":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Servlet;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    return-object v0
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    return-object v0
.end method

.method public addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)V
    .locals 1
    .param p1, "servlet"    # Lorg/eclipse/jetty/servlet/ServletHolder;
    .param p2, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletWithMapping(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public callContextDestroyed(Ljavax/servlet/ServletContextListener;Ljavax/servlet/ServletContextEvent;)V
    .locals 0
    .param p1, "l"    # Ljavax/servlet/ServletContextListener;
    .param p2, "e"    # Ljavax/servlet/ServletContextEvent;

    .prologue
    .line 370
    invoke-interface {p1, p2}, Ljavax/servlet/ServletContextListener;->contextDestroyed(Ljavax/servlet/ServletContextEvent;)V

    .line 371
    return-void
.end method

.method public callContextInitialized(Ljavax/servlet/ServletContextListener;Ljavax/servlet/ServletContextEvent;)V
    .locals 0
    .param p1, "l"    # Ljavax/servlet/ServletContextListener;
    .param p2, "e"    # Ljavax/servlet/ServletContextEvent;

    .prologue
    .line 364
    invoke-interface {p1, p2}, Ljavax/servlet/ServletContextListener;->contextInitialized(Ljavax/servlet/ServletContextEvent;)V

    .line 365
    return-void
.end method

.method destroyFilter(Ljavax/servlet/Filter;)V
    .locals 3
    .param p1, "filter"    # Ljavax/servlet/Filter;

    .prologue
    .line 449
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;

    .line 450
    .local v0, "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;->destroyFilterInstance(Ljavax/servlet/Filter;)V

    goto :goto_0

    .line 451
    .end local v0    # "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    :cond_0
    return-void
.end method

.method destroyServlet(Ljavax/servlet/Servlet;)V
    .locals 3
    .param p1, "servlet"    # Ljavax/servlet/Servlet;

    .prologue
    .line 442
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;

    .line 443
    .local v0, "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;->destroyServletInstance(Ljavax/servlet/Servlet;)V

    goto :goto_0

    .line 444
    .end local v0    # "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    :cond_0
    return-void
.end method

.method protected doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->doStop()V

    .line 145
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_wrapper:Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_wrapper:Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 149
    :cond_1
    return-void
.end method

.method public getDecorators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSecurityHandlerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/eclipse/jetty/security/SecurityHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_defaultSecurityHandlerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_securityHandler:Lorg/eclipse/jetty/security/SecurityHandler;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->newSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_securityHandler:Lorg/eclipse/jetty/security/SecurityHandler;

    .line 262
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_securityHandler:Lorg/eclipse/jetty/security/SecurityHandler;

    return-object v0
.end method

.method public getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->newServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    return-object v0
.end method

.method public getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_options:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->newSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    return-object v0
.end method

.method protected newSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;
    .locals 2

    .prologue
    .line 180
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_defaultSecurityHandlerClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/security/SecurityHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected newServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;-><init>()V

    return-object v0
.end method

.method protected newSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/session/SessionHandler;-><init>()V

    return-object v0
.end method

.method public setDecorators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, "decorators":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 427
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 428
    return-void
.end method

.method public setDefaultSecurityHandlerClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/eclipse/jetty/security/SecurityHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "defaultSecurityHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/eclipse/jetty/security/SecurityHandler;>;"
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_defaultSecurityHandlerClass:Ljava/lang/Class;

    .line 167
    return-void
.end method

.method public setSecurityHandler(Lorg/eclipse/jetty/security/SecurityHandler;)V
    .locals 2
    .param p1, "securityHandler"    # Lorg/eclipse/jetty/security/SecurityHandler;

    .prologue
    .line 393
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "STARTED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_securityHandler:Lorg/eclipse/jetty/security/SecurityHandler;

    .line 397
    return-void
.end method

.method public setServletHandler(Lorg/eclipse/jetty/servlet/ServletHandler;)V
    .locals 2
    .param p1, "servletHandler"    # Lorg/eclipse/jetty/servlet/ServletHandler;

    .prologue
    .line 405
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "STARTED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    .line 409
    return-void
.end method

.method public setSessionHandler(Lorg/eclipse/jetty/server/session/SessionHandler;)V
    .locals 2
    .param p1, "sessionHandler"    # Lorg/eclipse/jetty/server/session/SessionHandler;

    .prologue
    .line 381
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "STARTED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    .line 385
    return-void
.end method

.method protected startContext()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    .line 204
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    .line 205
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    .line 207
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    .line 208
    .local v2, "handler":Lorg/eclipse/jetty/server/Handler;
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_securityHandler:Lorg/eclipse/jetty/security/SecurityHandler;

    if-eqz v7, :cond_0

    .line 210
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_securityHandler:Lorg/eclipse/jetty/security/SecurityHandler;

    invoke-virtual {v7, v2}, Lorg/eclipse/jetty/security/SecurityHandler;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 211
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_securityHandler:Lorg/eclipse/jetty/security/SecurityHandler;

    .line 214
    :cond_0
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v7, :cond_1

    .line 216
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v7, v2}, Lorg/eclipse/jetty/server/session/SessionHandler;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 217
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    .line 221
    :cond_1
    iput-object p0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_wrapper:Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    .line 222
    :goto_0
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_wrapper:Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    if-eq v7, v2, :cond_2

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_wrapper:Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v7

    instance-of v7, v7, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    if-eqz v7, :cond_2

    .line 223
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_wrapper:Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    iput-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_wrapper:Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    goto :goto_0

    .line 226
    :cond_2
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_wrapper:Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    if-eq v7, v2, :cond_4

    .line 228
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_wrapper:Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 229
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "!ScopedHandler"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 230
    :cond_3
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_wrapper:Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    invoke-virtual {v7, v2}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 233
    :cond_4
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->startContext()V

    .line 236
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 238
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_7

    .line 240
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;

    .line 241
    .local v1, "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 242
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .local v0, "arr$":[Lorg/eclipse/jetty/servlet/FilterHolder;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v6, :cond_5

    aget-object v3, v0, v5

    .line 243
    .local v3, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    invoke-interface {v1, v3}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;->decorateFilterHolder(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 242
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 244
    .end local v0    # "arr$":[Lorg/eclipse/jetty/servlet/FilterHolder;
    .end local v3    # "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_5
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 245
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    .local v0, "arr$":[Lorg/eclipse/jetty/servlet/ServletHolder;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v6, :cond_6

    aget-object v3, v0, v5

    .line 246
    .local v3, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    invoke-interface {v1, v3}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;->decorateServletHolder(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 245
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 238
    .end local v0    # "arr$":[Lorg/eclipse/jetty/servlet/ServletHolder;
    .end local v3    # "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 249
    .end local v1    # "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    :cond_7
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->initialize()V

    .line 251
    .end local v4    # "i":I
    :cond_8
    return-void
.end method
