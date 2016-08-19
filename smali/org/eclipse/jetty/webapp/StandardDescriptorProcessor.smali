.class public Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;
.super Lorg/eclipse/jetty/webapp/IterativeDescriptorProcessor;
.source "StandardDescriptorProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final STANDARD_PROCESSOR:Ljava/lang/String; = "org.eclipse.jetty.standardDescriptorProcessor"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/IterativeDescriptorProcessor;-><init>()V

    .line 65
    :try_start_0
    const-string v1, "context-param"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitContextParam"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 66
    const-string v1, "display-name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitDisplayName"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 67
    const-string v1, "servlet"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitServlet"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 68
    const-string v1, "servlet-mapping"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitServletMapping"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 69
    const-string v1, "session-config"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitSessionConfig"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 70
    const-string v1, "mime-mapping"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitMimeMapping"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 71
    const-string v1, "welcome-file-list"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitWelcomeFileList"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 72
    const-string v1, "locale-encoding-mapping-list"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitLocaleEncodingList"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 73
    const-string v1, "error-page"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitErrorPage"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 74
    const-string v1, "taglib"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitTagLib"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 75
    const-string v1, "jsp-config"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitJspConfig"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 76
    const-string v1, "security-constraint"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitSecurityConstraint"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 77
    const-string v1, "login-config"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitLoginConfig"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 78
    const-string v1, "security-role"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitSecurityRole"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 79
    const-string v1, "filter"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitFilter"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 80
    const-string v1, "filter-mapping"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitFilterMapping"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 81
    const-string v1, "listener"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitListener"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 82
    const-string v1, "distributable"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitDistributable"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected addFilterMapping(Ljava/lang/String;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 11
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .param p3, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 787
    new-instance v3, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-direct {v3}, Lorg/eclipse/jetty/servlet/FilterMapping;-><init>()V

    .line 788
    .local v3, "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    .line 790
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v7, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "url-pattern"

    invoke-virtual {p2, v8}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    .line 792
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 794
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jetty/xml/XmlParser$Node;

    invoke-virtual {v8, v9, v10}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v6

    .line 795
    .local v6, "p":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 796
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 798
    .end local v6    # "p":Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Lorg/eclipse/jetty/servlet/FilterMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 800
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 801
    .local v5, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "servlet-name"

    invoke-virtual {p2, v8}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    .line 802
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 804
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jetty/xml/XmlParser$Node;

    invoke-virtual {v8, v9, v10}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v4

    .line 805
    .local v4, "n":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 807
    .end local v4    # "n":Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Lorg/eclipse/jetty/servlet/FilterMapping;->setServletNames([Ljava/lang/String;)V

    .line 810
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v1, "dispatches":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/server/DispatcherType;>;"
    const-string v8, "dispatcher"

    invoke-virtual {p2, v8}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    .line 812
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 814
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jetty/xml/XmlParser$Node;

    invoke-virtual {v8, v9, v10}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "d":Ljava/lang/String;
    invoke-static {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;->dispatch(Ljava/lang/String;)Lorg/eclipse/jetty/server/DispatcherType;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 818
    .end local v0    # "d":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 819
    invoke-static {v1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/eclipse/jetty/servlet/FilterMapping;->setDispatcherTypes(Ljava/util/EnumSet;)V

    .line 821
    :cond_3
    invoke-virtual {p3}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 822
    return-void
.end method

.method protected addServletMapping(Ljava/lang/String;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 7
    .param p1, "servletName"    # Ljava/lang/String;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .param p3, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;

    .prologue
    .line 765
    new-instance v1, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-direct {v1}, Lorg/eclipse/jetty/servlet/ServletMapping;-><init>()V

    .line 766
    .local v1, "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 768
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .local v3, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "url-pattern"

    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    .line 770
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 772
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 773
    .local v2, "p":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 774
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 776
    .end local v2    # "p":Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/eclipse/jetty/servlet/ServletMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 777
    invoke-virtual {p3}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletMapping(Lorg/eclipse/jetty/servlet/ServletMapping;)V

    .line 778
    return-void
.end method

.method protected addWelcomeFiles(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 5
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 746
    const-string v3, "welcome-file"

    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 747
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 749
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 750
    .local v0, "indexNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, "welcome":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWelcomeFiles()[Ljava/lang/String;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/webapp/WebAppContext;->setWelcomeFiles([Ljava/lang/String;)V

    goto :goto_0

    .line 755
    .end local v0    # "indexNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v2    # "welcome":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public end(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;

    .prologue
    .line 106
    return-void
.end method

.method protected getSystemClassPath(Lorg/eclipse/jetty/webapp/WebAppContext;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;

    .prologue
    .line 1443
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 1444
    .local v4, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1445
    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 1447
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1448
    .local v0, "classpath":Ljava/lang/StringBuilder;
    :goto_0
    if-eqz v4, :cond_4

    instance-of v7, v4, Ljava/net/URLClassLoader;

    if-eqz v7, :cond_4

    move-object v7, v4

    .line 1450
    check-cast v7, Ljava/net/URLClassLoader;

    invoke-virtual {v7}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v6

    .line 1451
    .local v6, "urls":[Ljava/net/URL;
    if-eqz v6, :cond_3

    .line 1453
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v6

    if-ge v3, v7, :cond_3

    .line 1457
    :try_start_0
    aget-object v7, v6, v3

    invoke-virtual {p1, v7}, Lorg/eclipse/jetty/webapp/WebAppContext;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    .line 1458
    .local v5, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    .line 1459
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1461
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1462
    sget-char v7, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1463
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1453
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1466
    :catch_0
    move-exception v1

    .line 1468
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v7, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1472
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 1473
    goto :goto_0

    .line 1474
    .end local v6    # "urls":[Ljava/net/URL;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method protected newListenerInstance(Lorg/eclipse/jetty/webapp/WebAppContext;Ljava/lang/Class;)Ljava/util/EventListener;
    .locals 3
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/webapp/WebAppContext;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/EventListener;",
            ">;)",
            "Ljava/util/EventListener;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1411
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/EventListener;>;"
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;

    invoke-virtual {v2, p2}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->createListener(Ljava/lang/Class;)Ljava/util/EventListener;
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1413
    :catch_0
    move-exception v1

    .line 1415
    .local v1, "se":Ljavax/servlet/ServletException;
    invoke-virtual {v1}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1416
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/lang/InstantiationException;

    if-eqz v2, :cond_0

    .line 1417
    check-cast v0, Ljava/lang/InstantiationException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 1418
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    instance-of v2, v0, Ljava/lang/IllegalAccessException;

    if-eqz v2, :cond_1

    .line 1419
    check-cast v0, Ljava/lang/IllegalAccessException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 1420
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    throw v1
.end method

.method protected normalizePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 1430
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1431
    .end local p1    # "p":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public start(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;

    .prologue
    .line 97
    return-void
.end method

.method public visitContextParam(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 7
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 115
    const-string v3, "param-name"

    invoke-virtual {p3, v3, v6, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "name":Ljava/lang/String;
    const-string v3, "param-value"

    invoke-virtual {p3, v3, v6, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "context-param."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v1

    .line 118
    .local v1, "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v3, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v1}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    sget-object v3, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    sget-object v3, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContextParam: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_1
    return-void

    .line 123
    :pswitch_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getInitParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "context-param."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 132
    :pswitch_1
    instance-of v3, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v3, :cond_0

    .line 134
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getInitParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "context-param."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 142
    :pswitch_2
    instance-of v3, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-eqz v3, :cond_0

    .line 144
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getInitParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflicting context-param "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected visitDisplayName(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 2
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 165
    instance-of v0, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setDisplayName(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v0

    const-string v1, "display-name"

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    .line 170
    :cond_0
    return-void
.end method

.method protected visitDistributable(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 1
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 1396
    check-cast p2, Lorg/eclipse/jetty/webapp/WebDescriptor;

    .end local p2    # "descriptor":Lorg/eclipse/jetty/webapp/Descriptor;
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/webapp/WebDescriptor;->setDistributable(Z)V

    .line 1397
    return-void
.end method

.method protected visitErrorPage(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 8
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 689
    const-string v5, "error-code"

    invoke-virtual {p3, v5, v6, v7}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, "error":Ljava/lang/String;
    const/4 v0, 0x0

    .line 691
    .local v0, "code":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 692
    :cond_0
    const-string v5, "exception-type"

    invoke-virtual {p3, v5, v6, v7}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 695
    :goto_0
    const-string v5, "location"

    invoke-virtual {p3, v5, v6, v7}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 698
    .local v3, "location":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/eclipse/jetty/server/handler/ErrorHandler;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    .line 701
    .local v2, "handler":Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v4

    .line 702
    .local v4, "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v5, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v4}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 738
    :cond_1
    :goto_1
    return-void

    .line 694
    .end local v2    # "handler":Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;
    .end local v3    # "location":Ljava/lang/String;
    .end local v4    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 707
    .restart local v2    # "handler":Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;
    .restart local v3    # "location":Ljava/lang/String;
    .restart local v4    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :pswitch_0
    if-lez v0, :cond_3

    .line 708
    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->addErrorPage(ILjava/lang/String;)V

    .line 711
    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_1

    .line 710
    :cond_3
    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->addErrorPage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 719
    :pswitch_1
    instance-of v5, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v5, :cond_1

    .line 721
    if-lez v0, :cond_4

    .line 722
    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->addErrorPage(ILjava/lang/String;)V

    .line 725
    :goto_3
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_1

    .line 724
    :cond_4
    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->addErrorPage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 732
    :pswitch_2
    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->getErrorPages()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 733
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Conflicting error-code or exception-type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 702
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected visitFilter(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 15
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 1166
    const-string v12, "filter-name"

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13, v14}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 1167
    .local v5, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v12

    invoke-virtual {v12, v5}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v3

    .line 1168
    .local v3, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    if-nez v3, :cond_0

    .line 1170
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v12

    invoke-virtual {v12}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v3

    .line 1171
    invoke-virtual {v3, v5}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 1172
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v12

    invoke-virtual {v12, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1175
    :cond_0
    const-string v12, "filter-class"

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13, v14}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 1176
    .local v2, "filter_class":Ljava/lang/String;
    if-eqz v2, :cond_1

    move-object/from16 v12, p2

    .line 1178
    check-cast v12, Lorg/eclipse/jetty/webapp/WebDescriptor;

    invoke-virtual {v12, v2}, Lorg/eclipse/jetty/webapp/WebDescriptor;->addClassName(Ljava/lang/String;)V

    .line 1180
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.filter-class"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v6

    .line 1181
    .local v6, "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v12, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v6}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 1213
    .end local v6    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_1
    :goto_0
    const-string v12, "init-param"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    .line 1214
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1216
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 1217
    .local v8, "paramNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v12, "param-name"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v9

    .line 1218
    .local v9, "pname":Ljava/lang/String;
    const-string v12, "param-value"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v10

    .line 1220
    .local v10, "pvalue":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.init-param."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v7

    .line 1221
    .local v7, "origin":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v12, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v7}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_1

    goto :goto_1

    .line 1226
    :pswitch_0
    invoke-virtual {v3, v9, v10}, Lorg/eclipse/jetty/servlet/FilterHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.init-param."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_1

    .line 1186
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .end local v7    # "origin":Lorg/eclipse/jetty/webapp/Origin;
    .end local v8    # "paramNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v9    # "pname":Ljava/lang/String;
    .end local v10    # "pvalue":Ljava/lang/String;
    .restart local v6    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :pswitch_1
    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 1187
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.filter-class"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_0

    .line 1195
    :pswitch_2
    move-object/from16 v0, p2

    instance-of v12, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v12, :cond_1

    .line 1197
    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 1198
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.filter-class"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_0

    .line 1205
    :pswitch_3
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterHolder;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1206
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Conflicting filter-class for filter "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1236
    .end local v6    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .restart local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .restart local v7    # "origin":Lorg/eclipse/jetty/webapp/Origin;
    .restart local v8    # "paramNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .restart local v9    # "pname":Ljava/lang/String;
    .restart local v10    # "pvalue":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p2

    instance-of v12, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v12, :cond_2

    .line 1238
    invoke-virtual {v3, v9, v10}, Lorg/eclipse/jetty/servlet/FilterHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.init-param."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_1

    .line 1246
    :pswitch_5
    invoke-virtual {v3, v9}, Lorg/eclipse/jetty/servlet/FilterHolder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1247
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Mismatching init-param "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1253
    .end local v7    # "origin":Lorg/eclipse/jetty/webapp/Origin;
    .end local v8    # "paramNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v9    # "pname":Ljava/lang/String;
    .end local v10    # "pvalue":Ljava/lang/String;
    :cond_3
    const-string v12, "async-supported"

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13, v14}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 1254
    .local v1, "async":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 1255
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_4
    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v3, v12}, Lorg/eclipse/jetty/servlet/FilterHolder;->setAsyncSupported(Z)V

    .line 1256
    :cond_5
    if-eqz v1, :cond_7

    .line 1258
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_6
    const/4 v11, 0x1

    .line 1259
    .local v11, "val":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.async-supported"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v6

    .line 1260
    .restart local v6    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v12, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v6}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_2

    .line 1291
    .end local v6    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .end local v11    # "val":Z
    :cond_7
    :goto_4
    return-void

    .line 1255
    :cond_8
    const/4 v12, 0x0

    goto :goto_2

    .line 1258
    :cond_9
    const/4 v11, 0x0

    goto :goto_3

    .line 1265
    .restart local v6    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .restart local v11    # "val":Z
    :pswitch_6
    invoke-virtual {v3, v11}, Lorg/eclipse/jetty/servlet/FilterHolder;->setAsyncSupported(Z)V

    .line 1266
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.async-supported"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_4

    .line 1274
    :pswitch_7
    move-object/from16 v0, p2

    instance-of v12, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v12, :cond_7

    .line 1276
    invoke-virtual {v3, v11}, Lorg/eclipse/jetty/servlet/FilterHolder;->setAsyncSupported(Z)V

    .line 1277
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.async-supported"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_4

    .line 1284
    :pswitch_8
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterHolder;->isAsyncSupported()Z

    move-result v12

    if-eq v12, v11, :cond_7

    .line 1285
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Conflicting async-supported="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " for filter "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1221
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1260
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected visitFilterMapping(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 5
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 1306
    const-string v2, "filter-name"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p3, v2, v3, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1308
    .local v0, "filter_name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".filter.mappings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v1

    .line 1310
    .local v1, "origin":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v2, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v1}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1337
    :cond_0
    :goto_0
    return-void

    .line 1315
    :pswitch_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".filter.mappings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    .line 1316
    invoke-virtual {p0, v0, p3, p1}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addFilterMapping(Ljava/lang/String;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/webapp/WebAppContext;)V

    goto :goto_0

    .line 1324
    :pswitch_1
    instance-of v2, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v2, :cond_0

    .line 1326
    invoke-virtual {p0, v0, p3, p1}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addFilterMapping(Ljava/lang/String;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/webapp/WebAppContext;)V

    goto :goto_0

    .line 1333
    :pswitch_2
    invoke-virtual {p0, v0, p3, p1}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addFilterMapping(Ljava/lang/String;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/webapp/WebAppContext;)V

    goto :goto_0

    .line 1310
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected visitJspConfig(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 17
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 846
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v14

    if-ge v6, v14, :cond_1

    .line 848
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 849
    .local v11, "o":Ljava/lang/Object;
    instance-of v14, v11, Lorg/eclipse/jetty/xml/XmlParser$Node;

    if-eqz v14, :cond_0

    const-string v15, "taglib"

    move-object v14, v11

    check-cast v14, Lorg/eclipse/jetty/xml/XmlParser$Node;

    invoke-virtual {v14}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 850
    check-cast v11, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .end local v11    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v11}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->visitTagLib(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    .line 846
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 855
    :cond_1
    const-string v14, "jsp-property-group"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v7

    .line 856
    .local v7, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 857
    .local v12, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 859
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 860
    .local v4, "group":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v14, "url-pattern"

    invoke-virtual {v4, v14}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v8

    .line 861
    .local v8, "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 863
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v13

    .line 864
    .local v13, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 865
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 869
    .end local v4    # "group":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v8    # "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .end local v13    # "url":Ljava/lang/String;
    :cond_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 871
    const-string v9, "jsp"

    .line 872
    .local v9, "jspName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v14

    const-string v15, "test.jsp"

    invoke-virtual {v14, v15}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v3

    .line 873
    .local v3, "entry":Ljava/util/Map$Entry;
    if-eqz v3, :cond_4

    .line 875
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 876
    .local v5, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v9

    .line 879
    .end local v5    # "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_4
    if-eqz v9, :cond_5

    .line 881
    new-instance v10, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-direct {v10}, Lorg/eclipse/jetty/servlet/ServletMapping;-><init>()V

    .line 882
    .local v10, "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    invoke-virtual {v10, v9}, Lorg/eclipse/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 883
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v12, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-virtual {v10, v14}, Lorg/eclipse/jetty/servlet/ServletMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 884
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v14

    invoke-virtual {v14, v10}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletMapping(Lorg/eclipse/jetty/servlet/ServletMapping;)V

    .line 887
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v9    # "jspName":Ljava/lang/String;
    .end local v10    # "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    :cond_5
    return-void
.end method

.method protected visitListener(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 13
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    const/4 v12, 0x0

    .line 1347
    const-string v10, "listener-class"

    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v12, v11}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 1348
    .local v2, "className":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1351
    .local v7, "listener":Ljava/util/EventListener;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 1355
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getEventListeners()[Ljava/util/EventListener;

    move-result-object v9

    .line 1356
    .local v9, "listeners":[Ljava/util/EventListener;
    if-eqz v9, :cond_2

    .line 1358
    move-object v1, v9

    .local v1, "arr$":[Ljava/util/EventListener;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v5, v1, v4

    .line 1360
    .local v5, "l":Ljava/util/EventListener;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1384
    .end local v1    # "arr$":[Ljava/util/EventListener;
    .end local v4    # "i$":I
    .end local v5    # "l":Ljava/util/EventListener;
    .end local v6    # "len$":I
    .end local v9    # "listeners":[Ljava/util/EventListener;
    :cond_0
    :goto_1
    return-void

    .line 1358
    .restart local v1    # "arr$":[Ljava/util/EventListener;
    .restart local v4    # "i$":I
    .restart local v5    # "l":Ljava/util/EventListener;
    .restart local v6    # "len$":I
    .restart local v9    # "listeners":[Ljava/util/EventListener;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1365
    .end local v1    # "arr$":[Ljava/util/EventListener;
    .end local v4    # "i$":I
    .end local v5    # "l":Ljava/util/EventListener;
    .end local v6    # "len$":I
    :cond_2
    move-object v0, p2

    check-cast v0, Lorg/eclipse/jetty/webapp/WebDescriptor;

    move-object v10, v0

    invoke-virtual {v10, v2}, Lorg/eclipse/jetty/webapp/WebDescriptor;->addClassName(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 1368
    .local v8, "listenerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/EventListener;>;"
    invoke-virtual {p0, p1, v8}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->newListenerInstance(Lorg/eclipse/jetty/webapp/WebAppContext;Ljava/lang/Class;)Ljava/util/EventListener;

    move-result-object v7

    .line 1369
    instance-of v10, v7, Ljava/util/EventListener;

    if-nez v10, :cond_3

    .line 1371
    sget-object v10, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not an EventListener: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v10, v11, v12}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1379
    .end local v8    # "listenerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/EventListener;>;"
    .end local v9    # "listeners":[Ljava/util/EventListener;
    :catch_0
    move-exception v3

    .line 1381
    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not instantiate listener "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1374
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "listenerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/EventListener;>;"
    .restart local v9    # "listeners":[Ljava/util/EventListener;
    :cond_3
    :try_start_1
    invoke-virtual {p1, v7}, Lorg/eclipse/jetty/webapp/WebAppContext;->addEventListener(Ljava/util/EventListener;)V

    .line 1375
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".listener"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected visitLocaleEncodingList(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 10
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 639
    const-string v5, "locale-encoding-mapping"

    invoke-virtual {p3, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 640
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 642
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 643
    .local v3, "mapping":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v5, "locale"

    invoke-virtual {v3, v5, v8, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 644
    .local v2, "locale":Ljava/lang/String;
    const-string v5, "encoding"

    invoke-virtual {v3, v5, v8, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "encoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "locale-encoding."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v4

    .line 649
    .local v4, "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v5, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v4}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 654
    :pswitch_0
    invoke-virtual {p1, v2, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->addLocaleEncoding(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "locale-encoding."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 663
    :pswitch_1
    instance-of v5, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v5, :cond_0

    .line 665
    invoke-virtual {p1, v2, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->addLocaleEncoding(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "locale-encoding."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 673
    :pswitch_2
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->getLocaleEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 674
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Conflicting locale-encoding mapping for locale "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 680
    .end local v0    # "encoding":Ljava/lang/String;
    .end local v2    # "locale":Ljava/lang/String;
    .end local v3    # "mapping":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v4    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_1
    return-void

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected visitLoginConfig(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 12
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 990
    const-string v9, "auth-method"

    invoke-virtual {p3, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v5

    .line 991
    .local v5, "method":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v5, :cond_5

    .line 994
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "auth-method"

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v8

    .line 995
    .local v8, "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v9, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v8}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1026
    :cond_0
    :goto_0
    const-string v9, "realm-name"

    invoke-virtual {p3, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v6

    .line 1027
    .local v6, "name":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-nez v6, :cond_6

    const-string v7, "default"

    .line 1028
    .local v7, "nameStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "realm-name"

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v8

    .line 1029
    sget-object v9, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v8}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    .line 1059
    :cond_1
    :goto_2
    const-string v9, "FORM"

    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v10

    invoke-virtual {v10}, Lorg/eclipse/jetty/security/SecurityHandler;->getAuthMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1061
    const-string v9, "form-login-config"

    invoke-virtual {p3, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v2

    .line 1062
    .local v2, "formConfig":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v2, :cond_7

    .line 1064
    const/4 v4, 0x0

    .line 1065
    .local v4, "loginPageName":Ljava/lang/String;
    const-string v9, "form-login-page"

    invoke-virtual {v2, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v3

    .line 1066
    .local v3, "loginPage":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v3, :cond_2

    .line 1067
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v4

    .line 1068
    :cond_2
    const/4 v1, 0x0

    .line 1069
    .local v1, "errorPageName":Ljava/lang/String;
    const-string v9, "form-error-page"

    invoke-virtual {v2, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v0

    .line 1070
    .local v0, "errorPage":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v0, :cond_3

    .line 1071
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v1

    .line 1074
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "form-login-page"

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v8

    .line 1075
    sget-object v9, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v8}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_2

    .line 1106
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "form-error-page"

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v8

    .line 1107
    sget-object v9, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v8}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_3

    .line 1143
    .end local v0    # "errorPage":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v1    # "errorPageName":Ljava/lang/String;
    .end local v2    # "formConfig":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v3    # "loginPage":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v4    # "loginPageName":Ljava/lang/String;
    .end local v6    # "name":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v7    # "nameStr":Ljava/lang/String;
    .end local v8    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_5
    :goto_4
    return-void

    .line 1000
    .restart local v8    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :pswitch_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/security/SecurityHandler;->setAuthMethod(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "auth-method"

    invoke-virtual {v9, v10, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_0

    .line 1009
    :pswitch_1
    instance-of v9, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v9, :cond_0

    .line 1011
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/security/SecurityHandler;->setAuthMethod(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "auth-method"

    invoke-virtual {v9, v10, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_0

    .line 1019
    :pswitch_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jetty/security/SecurityHandler;->getAuthMethod()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1020
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Conflicting auth-method value in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1027
    .restart local v6    # "name":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :cond_6
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 1034
    .restart local v7    # "nameStr":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    invoke-virtual {v9, v7}, Lorg/eclipse/jetty/security/SecurityHandler;->setRealmName(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "realm-name"

    invoke-virtual {v9, v10, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_2

    .line 1043
    :pswitch_4
    instance-of v9, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v9, :cond_1

    .line 1045
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    invoke-virtual {v9, v7}, Lorg/eclipse/jetty/security/SecurityHandler;->setRealmName(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "realm-name"

    invoke-virtual {v9, v10, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_2

    .line 1053
    :pswitch_5
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jetty/security/SecurityHandler;->getRealmName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1054
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Conflicting realm-name value in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1080
    .restart local v0    # "errorPage":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .restart local v1    # "errorPageName":Ljava/lang/String;
    .restart local v2    # "formConfig":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .restart local v3    # "loginPage":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .restart local v4    # "loginPageName":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    const-string v10, "org.eclipse.jetty.security.form_login_page"

    invoke-virtual {v9, v10, v4}, Lorg/eclipse/jetty/security/SecurityHandler;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1081
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "form-login-page"

    invoke-virtual {v9, v10, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_3

    .line 1089
    :pswitch_7
    instance-of v9, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v9, :cond_4

    .line 1091
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    const-string v10, "org.eclipse.jetty.security.form_login_page"

    invoke-virtual {v9, v10, v4}, Lorg/eclipse/jetty/security/SecurityHandler;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1092
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "form-login-page"

    invoke-virtual {v9, v10, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_3

    .line 1099
    :pswitch_8
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    const-string v10, "org.eclipse.jetty.security.form_login_page"

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/security/SecurityHandler;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1100
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Conflicting form-login-page value in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1112
    :pswitch_9
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    const-string v10, "org.eclipse.jetty.security.form_error_page"

    invoke-virtual {v9, v10, v1}, Lorg/eclipse/jetty/security/SecurityHandler;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1113
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "form-error-page"

    invoke-virtual {v9, v10, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_4

    .line 1121
    :pswitch_a
    instance-of v9, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v9, :cond_5

    .line 1123
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    const-string v10, "org.eclipse.jetty.security.form_error_page"

    invoke-virtual {v9, v10, v1}, Lorg/eclipse/jetty/security/SecurityHandler;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1124
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "form-error-page"

    invoke-virtual {v9, v10, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_4

    .line 1131
    :pswitch_b
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    const-string v10, "org.eclipse.jetty.security.form_error_page"

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/security/SecurityHandler;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1132
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Conflicting form-error-page value in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1139
    .end local v0    # "errorPage":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v1    # "errorPageName":Ljava/lang/String;
    .end local v3    # "loginPage":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v4    # "loginPageName":Ljava/lang/String;
    :cond_7
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "!form-login-config"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 995
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1029
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1075
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1107
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected visitMimeMapping(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 6
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 545
    const-string v3, "extension"

    invoke-virtual {p3, v3, v5, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 548
    :cond_0
    const-string v3, "mime-type"

    invoke-virtual {p3, v3, v5, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 551
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extension."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v2

    .line 552
    .local v2, "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v3, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v2}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 582
    .end local v2    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_1
    :goto_0
    return-void

    .line 557
    .restart local v2    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :pswitch_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/eclipse/jetty/http/MimeTypes;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extension."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 566
    :pswitch_1
    instance-of v3, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v3, :cond_1

    .line 568
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/eclipse/jetty/http/MimeTypes;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extension."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 576
    :pswitch_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;

    sget-object v4, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v4, v1}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 577
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflicting mime-type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for extension "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 552
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected visitSecurityConstraint(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 22
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 896
    new-instance v17, Lorg/eclipse/jetty/util/security/Constraint;

    invoke-direct/range {v17 .. v17}, Lorg/eclipse/jetty/util/security/Constraint;-><init>()V

    .line 902
    .local v17, "scBase":Lorg/eclipse/jetty/util/security/Constraint;
    :try_start_0
    const-string v19, "auth-constraint"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v3

    .line 904
    .local v3, "auths":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v3, :cond_2

    .line 906
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/security/Constraint;->setAuthenticate(Z)V

    .line 908
    const-string v19, "role-name"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v8

    .line 909
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .local v15, "roles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 912
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v14

    .line 913
    .local v14, "role":Ljava/lang/String;
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 973
    .end local v3    # "auths":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .end local v14    # "role":Ljava/lang/String;
    .end local v15    # "roles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 975
    .local v6, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v19, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 977
    .end local v6    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_0
    return-void

    .line 915
    .restart local v3    # "auths":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .restart local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .restart local v15    # "roles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/security/Constraint;->setRoles([Ljava/lang/String;)V

    .line 918
    .end local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .end local v15    # "roles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string v19, "user-data-constraint"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v5

    .line 919
    .local v5, "data":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v5, :cond_4

    .line 921
    const-string v19, "transport-guarantee"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v5

    .line 922
    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 923
    .local v7, "guarantee":Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_3

    const-string v19, "NONE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 924
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/security/Constraint;->setDataConstraint(I)V

    .line 935
    .end local v7    # "guarantee":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v19, "web-resource-collection"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v8

    .line 936
    .restart local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 938
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 939
    .local v4, "collection":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v19, "web-resource-name"

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v4, v0, v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v13

    .line 940
    .local v13, "name":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/security/Constraint;->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/eclipse/jetty/util/security/Constraint;

    .line 941
    .local v16, "sc":Lorg/eclipse/jetty/util/security/Constraint;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/eclipse/jetty/util/security/Constraint;->setName(Ljava/lang/String;)V

    .line 943
    const-string v19, "url-pattern"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v9

    .line 944
    .local v9, "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 946
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v18

    .line 947
    .local v18, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 949
    const-string v19, "http-method"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v10

    .line 950
    .local v10, "iter3":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 952
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 954
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v12

    .line 955
    .local v12, "method":Ljava/lang/String;
    new-instance v11, Lorg/eclipse/jetty/security/ConstraintMapping;

    invoke-direct {v11}, Lorg/eclipse/jetty/security/ConstraintMapping;-><init>()V

    .line 956
    .local v11, "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    invoke-virtual {v11, v12}, Lorg/eclipse/jetty/security/ConstraintMapping;->setMethod(Ljava/lang/String;)V

    .line 957
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->setPathSpec(Ljava/lang/String;)V

    .line 958
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->setConstraint(Lorg/eclipse/jetty/util/security/Constraint;)V

    .line 960
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v19

    check-cast v19, Lorg/eclipse/jetty/security/ConstraintAware;

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Lorg/eclipse/jetty/security/ConstraintAware;->addConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V

    goto :goto_3

    .line 925
    .end local v4    # "collection":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .end local v9    # "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .end local v10    # "iter3":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .end local v11    # "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    .end local v12    # "method":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v16    # "sc":Lorg/eclipse/jetty/util/security/Constraint;
    .end local v18    # "url":Ljava/lang/String;
    .restart local v7    # "guarantee":Ljava/lang/String;
    :cond_7
    const-string v19, "INTEGRAL"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 926
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/security/Constraint;->setDataConstraint(I)V

    goto/16 :goto_1

    .line 927
    :cond_8
    const-string v19, "CONFIDENTIAL"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 928
    const/16 v19, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/security/Constraint;->setDataConstraint(I)V

    goto/16 :goto_1

    .line 931
    :cond_9
    sget-object v19, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unknown user-data-constraint:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-interface/range {v19 .. v21}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 932
    const/16 v19, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/security/Constraint;->setDataConstraint(I)V

    goto/16 :goto_1

    .line 965
    .end local v7    # "guarantee":Ljava/lang/String;
    .restart local v4    # "collection":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .restart local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .restart local v9    # "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .restart local v10    # "iter3":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v16    # "sc":Lorg/eclipse/jetty/util/security/Constraint;
    .restart local v18    # "url":Ljava/lang/String;
    :cond_a
    new-instance v11, Lorg/eclipse/jetty/security/ConstraintMapping;

    invoke-direct {v11}, Lorg/eclipse/jetty/security/ConstraintMapping;-><init>()V

    .line 966
    .restart local v11    # "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->setPathSpec(Ljava/lang/String;)V

    .line 967
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->setConstraint(Lorg/eclipse/jetty/util/security/Constraint;)V

    .line 968
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v19

    check-cast v19, Lorg/eclipse/jetty/security/ConstraintAware;

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Lorg/eclipse/jetty/security/ConstraintAware;->addConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method protected visitSecurityRole(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 4
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 1153
    const-string v2, "role-name"

    invoke-virtual {p3, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v1

    .line 1154
    .local v1, "roleNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1155
    .local v0, "role":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/security/ConstraintAware;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/security/ConstraintAware;->addRole(Ljava/lang/String;)V

    .line 1156
    return-void
.end method

.method protected visitServlet(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 35
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 180
    const-string v30, "id"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 183
    .local v9, "id":Ljava/lang/String;
    const-string v30, "servlet-name"

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v27

    .line 184
    .local v27, "servlet_name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v7

    .line 189
    .local v7, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-nez v7, :cond_0

    .line 191
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder()Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v7

    .line 192
    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 197
    :cond_0
    const-string v30, "init-param"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v8

    .line 198
    .local v8, "iParamsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2

    .line 200
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 201
    .local v16, "paramNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v30, "param-name"

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v17

    .line 202
    .local v17, "pname":Ljava/lang/String;
    const-string v30, "param-value"

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v18

    .line 204
    .local v18, "pvalue":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".servlet.init-param."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v15

    .line 206
    .local v15, "origin":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v30, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v15}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v31

    aget v30, v30, v31

    packed-switch v30, :pswitch_data_0

    goto :goto_0

    .line 212
    :pswitch_0
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".servlet.init-param."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_0

    .line 222
    :pswitch_1
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    move/from16 v30, v0

    if-nez v30, :cond_1

    .line 224
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".servlet.init-param."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_0

    .line 232
    :pswitch_2
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1

    .line 233
    new-instance v30, Ljava/lang/IllegalStateException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Mismatching init-param "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 239
    .end local v15    # "origin":Lorg/eclipse/jetty/webapp/Origin;
    .end local v16    # "paramNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v17    # "pname":Ljava/lang/String;
    .end local v18    # "pvalue":Ljava/lang/String;
    :cond_2
    const-string v30, "servlet-class"

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v26

    .line 242
    .local v26, "servlet_class":Ljava/lang/String;
    const/4 v11, 0x0

    .line 243
    .local v11, "jspServletName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 244
    .local v10, "jspServletClass":Ljava/lang/String;
    const/4 v6, 0x0

    .line 245
    .local v6, "hasJSP":Z
    if-eqz v9, :cond_5

    const-string v30, "jsp"

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 247
    move-object/from16 v11, v27

    .line 248
    move-object/from16 v10, v26

    .line 251
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    const/4 v6, 0x1

    .line 259
    :goto_1
    const-string v30, "scratchdir"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    if-nez v30, :cond_4

    .line 261
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v29

    .line 262
    .local v29, "tmp":Ljava/io/File;
    new-instance v24, Ljava/io/File;

    const-string v30, "jsp"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    .local v24, "scratch":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_3

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdir()Z

    .line 264
    :cond_3
    const-string v30, "scratchdir"

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v30, "?"

    const-string v31, "classpath"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 268
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassPath()Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, "classpath":Ljava/lang/String;
    sget-object v30, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "classpath="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-interface/range {v30 .. v32}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    if-eqz v4, :cond_4

    .line 271
    const-string v30, "classpath"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0, v4}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .end local v4    # "classpath":Ljava/lang/String;
    .end local v24    # "scratch":Ljava/io/File;
    .end local v29    # "tmp":Ljava/io/File;
    :cond_4
    const-string v30, "org.apache.catalina.jsp_classpath"

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassPath()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    const-string v30, "com.sun.appserv.jsp.classpath"

    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->getSystemClassPath(Lorg/eclipse/jetty/webapp/WebAppContext;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_5
    if-eqz v26, :cond_6

    move-object/from16 v30, p2

    .line 285
    check-cast v30, Lorg/eclipse/jetty/webapp/WebDescriptor;

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/webapp/WebDescriptor;->addClassName(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".servlet.servlet-class"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v13

    .line 288
    .local v13, "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v30, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v13}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v31

    aget v30, v30, v31

    packed-switch v30, :pswitch_data_1

    .line 320
    .end local v13    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_6
    :goto_2
    const-string v30, "jsp-file"

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v12

    .line 321
    .local v12, "jsp_file":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 323
    invoke-virtual {v7, v12}, Lorg/eclipse/jetty/servlet/ServletHolder;->setForcedPath(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v7, v10}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 326
    const-string v30, "com.sun.appserv.jsp.classpath"

    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->getSystemClassPath(Lorg/eclipse/jetty/webapp/WebAppContext;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_7
    const-string v30, "load-on-startup"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v28

    .line 331
    .local v28, "startup":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v28, :cond_9

    .line 333
    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    .line 334
    .local v22, "s":Ljava/lang/String;
    const/4 v14, 0x0

    .line 335
    .local v14, "order":I
    const-string v30, "t"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 337
    sget-object v30, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v31, "Deprecated boolean load-on-startup.  Please use integer"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-interface/range {v30 .. v32}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    const/4 v14, 0x1

    .line 353
    :cond_8
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".servlet.load-on-startup"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v13

    .line 354
    .restart local v13    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v30, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v13}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v31

    aget v30, v30, v31

    packed-switch v30, :pswitch_data_2

    .line 385
    .end local v13    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .end local v14    # "order":I
    .end local v22    # "s":Ljava/lang/String;
    :cond_9
    :goto_4
    const-string v30, "security-role-ref"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v23

    .line 386
    .local v23, "sRefsIter":Ljava/util/Iterator;
    :cond_a
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_e

    .line 388
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 389
    .local v25, "securityRef":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v30, "role-name"

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v20

    .line 390
    .local v20, "roleName":Ljava/lang/String;
    const-string v30, "role-link"

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v19

    .line 391
    .local v19, "roleLink":Ljava/lang/String;
    if-eqz v20, :cond_d

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_d

    if-eqz v19, :cond_d

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_d

    .line 393
    sget-object v30, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v30 .. v30}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v30

    if-eqz v30, :cond_b

    sget-object v30, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "link role "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " to "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " for "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-interface/range {v30 .. v32}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".servlet.role-name."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v13

    .line 395
    .restart local v13    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v30, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v13}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v31

    aget v30, v30, v31

    packed-switch v30, :pswitch_data_3

    goto/16 :goto_5

    .line 400
    :pswitch_3
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setUserRoleLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".servlet.role-name."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_5

    .line 254
    .end local v12    # "jsp_file":Ljava/lang/String;
    .end local v13    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .end local v19    # "roleLink":Ljava/lang/String;
    .end local v20    # "roleName":Ljava/lang/String;
    .end local v23    # "sRefsIter":Ljava/util/Iterator;
    .end local v25    # "securityRef":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v28    # "startup":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :catch_0
    move-exception v5

    .line 256
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    sget-object v30, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v31, "NO JSP Support for {}, did not find {}"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getContextPath()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    aput-object v26, v32, v33

    invoke-interface/range {v30 .. v32}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    const-string v26, "org.eclipse.jetty.servlet.NoJspServlet"

    move-object/from16 v10, v26

    goto/16 :goto_1

    .line 293
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v13    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :pswitch_4
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".servlet.servlet-class"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_2

    .line 302
    :pswitch_5
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    move/from16 v30, v0

    if-nez v30, :cond_6

    .line 304
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".servlet.servlet-class"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_2

    .line 312
    :pswitch_6
    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_6

    .line 313
    new-instance v30, Ljava/lang/IllegalStateException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Conflicting servlet-class "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 344
    .end local v13    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .restart local v12    # "jsp_file":Ljava/lang/String;
    .restart local v14    # "order":I
    .restart local v22    # "s":Ljava/lang/String;
    .restart local v28    # "startup":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :cond_c
    if-eqz v22, :cond_8

    :try_start_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_8

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    goto/16 :goto_3

    .line 346
    :catch_1
    move-exception v5

    .line 348
    .local v5, "e":Ljava/lang/Exception;
    sget-object v30, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Cannot parse load-on-startup "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ". Please use integer"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-interface/range {v30 .. v32}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    sget-object v30, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v30

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 359
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v13    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :pswitch_7
    invoke-virtual {v7, v14}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitOrder(I)V

    .line 360
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".servlet.load-on-startup"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_4

    .line 368
    :pswitch_8
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    move/from16 v30, v0

    if-nez v30, :cond_9

    .line 370
    invoke-virtual {v7, v14}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitOrder(I)V

    .line 371
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".servlet.load-on-startup"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_4

    .line 378
    :pswitch_9
    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletHolder;->getInitOrder()I

    move-result v30

    move/from16 v0, v30

    if-eq v14, v0, :cond_9

    .line 379
    new-instance v30, Ljava/lang/IllegalStateException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Conflicting load-on-startup value in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 409
    .end local v14    # "order":I
    .end local v22    # "s":Ljava/lang/String;
    .restart local v19    # "roleLink":Ljava/lang/String;
    .restart local v20    # "roleName":Ljava/lang/String;
    .restart local v23    # "sRefsIter":Ljava/util/Iterator;
    .restart local v25    # "securityRef":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :pswitch_a
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    move/from16 v30, v0

    if-nez v30, :cond_a

    .line 411
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setUserRoleLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".servlet.role-name."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_5

    .line 418
    :pswitch_b
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getUserRoleLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_a

    .line 419
    new-instance v30, Ljava/lang/IllegalStateException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Conflicting role-link for role-name "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " for servlet "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 426
    .end local v13    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_d
    sget-object v30, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Ignored invalid security-role-ref element: servlet-name="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-interface/range {v30 .. v32}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 431
    .end local v19    # "roleLink":Ljava/lang/String;
    .end local v20    # "roleName":Ljava/lang/String;
    .end local v25    # "securityRef":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :cond_e
    const-string v30, "run-as"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v21

    .line 432
    .local v21, "run_as":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v21, :cond_f

    .line 434
    const-string v30, "role-name"

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v20

    .line 436
    .restart local v20    # "roleName":Ljava/lang/String;
    if-eqz v20, :cond_f

    .line 438
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".servlet.run-as"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v13

    .line 439
    .restart local v13    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v30, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v13}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v31

    aget v30, v30, v31

    packed-switch v30, :pswitch_data_4

    .line 470
    .end local v13    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .end local v20    # "roleName":Ljava/lang/String;
    :cond_f
    :goto_6
    return-void

    .line 444
    .restart local v13    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .restart local v20    # "roleName":Ljava/lang/String;
    :pswitch_c
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setRunAsRole(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".servlet.run-as"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_6

    .line 453
    :pswitch_d
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    move/from16 v30, v0

    if-nez v30, :cond_f

    .line 455
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setRunAsRole(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".servlet.run-as"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_6

    .line 463
    :pswitch_e
    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRunAsRole()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_f

    .line 464
    new-instance v30, Ljava/lang/IllegalStateException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Conflicting run-as role "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " for servlet "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " in "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 288
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 354
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 395
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 439
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method protected visitServletMapping(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 5
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 487
    const-string v2, "servlet-name"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p3, v2, v3, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "servlet_name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".servlet.mappings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v0

    .line 490
    .local v0, "origin":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v2, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 495
    :pswitch_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".servlet.mappings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    .line 496
    invoke-virtual {p0, v1, p3, p1}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addServletMapping(Ljava/lang/String;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/webapp/WebAppContext;)V

    goto :goto_0

    .line 505
    :pswitch_1
    instance-of v2, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v2, :cond_0

    .line 507
    invoke-virtual {p0, v1, p3, p1}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addServletMapping(Ljava/lang/String;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/webapp/WebAppContext;)V

    goto :goto_0

    .line 514
    :pswitch_2
    invoke-virtual {p0, v1, p3, p1}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addServletMapping(Ljava/lang/String;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/webapp/WebAppContext;)V

    goto :goto_0

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected visitSessionConfig(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 4
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 528
    const-string v2, "session-timeout"

    invoke-virtual {p3, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v0

    .line 529
    .local v0, "tNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v0, :cond_0

    .line 531
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 532
    .local v1, "timeout":I
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v2

    mul-int/lit8 v3, v1, 0x3c

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/server/SessionManager;->setMaxInactiveInterval(I)V

    .line 534
    .end local v1    # "timeout":I
    :cond_0
    return-void
.end method

.method protected visitTagLib(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 5
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 833
    const-string v2, "taglib-uri"

    invoke-virtual {p3, v2, v3, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, "uri":Ljava/lang/String;
    const-string v2, "taglib-location"

    invoke-virtual {p3, v2, v3, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "location":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setResourceAlias(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method protected visitWelcomeFileList(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 3
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 591
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v1

    const-string v2, "welcome-file-list"

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v0

    .line 592
    .local v0, "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v1, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 630
    :goto_0
    return-void

    .line 596
    :pswitch_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v1

    const-string v2, "welcome-file-list"

    invoke-virtual {v1, v2, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    .line 597
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addWelcomeFiles(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    goto :goto_0

    .line 603
    :pswitch_1
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addWelcomeFiles(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    goto :goto_0

    .line 610
    :pswitch_2
    instance-of v1, p2, Lorg/eclipse/jetty/webapp/DefaultsDescriptor;

    if-nez v1, :cond_0

    instance-of v1, p2, Lorg/eclipse/jetty/webapp/OverrideDescriptor;

    if-nez v1, :cond_0

    instance-of v1, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v1, :cond_0

    .line 612
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->setWelcomeFiles([Ljava/lang/String;)V

    .line 614
    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addWelcomeFiles(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    goto :goto_0

    .line 620
    :pswitch_3
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addWelcomeFiles(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    goto :goto_0

    .line 626
    :pswitch_4
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addWelcomeFiles(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    goto :goto_0

    .line 592
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
