.class public Lorg/eclipse/jetty/webapp/WebInfConfiguration;
.super Lorg/eclipse/jetty/webapp/AbstractConfiguration;
.source "WebInfConfiguration.java"


# static fields
.field public static final CONTAINER_JAR_PATTERN:Ljava/lang/String; = "org.eclipse.jetty.server.webapp.ContainerIncludeJarPattern"

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final RESOURCE_URLS:Ljava/lang/String; = "org.eclipse.jetty.resources"

.field public static final TEMPDIR_CONFIGURED:Ljava/lang/String; = "org.eclipse.jetty.tmpdirConfigured"

.field public static final WEBINF_JAR_PATTERN:Ljava/lang/String; = "org.eclipse.jetty.server.webapp.WebInfIncludeJarPattern"


# instance fields
.field protected _preUnpackBaseResource:Lorg/eclipse/jetty/util/resource/Resource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/eclipse/jetty/webapp/WebInfConfiguration;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/AbstractConfiguration;-><init>()V

    return-void
.end method

.method private asFile(Ljava/lang/Object;)Ljava/io/File;
    .locals 2
    .param p1, "fileattr"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 321
    if-nez p1, :cond_0

    move-object p1, v0

    .line 333
    .end local p1    # "fileattr":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 325
    .restart local p1    # "fileattr":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljava/io/File;

    if-eqz v1, :cond_1

    .line 327
    check-cast p1, Ljava/io/File;

    goto :goto_0

    .line 329
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 331
    new-instance v0, Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "fileattr":Ljava/lang/Object;
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    .restart local p1    # "fileattr":Ljava/lang/Object;
    :cond_2
    move-object p1, v0

    .line 333
    goto :goto_0
.end method

.method public static getCanonicalNameForWebAppTmpDir(Lorg/eclipse/jetty/webapp/WebAppContext;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;

    .prologue
    .line 586
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 587
    .local v1, "canonicalName":Ljava/lang/StringBuffer;
    const-string v12, "jetty-"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 590
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v9

    .line 591
    .local v9, "server":Lorg/eclipse/jetty/server/Server;
    if-eqz v9, :cond_4

    .line 593
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v12

    invoke-virtual {v12}, Lorg/eclipse/jetty/server/Server;->getConnectors()[Lorg/eclipse/jetty/server/Connector;

    move-result-object v2

    .line 595
    .local v2, "connectors":[Lorg/eclipse/jetty/server/Connector;
    array-length v12, v2

    if-lez v12, :cond_4

    .line 598
    if-eqz v2, :cond_0

    const/4 v12, 0x0

    aget-object v12, v2, v12

    if-nez v12, :cond_c

    :cond_0
    const-string v5, ""

    .line 599
    .local v5, "host":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_1

    .line 600
    const-string v5, "0.0.0.0"

    .line 601
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    const-string v12, "-"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    if-eqz v2, :cond_2

    const/4 v12, 0x0

    aget-object v12, v2, v12

    if-nez v12, :cond_d

    :cond_2
    const/4 v7, 0x0

    .line 609
    .local v7, "port":I
    :goto_1
    if-gez v7, :cond_3

    .line 610
    const/4 v12, 0x0

    aget-object v12, v2, v12

    invoke-interface {v12}, Lorg/eclipse/jetty/server/Connector;->getPort()I

    move-result v7

    .line 611
    :cond_3
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 612
    const-string v12, "-"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 620
    .end local v2    # "connectors":[Lorg/eclipse/jetty/server/Connector;
    .end local v5    # "host":Ljava/lang/String;
    .end local v7    # "port":I
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v8

    .line 621
    .local v8, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    if-nez v8, :cond_7

    .line 623
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_6

    .line 624
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getResourceBase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/eclipse/jetty/webapp/WebAppContext;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v8

    .line 627
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/eclipse/jetty/webapp/WebAppContext;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v8

    .line 630
    :cond_7
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/eclipse/jetty/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 631
    .local v10, "tmp":Ljava/lang/String;
    const-string v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 632
    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 633
    :cond_8
    const-string v12, "!"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 634
    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 636
    :cond_9
    const-string v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 637
    .local v6, "i":I
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 638
    const-string v12, "-"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    .end local v6    # "i":I
    .end local v8    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v10    # "tmp":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getContextPath()Ljava/lang/String;

    move-result-object v3

    .line 647
    .local v3, "contextPath":Ljava/lang/String;
    const/16 v12, 0x2f

    const/16 v13, 0x5f

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 648
    const/16 v12, 0x5c

    const/16 v13, 0x5f

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 649
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    const-string v12, "-"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 653
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v11

    .line 654
    .local v11, "vhosts":[Ljava/lang/String;
    if-eqz v11, :cond_a

    array-length v12, v11

    if-gtz v12, :cond_e

    .line 655
    :cond_a
    const-string v12, "any"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 660
    :goto_3
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-ge v6, v12, :cond_f

    .line 662
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 663
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "-."

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-gez v12, :cond_b

    .line 664
    const/16 v12, 0x2e

    invoke-virtual {v1, v6, v12}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 660
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 598
    .end local v0    # "c":C
    .end local v3    # "contextPath":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v11    # "vhosts":[Ljava/lang/String;
    .restart local v2    # "connectors":[Lorg/eclipse/jetty/server/Connector;
    :cond_c
    const/4 v12, 0x0

    aget-object v12, v2, v12

    invoke-interface {v12}, Lorg/eclipse/jetty/server/Connector;->getHost()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 606
    .restart local v5    # "host":Ljava/lang/String;
    :cond_d
    const/4 v12, 0x0

    aget-object v12, v2, v12

    invoke-interface {v12}, Lorg/eclipse/jetty/server/Connector;->getLocalPort()I

    move-result v7

    goto/16 :goto_1

    .line 640
    .end local v2    # "connectors":[Lorg/eclipse/jetty/server/Connector;
    .end local v5    # "host":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 642
    .local v4, "e":Ljava/lang/Exception;
    sget-object v12, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "Can\'t generate resourceBase as part of webapp tmp dir name"

    invoke-interface {v12, v13, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 657
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "contextPath":Ljava/lang/String;
    .restart local v11    # "vhosts":[Ljava/lang/String;
    :cond_e
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 667
    .restart local v6    # "i":I
    :cond_f
    const-string v12, "-"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 668
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method


# virtual methods
.method public cloneConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 4
    .param p1, "template"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {p2}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->getCanonicalNameForWebAppTmpDir(Lorg/eclipse/jetty/webapp/WebAppContext;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 193
    .local v0, "tmpDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-static {v0}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 197
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 199
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setTempDirectory(Ljava/io/File;)V

    .line 200
    return-void
.end method

.method public configure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 12
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isStarted()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 128
    sget-object v9, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 129
    sget-object v9, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot configure webapp "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " after it is started"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWebInf()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v8

    .line 136
    .local v8, "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    instance-of v9, v9, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    if-eqz v9, :cond_4

    .line 139
    const-string v9, "classes/"

    invoke-virtual {v8, v9}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 140
    .local v0, "classes":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 141
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    invoke-virtual {v9, v0}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->addClassPath(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 144
    :cond_2
    const-string v9, "lib/"

    invoke-virtual {v8, v9}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    .line 145
    .local v5, "lib":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 146
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    invoke-virtual {v9, v5}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->addJars(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 151
    .end local v0    # "classes":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v5    # "lib":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_4
    const-string v9, "org.eclipse.jetty.resources"

    invoke-virtual {p1, v9}, Lorg/eclipse/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 152
    .local v7, "resources":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    if-eqz v7, :cond_0

    .line 154
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [Lorg/eclipse/jetty/util/resource/Resource;

    .line 155
    .local v1, "collection":[Lorg/eclipse/jetty/util/resource/Resource;
    const/4 v2, 0x0

    .line 156
    .local v2, "i":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v9

    aput-object v9, v1, v2

    .line 157
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/util/resource/Resource;

    .line 158
    .local v6, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aput-object v6, v1, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 159
    .end local v6    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_5
    new-instance v9, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    invoke-direct {v9, v1}, Lorg/eclipse/jetty/util/resource/ResourceCollection;-><init>([Lorg/eclipse/jetty/util/resource/Resource;)V

    invoke-virtual {p1, v9}, Lorg/eclipse/jetty/webapp/WebAppContext;->setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V

    goto :goto_0
.end method

.method public deconfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 3
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 167
    const-string v1, "org.eclipse.jetty.tmpdirConfigured"

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 169
    .local v0, "tmpdirConfigured":Ljava/lang/Boolean;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->isTempWorkDirectory(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 172
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->setTempDirectory(Ljava/io/File;)V

    .line 176
    const-string v1, "org.eclipse.jetty.tmpdirConfigured"

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    const-string v1, "javax.servlet.context.tempdir"

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->_preUnpackBaseResource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 183
    return-void
.end method

.method protected findJars(Lorg/eclipse/jetty/webapp/WebAppContext;)Ljava/util/List;
    .locals 13
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/webapp/WebAppContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 680
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v7, "jarResources":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWebInf()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v8

    .line 683
    .local v8, "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    :cond_0
    move-object v7, v10

    .line 711
    .end local v7    # "jarResources":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    :cond_1
    return-object v7

    .line 686
    .restart local v7    # "jarResources":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    :cond_2
    const-string v11, "/lib"

    invoke-virtual {v8, v11}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v9

    .line 689
    .local v9, "web_inf_lib":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v9}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 691
    invoke-virtual {v9}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v5

    .line 692
    .local v5, "files":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "f":I
    :goto_0
    if-eqz v5, :cond_1

    array-length v11, v5

    if-ge v3, v11, :cond_1

    .line 696
    :try_start_0
    aget-object v11, v5, v3

    invoke-virtual {v9, v11}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 697
    .local v4, "file":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 698
    .local v6, "fnlc":Ljava/lang/String;
    const/16 v11, 0x2e

    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 699
    .local v0, "dot":I
    if-gez v0, :cond_5

    move-object v2, v10

    .line 700
    .local v2, "extension":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_4

    const-string v11, ".jar"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, ".zip"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 702
    :cond_3
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    .end local v0    # "dot":I
    .end local v2    # "extension":Ljava/lang/String;
    .end local v4    # "file":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v6    # "fnlc":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 699
    .restart local v0    # "dot":I
    .restart local v4    # "file":Lorg/eclipse/jetty/util/resource/Resource;
    .restart local v6    # "fnlc":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 705
    .end local v0    # "dot":I
    .end local v4    # "file":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v6    # "fnlc":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 707
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v11, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "EXCEPTION "

    invoke-interface {v11, v12, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public findWorkDirectory(Lorg/eclipse/jetty/webapp/WebAppContext;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWebInf()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 548
    .local v0, "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "work"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 553
    .end local v0    # "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTempWorkDirectory(Ljava/io/File;)Z
    .locals 4
    .param p1, "tmpDir"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 564
    if-nez p1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return v1

    .line 566
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "work"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 567
    const/4 v1, 0x1

    goto :goto_0

    .line 568
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 569
    .local v0, "t":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "work"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public makeTempDirectory(Ljava/io/File;Lorg/eclipse/jetty/webapp/WebAppContext;Z)V
    .locals 8
    .param p1, "parent"    # Ljava/io/File;
    .param p2, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p3, "deleteExisting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 341
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 343
    invoke-static {p2}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->getCanonicalNameForWebAppTmpDir(Lorg/eclipse/jetty/webapp/WebAppContext;)Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "temp":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 346
    .local v3, "tmpDir":Ljava/io/File;
    if-eqz p3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 348
    invoke-static {v3}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 350
    sget-object v4, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete temp dir "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 356
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "old":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 358
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 359
    invoke-static {v3}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 360
    :cond_1
    sget-object v4, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t reuse "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", using "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    .end local v0    # "old":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 365
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 368
    :cond_3
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->isTempWorkDirectory(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 370
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    .line 372
    new-instance v1, Ljava/io/File;

    const-string v4, ".active"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 373
    .local v1, "sentinel":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 374
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 377
    .end local v1    # "sentinel":Ljava/io/File;
    :cond_4
    sget-object v4, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 378
    sget-object v4, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set temp dir "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    :cond_5
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/webapp/WebAppContext;->setTempDirectory(Ljava/io/File;)V

    .line 381
    .end local v2    # "temp":Ljava/lang/String;
    .end local v3    # "tmpDir":Ljava/io/File;
    :cond_6
    return-void
.end method

.method public preConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 27
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->findWorkDirectory(Lorg/eclipse/jetty/webapp/WebAppContext;)Ljava/io/File;

    move-result-object v22

    .line 45
    .local v22, "work":Ljava/io/File;
    if-eqz v22, :cond_0

    .line 46
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->makeTempDirectory(Ljava/io/File;Lorg/eclipse/jetty/webapp/WebAppContext;Z)V

    .line 49
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->resolveTempDirectory(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 52
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->unpack(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 57
    const-string v23, "org.eclipse.jetty.server.webapp.WebInfIncludeJarPattern"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 58
    .local v16, "tmp":Ljava/lang/String;
    if-nez v16, :cond_1

    const/16 v21, 0x0

    .line 59
    .local v21, "webInfPattern":Ljava/util/regex/Pattern;
    :goto_0
    const-string v23, "org.eclipse.jetty.server.webapp.ContainerIncludeJarPattern"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "tmp":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 60
    .restart local v16    # "tmp":Ljava/lang/String;
    if-nez v16, :cond_2

    const/4 v6, 0x0

    .line 64
    .local v6, "containerPattern":Ljava/util/regex/Pattern;
    :goto_1
    new-instance v5, Lorg/eclipse/jetty/webapp/WebInfConfiguration$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lorg/eclipse/jetty/webapp/WebInfConfiguration$1;-><init>(Lorg/eclipse/jetty/webapp/WebInfConfiguration;Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 71
    .local v5, "containerJarNameMatcher":Lorg/eclipse/jetty/util/PatternMatcher;
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    .line 72
    .local v14, "loader":Ljava/lang/ClassLoader;
    :goto_2
    if-eqz v14, :cond_5

    instance-of v0, v14, Ljava/net/URLClassLoader;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v23, v14

    .line 74
    check-cast v23, Ljava/net/URLClassLoader;

    invoke-virtual/range {v23 .. v23}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v19

    .line 75
    .local v19, "urls":[Ljava/net/URL;
    if-eqz v19, :cond_4

    .line 77
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v7, v0, [Ljava/net/URI;

    .line 78
    .local v7, "containerUris":[Ljava/net/URI;
    const/4 v9, 0x0

    .line 79
    .local v9, "i":I
    move-object/from16 v4, v19

    .local v4, "arr$":[Ljava/net/URL;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_3
    if-ge v11, v13, :cond_3

    aget-object v17, v4, v11

    .line 83
    .local v17, "u":Ljava/net/URL;
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v23

    aput-object v23, v7, v9
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 79
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 58
    .end local v4    # "arr$":[Ljava/net/URL;
    .end local v5    # "containerJarNameMatcher":Lorg/eclipse/jetty/util/PatternMatcher;
    .end local v6    # "containerPattern":Ljava/util/regex/Pattern;
    .end local v7    # "containerUris":[Ljava/net/URI;
    .end local v9    # "i":I
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "loader":Ljava/lang/ClassLoader;
    .end local v17    # "u":Ljava/net/URL;
    .end local v19    # "urls":[Ljava/net/URL;
    .end local v21    # "webInfPattern":Ljava/util/regex/Pattern;
    :cond_1
    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v21

    goto :goto_0

    .line 60
    .restart local v21    # "webInfPattern":Ljava/util/regex/Pattern;
    :cond_2
    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    goto :goto_1

    .line 85
    .restart local v4    # "arr$":[Ljava/net/URL;
    .restart local v5    # "containerJarNameMatcher":Lorg/eclipse/jetty/util/PatternMatcher;
    .restart local v6    # "containerPattern":Ljava/util/regex/Pattern;
    .restart local v7    # "containerUris":[Ljava/net/URI;
    .restart local v9    # "i":I
    .restart local v11    # "i$":I
    .restart local v13    # "len$":I
    .restart local v14    # "loader":Ljava/lang/ClassLoader;
    .restart local v17    # "u":Ljava/net/URL;
    .restart local v19    # "urls":[Ljava/net/URL;
    :catch_0
    move-exception v8

    .line 87
    .local v8, "e":Ljava/net/URISyntaxException;
    new-instance v23, Ljava/net/URI;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, " "

    const-string v26, "%20"

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    aput-object v23, v7, v9

    goto :goto_4

    .line 91
    .end local v8    # "e":Ljava/net/URISyntaxException;
    .end local v17    # "u":Ljava/net/URL;
    :cond_3
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v6, v7, v0}, Lorg/eclipse/jetty/util/PatternMatcher;->match(Ljava/util/regex/Pattern;[Ljava/net/URI;Z)V

    .line 93
    .end local v4    # "arr$":[Ljava/net/URL;
    .end local v7    # "containerUris":[Ljava/net/URI;
    .end local v9    # "i":I
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    :cond_4
    invoke-virtual {v14}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v14

    .line 94
    goto :goto_2

    .line 97
    .end local v19    # "urls":[Ljava/net/URL;
    :cond_5
    new-instance v20, Lorg/eclipse/jetty/webapp/WebInfConfiguration$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/webapp/WebInfConfiguration$2;-><init>(Lorg/eclipse/jetty/webapp/WebInfConfiguration;Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 105
    .local v20, "webInfJarNameMatcher":Lorg/eclipse/jetty/util/PatternMatcher;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->findJars(Lorg/eclipse/jetty/webapp/WebAppContext;)Ljava/util/List;

    move-result-object v12

    .line 108
    .local v12, "jars":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    const/16 v18, 0x0

    .line 109
    .local v18, "uris":[Ljava/net/URI;
    if-eqz v12, :cond_6

    .line 111
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/net/URI;

    move-object/from16 v18, v0

    .line 112
    const/4 v9, 0x0

    .line 113
    .restart local v9    # "i":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/eclipse/jetty/util/resource/Resource;

    .line 115
    .local v15, "r":Lorg/eclipse/jetty/util/resource/Resource;
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    invoke-virtual {v15}, Lorg/eclipse/jetty/util/resource/Resource;->getURI()Ljava/net/URI;

    move-result-object v23

    aput-object v23, v18, v9

    move v9, v10

    .end local v10    # "i":I
    .restart local v9    # "i":I
    goto :goto_5

    .line 118
    .end local v9    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_6
    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/PatternMatcher;->match(Ljava/util/regex/Pattern;[Ljava/net/URI;Z)V

    .line 119
    return-void
.end method

.method public resolveTempDirectory(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 8
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;

    .prologue
    const/4 v7, 0x1

    .line 242
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v3

    .line 243
    .local v3, "tmpDir":Ljava/io/File;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 245
    const-string v5, "org.eclipse.jetty.tmpdirConfigured"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v5, v6}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const-string v5, "javax.servlet.context.tempdir"

    invoke-virtual {p1, v5}, Lorg/eclipse/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->asFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v2

    .line 253
    .local v2, "servletTmpDir":Ljava/io/File;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 256
    move-object v3, v2

    .line 258
    const-string v5, "javax.servlet.context.tempdir"

    invoke-virtual {p1, v5, v3}, Lorg/eclipse/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/webapp/WebAppContext;->setTempDirectory(Ljava/io/File;)V

    goto :goto_0

    .line 267
    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "jetty.home"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "work"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .local v4, "work":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 270
    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->makeTempDirectory(Ljava/io/File;Lorg/eclipse/jetty/webapp/WebAppContext;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 294
    .end local v4    # "work":Ljava/io/File;
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_0

    .line 299
    :try_start_1
    const-string v5, "JettyContext"

    const-string v6, ""

    invoke-static {v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 300
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 301
    invoke-static {v3}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 302
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 303
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    .line 304
    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/webapp/WebAppContext;->setTempDirectory(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "tmpdir"

    invoke-interface {v5, v6, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 274
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "work":Ljava/io/File;
    :cond_4
    :try_start_2
    const-string v5, "org.eclipse.jetty.webapp.basetempdir"

    invoke-virtual {p1, v5}, Lorg/eclipse/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->asFile(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v0

    .line 275
    .local v0, "baseTemp":Ljava/io/File;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 278
    const/4 v5, 0x0

    invoke-virtual {p0, v0, p1, v5}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->makeTempDirectory(Ljava/io/File;Lorg/eclipse/jetty/webapp/WebAppContext;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 286
    .end local v0    # "baseTemp":Ljava/io/File;
    .end local v4    # "work":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 289
    sget-object v5, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 282
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "baseTemp":Ljava/io/File;
    .restart local v4    # "work":Ljava/io/File;
    :cond_5
    :try_start_3
    new-instance v5, Ljava/io/File;

    const-string v6, "java.io.tmpdir"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {p0, v5, p1, v6}, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->makeTempDirectory(Ljava/io/File;Lorg/eclipse/jetty/webapp/WebAppContext;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public unpack(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 21
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v13

    .line 387
    .local v13, "web_app":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->_preUnpackBaseResource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 389
    if-nez v13, :cond_10

    .line 391
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object v8

    .line 392
    .local v8, "war":Ljava/lang/String;
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_c

    .line 393
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/webapp/WebAppContext;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v13

    .line 398
    :goto_0
    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 400
    sget-object v17, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " anti-aliased to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v13

    .line 404
    :cond_0
    sget-object v17, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 405
    sget-object v17, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Try webapp="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", exists="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", directory="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    :cond_1
    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "jar:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 411
    invoke-static {v13}, Lorg/eclipse/jetty/util/resource/JarResource;->newJarResource(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 412
    .local v4, "jarWebApp":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 413
    move-object v13, v4

    .line 417
    .end local v4    # "jarWebApp":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isCopyWebDir()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_6

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isExtractWAR()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v17

    if-eqz v17, :cond_4

    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isExtractWAR()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v17

    if-eqz v17, :cond_6

    :cond_5
    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_a

    .line 425
    :cond_6
    const/4 v2, 0x0

    .line 427
    .local v2, "extractedWebAppDir":Ljava/io/File;
    if-eqz v8, :cond_7

    .line 430
    invoke-static {v8}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v9

    .line 431
    .local v9, "warfile":Ljava/io/File;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, ".war"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 433
    new-instance v7, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .local v7, "sibling":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 435
    move-object v2, v7

    .line 439
    .end local v7    # "sibling":Ljava/io/File;
    .end local v9    # "warfile":Ljava/io/File;
    :cond_7
    if-nez v2, :cond_8

    .line 441
    new-instance v2, Ljava/io/File;

    .end local v2    # "extractedWebAppDir":Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v17

    const-string v18, "webapp"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 443
    .restart local v2    # "extractedWebAppDir":Ljava/io/File;
    :cond_8
    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v17

    if-eqz v17, :cond_d

    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 446
    sget-object v17, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Copy "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    invoke-virtual {v13, v2}, Lorg/eclipse/jetty/util/resource/Resource;->copyTo(Ljava/io/File;)V

    .line 472
    :cond_9
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v13

    .line 476
    .end local v2    # "extractedWebAppDir":Ljava/io/File;
    :cond_a
    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_f

    .line 478
    :cond_b
    sget-object v17, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Web application not found "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    new-instance v17, Ljava/io/FileNotFoundException;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 395
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v13

    goto/16 :goto_0

    .line 451
    .restart local v2    # "extractedWebAppDir":Ljava/io/File;
    :cond_d
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_e

    .line 454
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 455
    sget-object v17, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Extract "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    invoke-static {v13}, Lorg/eclipse/jetty/util/resource/JarResource;->newJarResource(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    .line 457
    .local v5, "jar_web_app":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v5, v2}, Lorg/eclipse/jetty/util/resource/Resource;->copyTo(Ljava/io/File;)V

    goto/16 :goto_1

    .line 462
    .end local v5    # "jar_web_app":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_e
    invoke-virtual {v13}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v17

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-lez v17, :cond_9

    .line 464
    invoke-static {v2}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 465
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 466
    sget-object v17, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Extract "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    invoke-static {v13}, Lorg/eclipse/jetty/util/resource/JarResource;->newJarResource(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    .line 468
    .restart local v5    # "jar_web_app":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v5, v2}, Lorg/eclipse/jetty/util/resource/Resource;->copyTo(Ljava/io/File;)V

    goto/16 :goto_1

    .line 482
    .end local v2    # "extractedWebAppDir":Ljava/io/File;
    .end local v5    # "jar_web_app":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/eclipse/jetty/webapp/WebAppContext;->setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 484
    sget-object v17, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 485
    sget-object v17, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "webapp="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    .end local v8    # "war":Ljava/lang/String;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->isCopyWebInf()Z

    move-result v17

    if-eqz v17, :cond_18

    .line 493
    const-string v17, "WEB-INF/"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v14

    .line 495
    .local v14, "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    instance-of v0, v14, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    move/from16 v17, v0

    if-nez v17, :cond_11

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v17

    if-eqz v17, :cond_18

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_18

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v17

    if-eqz v17, :cond_11

    invoke-virtual {v14}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_18

    .line 500
    :cond_11
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v17

    const-string v18, "webinf"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 501
    .local v3, "extractedWebInfDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 502
    invoke-static {v3}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 503
    :cond_12
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 504
    const-string v17, "lib/"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v16

    .line 505
    .local v16, "web_inf_lib":Lorg/eclipse/jetty/util/resource/Resource;
    new-instance v11, Ljava/io/File;

    const-string v17, "WEB-INF"

    move-object/from16 v0, v17

    invoke-direct {v11, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 506
    .local v11, "webInfDir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    .line 508
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 510
    new-instance v12, Ljava/io/File;

    const-string v17, "lib"

    move-object/from16 v0, v17

    invoke-direct {v12, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 511
    .local v12, "webInfLibDir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 512
    invoke-static {v12}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 513
    :cond_13
    invoke-virtual {v12}, Ljava/io/File;->mkdir()Z

    .line 515
    sget-object v17, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Copying WEB-INF/lib "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/util/resource/Resource;->copyTo(Ljava/io/File;)V

    .line 519
    .end local v12    # "webInfLibDir":Ljava/io/File;
    :cond_14
    const-string v17, "classes/"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v15

    .line 520
    .local v15, "web_inf_classes":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v15}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v17

    if-eqz v17, :cond_16

    .line 522
    new-instance v10, Ljava/io/File;

    const-string v17, "classes"

    move-object/from16 v0, v17

    invoke-direct {v10, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 523
    .local v10, "webInfClassesDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_15

    .line 524
    invoke-static {v10}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 525
    :cond_15
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 526
    sget-object v17, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Copying WEB-INF/classes from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    invoke-virtual {v15, v10}, Lorg/eclipse/jetty/util/resource/Resource;->copyTo(Ljava/io/File;)V

    .line 530
    .end local v10    # "webInfClassesDir":Ljava/io/File;
    :cond_16
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v14

    .line 532
    new-instance v6, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lorg/eclipse/jetty/util/resource/Resource;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lorg/eclipse/jetty/util/resource/ResourceCollection;-><init>([Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 534
    .local v6, "rc":Lorg/eclipse/jetty/util/resource/ResourceCollection;
    sget-object v17, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_17

    .line 535
    sget-object v17, Lorg/eclipse/jetty/webapp/WebInfConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "context.resourcebase = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    :cond_17
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/webapp/WebAppContext;->setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 540
    .end local v3    # "extractedWebInfDir":Ljava/io/File;
    .end local v6    # "rc":Lorg/eclipse/jetty/util/resource/ResourceCollection;
    .end local v11    # "webInfDir":Ljava/io/File;
    .end local v14    # "web_inf":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v15    # "web_inf_classes":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v16    # "web_inf_lib":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_18
    return-void
.end method
