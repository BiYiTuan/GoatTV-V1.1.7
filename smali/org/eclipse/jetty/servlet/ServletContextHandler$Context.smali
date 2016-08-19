.class public Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;
.super Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
.source "ServletContextHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/ServletContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Context"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/servlet/ServletContextHandler;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;)V

    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Ljava/lang/Class;)Lorg/eclipse/jetty/servlet/api/FilterRegistration$Dynamic;
    .locals 3
    .param p1, "filterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Filter;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/api/FilterRegistration$Dynamic;"
        }
    .end annotation

    .prologue
    .line 475
    .local p2, "filterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Filter;>;"
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 478
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 479
    .local v0, "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 480
    .local v1, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 482
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 483
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Lorg/eclipse/jetty/servlet/api/FilterRegistration$Dynamic;

    move-result-object v2

    return-object v2
.end method

.method public addFilter(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/api/FilterRegistration$Dynamic;
    .locals 3
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 492
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 495
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 496
    .local v0, "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 497
    .local v1, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 500
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Lorg/eclipse/jetty/servlet/api/FilterRegistration$Dynamic;

    move-result-object v2

    return-object v2
.end method

.method public addFilter(Ljava/lang/String;Ljavax/servlet/Filter;)Lorg/eclipse/jetty/servlet/api/FilterRegistration$Dynamic;
    .locals 3
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "filter"    # Ljavax/servlet/Filter;

    .prologue
    .line 510
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 513
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 514
    .local v0, "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 515
    .local v1, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setFilter(Ljavax/servlet/Filter;)V

    .line 517
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 518
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Lorg/eclipse/jetty/servlet/api/FilterRegistration$Dynamic;

    move-result-object v2

    return-object v2
.end method

.method public addListener(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 698
    .local p1, "listenerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/EventListener;>;"
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 699
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 703
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->createListener(Ljava/lang/Class;)Ljava/util/EventListener;

    move-result-object v1

    .line 704
    .local v1, "l":Ljava/util/EventListener;
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->addEventListener(Ljava/util/EventListener;)V
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    return-void

    .line 706
    .end local v1    # "l":Ljava/util/EventListener;
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Ljavax/servlet/ServletException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public addListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 673
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 674
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 677
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_1

    const-class v2, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-static {v2, p1}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 678
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/EventListener;>;"
    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->addListener(Ljava/lang/Class;)V

    .line 684
    return-void

    .line 677
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/EventListener;>;"
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 680
    :catch_0
    move-exception v1

    .line 682
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public addListener(Ljava/util/EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 689
    .local p1, "t":Ljava/util/EventListener;, "TT;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 692
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->addEventListener(Ljava/util/EventListener;)V

    .line 693
    return-void
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/Class;)Lorg/eclipse/jetty/servlet/api/ServletRegistration$Dynamic;
    .locals 3
    .param p1, "servletName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Servlet;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/api/ServletRegistration$Dynamic;"
        }
    .end annotation

    .prologue
    .line 527
    .local p2, "servletClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Servlet;>;"
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 528
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 530
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 531
    .local v0, "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder()Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 532
    .local v1, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 534
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 535
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Lorg/eclipse/jetty/servlet/api/ServletRegistration$Dynamic;

    move-result-object v2

    return-object v2
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/api/ServletRegistration$Dynamic;
    .locals 3
    .param p1, "servletName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 544
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 547
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 548
    .local v0, "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder()Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 549
    .local v1, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 552
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Lorg/eclipse/jetty/servlet/api/ServletRegistration$Dynamic;

    move-result-object v2

    return-object v2
.end method

.method public addServlet(Ljava/lang/String;Ljavax/servlet/Servlet;)Lorg/eclipse/jetty/servlet/api/ServletRegistration$Dynamic;
    .locals 3
    .param p1, "servletName"    # Ljava/lang/String;
    .param p2, "servlet"    # Ljavax/servlet/Servlet;

    .prologue
    .line 561
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 562
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 564
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 565
    .local v0, "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder()Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 566
    .local v1, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServlet(Ljavax/servlet/Servlet;)V

    .line 568
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 569
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Lorg/eclipse/jetty/servlet/api/ServletRegistration$Dynamic;

    move-result-object v2

    return-object v2
.end method

.method public createFilter(Ljava/lang/Class;)Ljavax/servlet/Filter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/servlet/Filter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 587
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/Filter;

    .line 588
    .local v2, "f":Ljavax/servlet/Filter;, "TT;"
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v4, v4, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 590
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v4, v4, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;

    .line 591
    .local v0, "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    invoke-interface {v0, v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;->decorateFilterInstance(Ljavax/servlet/Filter;)Ljavax/servlet/Filter;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 588
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 595
    .end local v0    # "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    .end local v2    # "f":Ljavax/servlet/Filter;, "TT;"
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 597
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljavax/servlet/ServletException;

    invoke-direct {v4, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 599
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 601
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljavax/servlet/ServletException;

    invoke-direct {v4, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 593
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .restart local v2    # "f":Ljavax/servlet/Filter;, "TT;"
    .restart local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public createListener(Ljava/lang/Class;)Ljava/util/EventListener;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 717
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 720
    .local v4, "l":Ljava/util/EventListener;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/EventListener;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 731
    :try_start_1
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v5, v5, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 733
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v5, v5, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;

    .line 734
    .local v1, "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    invoke-interface {v1, v4}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;->decorateListenerInstance(Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object v4

    .line 731
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 722
    .end local v1    # "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 724
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v5, Ljavax/servlet/ServletException;

    invoke-direct {v5, v2}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 738
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    .line 740
    .local v2, "e":Ljavax/servlet/ServletException;
    throw v2

    .line 726
    .end local v2    # "e":Ljavax/servlet/ServletException;
    :catch_2
    move-exception v2

    .line 728
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    new-instance v5, Ljavax/servlet/ServletException;

    invoke-direct {v5, v2}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catch Ljavax/servlet/ServletException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 742
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 744
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljavax/servlet/ServletException;

    invoke-direct {v5, v2}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 736
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i":I
    :cond_0
    return-object v4
.end method

.method public createServlet(Ljava/lang/Class;)Ljavax/servlet/Servlet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/servlet/Servlet;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 610
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/Servlet;

    .line 611
    .local v3, "s":Ljavax/servlet/Servlet;, "TT;"
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v4, v4, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 613
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v4, v4, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;

    .line 614
    .local v0, "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    invoke-interface {v0, v3}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;->decorateServletInstance(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 611
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 618
    .end local v0    # "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    .end local v2    # "i":I
    .end local v3    # "s":Ljavax/servlet/Servlet;, "TT;"
    :catch_0
    move-exception v1

    .line 620
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljavax/servlet/ServletException;

    invoke-direct {v4, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 622
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 624
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljavax/servlet/ServletException;

    invoke-direct {v4, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 616
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .restart local v2    # "i":I
    .restart local v3    # "s":Ljavax/servlet/Servlet;, "TT;"
    :cond_0
    return-object v3
.end method

.method public varargs declareRoles([Ljava/lang/String;)V
    .locals 3
    .param p1, "roleNames"    # [Ljava/lang/String;

    .prologue
    .line 751
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 752
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 755
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v2, v2, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_securityHandler:Lorg/eclipse/jetty/security/SecurityHandler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v2, v2, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_securityHandler:Lorg/eclipse/jetty/security/SecurityHandler;

    instance-of v2, v2, Lorg/eclipse/jetty/security/ConstraintAware;

    if-eqz v2, :cond_2

    .line 757
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 758
    .local v1, "union":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v2, v2, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_securityHandler:Lorg/eclipse/jetty/security/SecurityHandler;

    check-cast v2, Lorg/eclipse/jetty/security/ConstraintAware;

    invoke-interface {v2}, Lorg/eclipse/jetty/security/ConstraintAware;->getRoles()Ljava/util/Set;

    move-result-object v0

    .line 759
    .local v0, "existing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 760
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 761
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 762
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v2, v2, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_securityHandler:Lorg/eclipse/jetty/security/SecurityHandler;

    check-cast v2, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->setRoles(Ljava/util/Set;)V

    .line 764
    .end local v0    # "existing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "union":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public getFilterRegistration(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/api/FilterRegistration;
    .locals 2
    .param p1, "filterName"    # Ljava/lang/String;

    .prologue
    .line 630
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 631
    .local v0, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Lorg/eclipse/jetty/servlet/api/FilterRegistration$Dynamic;

    move-result-object v1

    goto :goto_0
.end method

.method public getFilterRegistrations()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lorg/eclipse/jetty/servlet/api/FilterRegistration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 637
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 638
    .local v6, "registrations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/eclipse/jetty/servlet/api/FilterRegistration;>;"
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v1

    .line 639
    .local v1, "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v3

    .line 640
    .local v3, "holders":[Lorg/eclipse/jetty/servlet/FilterHolder;
    if-eqz v3, :cond_0

    .line 642
    move-object v0, v3

    .local v0, "arr$":[Lorg/eclipse/jetty/servlet/FilterHolder;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 643
    .local v2, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Lorg/eclipse/jetty/servlet/api/FilterRegistration$Dynamic;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 645
    .end local v0    # "arr$":[Lorg/eclipse/jetty/servlet/FilterHolder;
    .end local v2    # "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    return-object v6
.end method

.method public getNamedDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    .line 464
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 465
    :cond_0
    const/4 v1, 0x0

    .line 466
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lorg/eclipse/jetty/server/Dispatcher;

    invoke-direct {v1, v0, p1}, Lorg/eclipse/jetty/server/Dispatcher;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getServletRegistration(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/api/ServletRegistration;
    .locals 2
    .param p1, "servletName"    # Ljava/lang/String;

    .prologue
    .line 651
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 652
    .local v0, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Lorg/eclipse/jetty/servlet/api/ServletRegistration$Dynamic;

    move-result-object v1

    goto :goto_0
.end method

.method public getServletRegistrations()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lorg/eclipse/jetty/servlet/api/ServletRegistration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 658
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 659
    .local v6, "registrations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/eclipse/jetty/servlet/api/ServletRegistration;>;"
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v1

    .line 660
    .local v1, "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v3

    .line 661
    .local v3, "holders":[Lorg/eclipse/jetty/servlet/ServletHolder;
    if-eqz v3, :cond_0

    .line 663
    move-object v0, v3

    .local v0, "arr$":[Lorg/eclipse/jetty/servlet/ServletHolder;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 664
    .local v2, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Lorg/eclipse/jetty/servlet/api/ServletRegistration$Dynamic;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 666
    .end local v0    # "arr$":[Lorg/eclipse/jetty/servlet/ServletHolder;
    .end local v2    # "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    return-object v6
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 576
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 579
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
