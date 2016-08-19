.class public Lorg/eclipse/jetty/servlet/listener/ELContextCleaner;
.super Ljava/lang/Object;
.source "ELContextCleaner.java"

# interfaces
.implements Ljavax/servlet/ServletContextListener;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/eclipse/jetty/servlet/listener/ELContextCleaner;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/listener/ELContextCleaner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contextDestroyed(Ljavax/servlet/ServletContextEvent;)V
    .locals 7
    .param p1, "sce"    # Ljavax/servlet/ServletContextEvent;

    .prologue
    const/4 v6, 0x0

    .line 50
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "javax.el.BeanELResolver"

    invoke-static {v3, v4}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 53
    .local v0, "beanELResolver":Ljava/lang/Class;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/listener/ELContextCleaner;->getField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 56
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/servlet/listener/ELContextCleaner;->purgeEntries(Ljava/lang/reflect/Field;)V

    .line 58
    sget-object v3, Lorg/eclipse/jetty/servlet/listener/ELContextCleaner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "javax.el.BeanELResolver purged"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    .line 82
    .end local v0    # "beanELResolver":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v3, Lorg/eclipse/jetty/servlet/listener/ELContextCleaner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Cannot purge classes from javax.el.BeanELResolver"

    invoke-interface {v3, v4, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 69
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lorg/eclipse/jetty/servlet/listener/ELContextCleaner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Cannot purge classes from javax.el.BeanELResolver"

    invoke-interface {v3, v4, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Lorg/eclipse/jetty/servlet/listener/ELContextCleaner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Cannot purge classes from javax.el.BeanELResolver"

    invoke-interface {v3, v4, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    sget-object v3, Lorg/eclipse/jetty/servlet/listener/ELContextCleaner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Not cleaning cached beans: no such field javax.el.BeanELResolver.properties"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_4
    move-exception v3

    goto :goto_0
.end method

.method public contextInitialized(Ljavax/servlet/ServletContextEvent;)V
    .locals 0
    .param p1, "sce"    # Ljavax/servlet/ServletContextEvent;

    .prologue
    .line 43
    return-void
.end method

.method protected getField(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 1
    .param p1, "beanELResolver"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "properties"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0
.end method

.method protected purgeEntries(Ljava/lang/reflect/Field;)V
    .locals 7
    .param p1, "properties"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 97
    if-nez p1, :cond_1

    .line 120
    :cond_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 103
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    .local v2, "map":Ljava/util/concurrent/ConcurrentHashMap;
    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 108
    .local v1, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Class;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 111
    .local v0, "clazz":Ljava/lang/Class;
    sget-object v3, Lorg/eclipse/jetty/servlet/listener/ELContextCleaner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clazz: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " loaded by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 115
    sget-object v3, Lorg/eclipse/jetty/servlet/listener/ELContextCleaner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "removed"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_3
    sget-object v3, Lorg/eclipse/jetty/servlet/listener/ELContextCleaner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not removed: contextclassloader="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "clazz\'s classloader="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
