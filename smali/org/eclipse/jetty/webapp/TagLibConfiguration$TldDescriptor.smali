.class public Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;
.super Lorg/eclipse/jetty/webapp/Descriptor;
.source "TagLibConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/webapp/TagLibConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TldDescriptor"
.end annotation


# static fields
.field protected static __parserSingleton:Lorg/eclipse/jetty/xml/XmlParser;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 0
    .param p1, "xml"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/webapp/Descriptor;-><init>(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 321
    return-void
.end method


# virtual methods
.method public ensureParser()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 326
    sget-object v0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->__parserSingleton:Lorg/eclipse/jetty/xml/XmlParser;

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->newParser()Lorg/eclipse/jetty/xml/XmlParser;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->__parserSingleton:Lorg/eclipse/jetty/xml/XmlParser;

    .line 328
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->__parserSingleton:Lorg/eclipse/jetty/xml/XmlParser;

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->_parser:Lorg/eclipse/jetty/xml/XmlParser;

    .line 329
    return-void
.end method

.method public newParser()Lorg/eclipse/jetty/xml/XmlParser;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 335
    new-instance v2, Lorg/eclipse/jetty/xml/XmlParser;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lorg/eclipse/jetty/xml/XmlParser;-><init>(Z)V

    .line 337
    .local v2, "parser":Lorg/eclipse/jetty/xml/XmlParser;
    const/4 v3, 0x0

    .line 338
    .local v3, "taglib11":Ljava/net/URL;
    const/4 v4, 0x0

    .line 339
    .local v4, "taglib12":Ljava/net/URL;
    const/4 v5, 0x0

    .line 340
    .local v5, "taglib20":Ljava/net/URL;
    const/4 v6, 0x0

    .line 344
    .local v6, "taglib21":Ljava/net/URL;
    :try_start_0
    const-class v7, Lorg/eclipse/jetty/webapp/WebXmlConfiguration;

    const-string v8, "javax.servlet.jsp.JspPage"

    invoke-static {v7, v8}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 345
    .local v1, "jsp_page":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "javax/servlet/jsp/resources/web-jsptaglibrary_1_1.dtd"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 346
    const-string v7, "javax/servlet/jsp/resources/web-jsptaglibrary_1_2.dtd"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 347
    const-string v7, "javax/servlet/jsp/resources/web-jsptaglibrary_2_0.xsd"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 348
    const-string v7, "javax/servlet/jsp/resources/web-jsptaglibrary_2_1.xsd"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 356
    if-nez v3, :cond_0

    .line 357
    const-class v7, Ljavax/servlet/Servlet;

    const-string v8, "javax/servlet/jsp/resources/web-jsptaglibrary_1_1.dtd"

    invoke-static {v7, v8, v10}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v3

    .line 358
    :cond_0
    if-nez v4, :cond_1

    .line 359
    const-class v7, Ljavax/servlet/Servlet;

    const-string v8, "javax/servlet/jsp/resources/web-jsptaglibrary_1_2.dtd"

    invoke-static {v7, v8, v10}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v4

    .line 360
    :cond_1
    if-nez v5, :cond_2

    .line 361
    const-class v7, Ljavax/servlet/Servlet;

    const-string v8, "javax/servlet/jsp/resources/web-jsptaglibrary_2_0.xsd"

    invoke-static {v7, v8, v10}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v5

    .line 362
    :cond_2
    if-nez v6, :cond_3

    .line 363
    const-class v7, Ljavax/servlet/Servlet;

    const-string v8, "javax/servlet/jsp/resources/web-jsptaglibrary_2_1.xsd"

    invoke-static {v7, v8, v10}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v6

    .line 367
    .end local v1    # "jsp_page":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 369
    const-string v7, "web-jsptaglib_1_1.dtd"

    invoke-virtual {p0, v2, v7, v3}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 370
    const-string v7, "web-jsptaglibrary_1_1.dtd"

    invoke-virtual {p0, v2, v7, v3}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 372
    :cond_4
    if-eqz v4, :cond_5

    .line 374
    const-string v7, "web-jsptaglib_1_2.dtd"

    invoke-virtual {p0, v2, v7, v4}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 375
    const-string v7, "web-jsptaglibrary_1_2.dtd"

    invoke-virtual {p0, v2, v7, v4}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 377
    :cond_5
    if-eqz v5, :cond_6

    .line 379
    const-string v7, "web-jsptaglib_2_0.xsd"

    invoke-virtual {p0, v2, v7, v5}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 380
    const-string v7, "web-jsptaglibrary_2_0.xsd"

    invoke-virtual {p0, v2, v7, v5}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 382
    :cond_6
    if-eqz v6, :cond_7

    .line 384
    const-string v7, "web-jsptaglib_2_1.xsd"

    invoke-virtual {p0, v2, v7, v6}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 385
    const-string v7, "web-jsptaglibrary_2_1.xsd"

    invoke-virtual {p0, v2, v7, v6}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 388
    :cond_7
    const-string v7, "/taglib/listener/listener-class"

    invoke-virtual {v2, v7}, Lorg/eclipse/jetty/xml/XmlParser;->setXpath(Ljava/lang/String;)V

    .line 389
    return-object v2

    .line 350
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    # getter for: Lorg/eclipse/jetty/webapp/TagLibConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/webapp/TagLibConfiguration;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    invoke-interface {v7, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    if-nez v3, :cond_8

    .line 357
    const-class v7, Ljavax/servlet/Servlet;

    const-string v8, "javax/servlet/jsp/resources/web-jsptaglibrary_1_1.dtd"

    invoke-static {v7, v8, v10}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v3

    .line 358
    :cond_8
    if-nez v4, :cond_9

    .line 359
    const-class v7, Ljavax/servlet/Servlet;

    const-string v8, "javax/servlet/jsp/resources/web-jsptaglibrary_1_2.dtd"

    invoke-static {v7, v8, v10}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v4

    .line 360
    :cond_9
    if-nez v5, :cond_a

    .line 361
    const-class v7, Ljavax/servlet/Servlet;

    const-string v8, "javax/servlet/jsp/resources/web-jsptaglibrary_2_0.xsd"

    invoke-static {v7, v8, v10}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v5

    .line 362
    :cond_a
    if-nez v6, :cond_3

    .line 363
    const-class v7, Ljavax/servlet/Servlet;

    const-string v8, "javax/servlet/jsp/resources/web-jsptaglibrary_2_1.xsd"

    invoke-static {v7, v8, v10}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v6

    goto :goto_0

    .line 356
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-nez v3, :cond_b

    .line 357
    const-class v8, Ljavax/servlet/Servlet;

    const-string v9, "javax/servlet/jsp/resources/web-jsptaglibrary_1_1.dtd"

    invoke-static {v8, v9, v10}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v3

    .line 358
    :cond_b
    if-nez v4, :cond_c

    .line 359
    const-class v8, Ljavax/servlet/Servlet;

    const-string v9, "javax/servlet/jsp/resources/web-jsptaglibrary_1_2.dtd"

    invoke-static {v8, v9, v10}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v4

    .line 360
    :cond_c
    if-nez v5, :cond_d

    .line 361
    const-class v8, Ljavax/servlet/Servlet;

    const-string v9, "javax/servlet/jsp/resources/web-jsptaglibrary_2_0.xsd"

    invoke-static {v8, v9, v10}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v5

    .line 362
    :cond_d
    if-nez v6, :cond_e

    .line 363
    const-class v8, Ljavax/servlet/Servlet;

    const-string v9, "javax/servlet/jsp/resources/web-jsptaglibrary_2_1.xsd"

    invoke-static {v8, v9, v10}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v6

    :cond_e
    throw v7
.end method

.method public parse()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->ensureParser()V

    .line 401
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->_parser:Lorg/eclipse/jetty/xml/XmlParser;

    iget-object v2, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->_xml:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/xml/XmlParser;->parse(Ljava/io/InputStream;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->_root:Lorg/eclipse/jetty/xml/XmlParser$Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->_root:Lorg/eclipse/jetty/xml/XmlParser$Node;

    if-nez v1, :cond_0

    .line 410
    # getter for: Lorg/eclipse/jetty/webapp/TagLibConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/webapp/TagLibConfiguration;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    const-string v2, "No TLD root in {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->_xml:Lorg/eclipse/jetty/util/resource/Resource;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    :cond_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->_parser:Lorg/eclipse/jetty/xml/XmlParser;

    iget-object v2, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->_xml:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/xml/XmlParser;->parse(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;->_root:Lorg/eclipse/jetty/xml/XmlParser$Node;

    goto :goto_0
.end method
