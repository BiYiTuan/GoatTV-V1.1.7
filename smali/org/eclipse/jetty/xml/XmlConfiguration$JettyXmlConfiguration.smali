.class Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;
.super Ljava/lang/Object;
.source "XmlConfiguration.java"

# interfaces
.implements Lorg/eclipse/jetty/xml/ConfigurationProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/xml/XmlConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JettyXmlConfiguration"
.end annotation


# instance fields
.field _config:Lorg/eclipse/jetty/xml/XmlParser$Node;

.field _idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field _propertyMap:Ljava/util/Map;
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/xml/XmlConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/xml/XmlConfiguration$1;

    .prologue
    .line 297
    invoke-direct {p0}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;-><init>()V

    return-void
.end method

.method private call(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 18
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 659
    const-string v15, "id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 660
    .local v6, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->nodeClass(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v13

    .line 661
    .local v13, "oClass":Ljava/lang/Class;
    if-eqz v13, :cond_1

    .line 662
    const/16 p1, 0x0

    .line 665
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez v13, :cond_2

    .line 666
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 663
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    .line 664
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    goto :goto_0

    .line 668
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_2
    const/4 v14, 0x0

    .line 669
    .local v14, "size":I
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v3

    .line 670
    .local v3, "argi":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v15

    if-ge v5, v15, :cond_4

    .line 672
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 673
    .local v12, "o":Ljava/lang/Object;
    instance-of v15, v12, Ljava/lang/String;

    if-eqz v15, :cond_3

    .line 670
    .end local v12    # "o":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 675
    .restart local v12    # "o":Ljava/lang/Object;
    :cond_3
    check-cast v12, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .end local v12    # "o":Ljava/lang/Object;
    invoke-virtual {v12}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Arg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 677
    move v3, v5

    .line 683
    :cond_4
    new-array v2, v14, [Ljava/lang/Object;

    .line 684
    .local v2, "arg":[Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v8, 0x0

    .local v8, "j":I
    move v9, v8

    .end local v8    # "j":I
    .local v9, "j":I
    :goto_3
    if-ge v9, v14, :cond_7

    .line 686
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 687
    .restart local v12    # "o":Ljava/lang/Object;
    instance-of v15, v12, Ljava/lang/String;

    if-eqz v15, :cond_6

    move v8, v9

    .line 684
    .end local v9    # "j":I
    .end local v12    # "o":Ljava/lang/Object;
    .restart local v8    # "j":I
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "j":I
    .restart local v9    # "j":I
    goto :goto_3

    .line 680
    .end local v2    # "arg":[Ljava/lang/Object;
    .end local v9    # "j":I
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 689
    .restart local v2    # "arg":[Ljava/lang/Object;
    .restart local v9    # "j":I
    .restart local v12    # "o":Ljava/lang/Object;
    :cond_6
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "j":I
    .restart local v8    # "j":I
    check-cast v12, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .end local v12    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->value(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v2, v9

    goto :goto_4

    .line 692
    .end local v8    # "j":I
    .restart local v9    # "j":I
    :cond_7
    const-string v15, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 693
    .local v10, "method":Ljava/lang/String;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v15

    invoke-interface {v15}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 694
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "XML call "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    :cond_8
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v13, v10, v0, v2}, Lorg/eclipse/jetty/util/TypeUtil;->call(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 699
    .local v11, "n":Ljava/lang/Object;
    if-eqz v6, :cond_9

    .line 700
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v15, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1, v3}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    return-object v11

    .line 704
    .end local v11    # "n":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 706
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No Method: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " on "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 707
    .local v7, "ise":Ljava/lang/IllegalStateException;
    invoke-virtual {v7, v4}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 708
    throw v7
.end method

.method private get(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 613
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->nodeClass(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v6

    .line 614
    .local v6, "oClass":Ljava/lang/Class;
    if-eqz v6, :cond_2

    .line 615
    const/4 p1, 0x0

    .line 619
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    const-string v7, "name"

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, "name":Ljava/lang/String;
    const-string v7, "id"

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, "id":Ljava/lang/String;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    invoke-interface {v7}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 622
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XML get "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    :cond_0
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v6, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 628
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 629
    .restart local p1    # "obj":Ljava/lang/Object;
    const/4 v7, 0x0

    invoke-virtual {p0, p1, p2, v7}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_1
    if-eqz v1, :cond_1

    .line 645
    iget-object v7, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v7, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    :cond_1
    return-object p1

    .line 617
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_0

    .line 631
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 635
    .local v5, "nsme":Ljava/lang/NoSuchMethodException;
    :try_start_1
    invoke-virtual {v6, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 636
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 637
    .restart local p1    # "obj":Ljava/lang/Object;
    const/4 v7, 0x0

    invoke-virtual {p0, p1, p2, v7}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 639
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local p1    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 641
    .local v4, "nsfe":Ljava/lang/NoSuchFieldException;
    throw v5
.end method

.method private itemValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1072
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1108
    .end local p2    # "item":Ljava/lang/Object;
    :goto_0
    return-object p2

    .restart local p2    # "item":Ljava/lang/Object;
    :cond_0
    move-object v2, p2

    .line 1075
    check-cast v2, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 1076
    .local v2, "node":Lorg/eclipse/jetty/xml/XmlParser$Node;
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 1077
    .local v3, "tag":Ljava/lang/String;
    const-string v5, "Call"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1078
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->call(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 1079
    :cond_1
    const-string v5, "Get"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1080
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->get(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 1081
    :cond_2
    const-string v5, "New"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1082
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->newObj(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 1083
    :cond_3
    const-string v5, "Ref"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1084
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->refObj(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 1085
    :cond_4
    const-string v5, "Array"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1086
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->newArray(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 1087
    :cond_5
    const-string v5, "Map"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1088
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->newMap(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 1089
    :cond_6
    const-string v5, "Property"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1090
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->propertyObj(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 1092
    :cond_7
    const-string v5, "SystemProperty"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1094
    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1095
    .local v1, "name":Ljava/lang/String;
    const-string v5, "default"

    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1096
    .local v0, "defaultValue":Ljava/lang/String;
    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1099
    .end local v0    # "defaultValue":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_8
    const-string v5, "Env"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1101
    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1102
    .restart local v1    # "name":Ljava/lang/String;
    const-string v5, "default"

    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1103
    .restart local v0    # "defaultValue":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1104
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_9

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_1
    move-object p2, v0

    goto/16 :goto_0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_9
    move-object v0, v4

    goto :goto_1

    .line 1107
    .end local v0    # "defaultValue":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_a
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown value tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1108
    const/4 p2, 0x0

    goto/16 :goto_0
.end method

.method private newArray(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 812
    const-class v0, Ljava/lang/Object;

    .line 813
    .local v0, "aClass":Ljava/lang/Class;
    const-string v9, "type"

    invoke-virtual {p2, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 814
    .local v7, "type":Ljava/lang/String;
    const-string v9, "id"

    invoke-virtual {p2, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 815
    .local v3, "id":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 817
    invoke-static {v7}, Lorg/eclipse/jetty/util/TypeUtil;->fromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 818
    if-nez v0, :cond_0

    .line 820
    const-string v9, "String"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 821
    const-class v0, Ljava/lang/String;

    .line 831
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 833
    .local v1, "al":Ljava/lang/Object;
    const-string v9, "Item"

    invoke-virtual {p2, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v5

    .line 834
    .end local v1    # "al":Ljava/lang/Object;
    .local v5, "iter":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 836
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 837
    .local v4, "item":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v9, "id"

    invoke-virtual {v4, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 838
    .local v6, "nid":Ljava/lang/String;
    invoke-direct {p0, p1, v4}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->value(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v8

    .line 839
    .local v8, "v":Ljava/lang/Object;
    if-nez v8, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_5

    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->ZERO:Ljava/lang/Integer;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$400()Ljava/lang/Integer;

    move-result-object v9

    :goto_2
    invoke-static {v1, v9}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 840
    .restart local v1    # "al":Ljava/lang/Object;
    if-eqz v6, :cond_1

    .line 841
    iget-object v9, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 822
    .end local v1    # "al":Ljava/lang/Object;
    .end local v4    # "item":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v5    # "iter":Ljava/util/Iterator;
    .end local v6    # "nid":Ljava/lang/String;
    .end local v8    # "v":Ljava/lang/Object;
    :cond_2
    const-string v9, "URL"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 823
    const-class v0, Ljava/net/URL;

    goto :goto_0

    .line 824
    :cond_3
    const-string v9, "InetAddress"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 825
    const-class v0, Ljava/net/InetAddress;

    goto :goto_0

    .line 827
    :cond_4
    const-class v9, Lorg/eclipse/jetty/xml/XmlConfiguration;

    const/4 v10, 0x1

    invoke-static {v9, v7, v10}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .restart local v4    # "item":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .restart local v5    # "iter":Ljava/util/Iterator;
    .restart local v6    # "nid":Ljava/lang/String;
    .restart local v8    # "v":Ljava/lang/Object;
    :cond_5
    move-object v9, v8

    .line 839
    goto :goto_2

    .line 844
    .end local v4    # "item":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v6    # "nid":Ljava/lang/String;
    .end local v8    # "v":Ljava/lang/Object;
    :cond_6
    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 845
    .local v2, "array":Ljava/lang/Object;
    if-eqz v3, :cond_7

    .line 846
    iget-object v9, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    :cond_7
    return-object v2
.end method

.method private newMap(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 17
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 856
    const-string v15, "id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 858
    .local v4, "id":Ljava/lang/String;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 859
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v4, :cond_0

    .line 860
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v15, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v15

    if-ge v3, v15, :cond_b

    .line 864
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 865
    .local v11, "o":Ljava/lang/Object;
    instance-of v15, v11, Ljava/lang/String;

    if-eqz v15, :cond_2

    .line 862
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v11

    .line 867
    check-cast v2, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 868
    .local v2, "entry":Lorg/eclipse/jetty/xml/XmlParser$Node;
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Entry"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 869
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Not an Entry"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 871
    :cond_3
    const/4 v8, 0x0

    .line 872
    .local v8, "key":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const/4 v13, 0x0

    .line 874
    .local v13, "value":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v15

    if-ge v6, v15, :cond_7

    .line 876
    invoke-virtual {v2, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 877
    instance-of v15, v11, Ljava/lang/String;

    if-eqz v15, :cond_4

    .line 874
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move-object v5, v11

    .line 879
    check-cast v5, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 880
    .local v5, "item":Lorg/eclipse/jetty/xml/XmlParser$Node;
    invoke-virtual {v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Item"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 881
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Not an Item"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 882
    :cond_5
    if-nez v8, :cond_6

    .line 883
    move-object v8, v5

    goto :goto_3

    .line 885
    :cond_6
    move-object v13, v5

    goto :goto_3

    .line 888
    .end local v5    # "item":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :cond_7
    if-eqz v8, :cond_8

    if-nez v13, :cond_9

    .line 889
    :cond_8
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Missing Item in Entry"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 890
    :cond_9
    const-string v15, "id"

    invoke-virtual {v8, v15}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 891
    .local v9, "kid":Ljava/lang/String;
    const-string v15, "id"

    invoke-virtual {v13, v15}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 893
    .local v14, "vid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->value(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v7

    .line 894
    .local v7, "k":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->value(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v12

    .line 895
    .local v12, "v":Ljava/lang/Object;
    invoke-interface {v10, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    if-eqz v9, :cond_a

    .line 898
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v15, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    :cond_a
    if-eqz v14, :cond_1

    .line 900
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v15, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 903
    .end local v2    # "entry":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v6    # "j":I
    .end local v7    # "k":Ljava/lang/Object;
    .end local v8    # "key":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v9    # "kid":Ljava/lang/String;
    .end local v11    # "o":Ljava/lang/Object;
    .end local v12    # "v":Ljava/lang/Object;
    .end local v13    # "value":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v14    # "vid":Ljava/lang/String;
    :cond_b
    return-object v10
.end method

.method private newObj(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 19
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 721
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->nodeClass(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v14

    .line 722
    .local v14, "oClass":Ljava/lang/Class;
    const-string v16, "id"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 723
    .local v9, "id":Ljava/lang/String;
    const/4 v15, 0x0

    .line 724
    .local v15, "size":I
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v3

    .line 725
    .local v3, "argi":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_1

    .line 727
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 728
    .local v13, "o":Ljava/lang/Object;
    instance-of v0, v13, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 725
    .end local v13    # "o":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 730
    .restart local v13    # "o":Ljava/lang/Object;
    :cond_0
    check-cast v13, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .end local v13    # "o":Ljava/lang/Object;
    invoke-virtual {v13}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v16

    const-string v17, "Arg"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 732
    move v3, v8

    .line 738
    :cond_1
    new-array v2, v15, [Ljava/lang/Object;

    .line 739
    .local v2, "arg":[Ljava/lang/Object;
    const/4 v8, 0x0

    const/4 v10, 0x0

    .local v10, "j":I
    move v11, v10

    .end local v10    # "j":I
    .local v11, "j":I
    :goto_2
    if-ge v11, v15, :cond_4

    .line 741
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 742
    .restart local v13    # "o":Ljava/lang/Object;
    instance-of v0, v13, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move v10, v11

    .line 739
    .end local v11    # "j":I
    .end local v13    # "o":Ljava/lang/Object;
    .restart local v10    # "j":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v11, v10

    .end local v10    # "j":I
    .restart local v11    # "j":I
    goto :goto_2

    .line 735
    .end local v2    # "arg":[Ljava/lang/Object;
    .end local v11    # "j":I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 744
    .restart local v2    # "arg":[Ljava/lang/Object;
    .restart local v11    # "j":I
    .restart local v13    # "o":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "j":I
    .restart local v10    # "j":I
    check-cast v13, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .end local v13    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->value(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v2, v11

    goto :goto_3

    .line 747
    .end local v10    # "j":I
    .restart local v11    # "j":I
    :cond_4
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 748
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XML new "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-interface/range {v16 .. v18}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    :cond_5
    invoke-virtual {v14}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 752
    .local v6, "constructors":[Ljava/lang/reflect/Constructor;
    const/4 v4, 0x0

    .local v4, "c":I
    :goto_4
    if-eqz v6, :cond_9

    array-length v0, v6

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_9

    .line 754
    aget-object v16, v6, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v15, :cond_7

    .line 752
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 757
    :cond_7
    const/4 v12, 0x0

    .line 758
    .local v12, "n":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 761
    .local v5, "called":Z
    :try_start_0
    aget-object v16, v6, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v12

    .line 762
    const/4 v5, 0x1

    .line 776
    .end local v12    # "n":Ljava/lang/Object;
    :goto_5
    if-eqz v5, :cond_6

    .line 778
    if-eqz v9, :cond_8

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_idMap:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v3}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V

    .line 781
    return-object v12

    .line 764
    .restart local v12    # "n":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 766
    .local v7, "e":Ljava/lang/IllegalAccessException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 768
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v7

    .line 770
    .local v7, "e":Ljava/lang/InstantiationException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 772
    .end local v7    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v7

    .line 774
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 785
    .end local v5    # "called":Z
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v12    # "n":Ljava/lang/Object;
    :cond_9
    new-instance v16, Ljava/lang/IllegalStateException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "No Constructor: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " on "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method private nodeClass(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Class;
    .locals 3
    .param p1, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/xml/XmlParser$Node;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 345
    const-string v1, "class"

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 347
    const/4 v1, 0x0

    .line 349
    :goto_0
    return-object v1

    :cond_0
    const-class v1, Lorg/eclipse/jetty/xml/XmlConfiguration;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method private propertyObj(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 914
    const-string v4, "id"

    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 915
    .local v1, "id":Ljava/lang/String;
    const-string v4, "name"

    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 916
    .local v2, "name":Ljava/lang/String;
    const-string v4, "default"

    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, "defval":Ljava/lang/String;
    const/4 v3, 0x0

    .line 918
    .local v3, "prop":Ljava/lang/Object;
    iget-object v4, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_propertyMap:Ljava/util/Map;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_propertyMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 919
    iget-object v4, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_propertyMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 922
    .end local v3    # "prop":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_0

    .line 923
    iget-object v4, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    :cond_0
    if-eqz v3, :cond_1

    .line 925
    const/4 v4, 0x0

    invoke-virtual {p0, v3, p2, v4}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V

    .line 926
    :cond_1
    return-object v3

    .line 921
    .restart local v3    # "prop":Ljava/lang/Object;
    :cond_2
    move-object v3, v0

    .local v3, "prop":Ljava/lang/String;
    goto :goto_0
.end method

.method private put(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 594
    instance-of v3, p1, Ljava/util/Map;

    if-nez v3, :cond_0

    .line 595
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object for put is not a Map: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v0, p1

    .line 596
    check-cast v0, Ljava/util/Map;

    .line 598
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v3, "name"

    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->value(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v2

    .line 600
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 602
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XML "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".put("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    :cond_1
    return-void
.end method

.method private refObj(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 796
    const-string v1, "id"

    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 798
    if-nez p1, :cond_0

    .line 799
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No object for id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 800
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V

    .line 801
    return-object p1
.end method

.method private set(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 24
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 414
    const-string v19, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 415
    .local v4, "attr":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 416
    .local v8, "name":Ljava/lang/String;
    invoke-direct/range {p0 .. p2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->value(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    move-result-object v18

    .line 417
    .local v18, "value":Ljava/lang/Object;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v3, v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v18, v3, v19

    .line 420
    .local v3, "arg":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->nodeClass(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v9

    .line 421
    .local v9, "oClass":Ljava/lang/Class;
    if-eqz v9, :cond_2

    .line 422
    const/16 p1, 0x0

    .line 426
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const-class v20, Ljava/lang/Object;

    aput-object v20, v17, v19

    .line 428
    .local v17, "vClass":[Ljava/lang/Class;
    if-eqz v18, :cond_0

    .line 429
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    aput-object v20, v17, v19

    .line 431
    :cond_0
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 432
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v20

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "XML "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "("

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ")"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    :cond_1
    :try_start_0
    move-object/from16 v0, v17

    invoke-virtual {v9, v8, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 438
    .local v13, "set":Ljava/lang/reflect/Method;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_6

    .line 566
    .end local v13    # "set":Ljava/lang/reflect/Method;
    :goto_2
    return-void

    .line 424
    .end local v17    # "vClass":[Ljava/lang/Class;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    goto/16 :goto_0

    .line 432
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v17    # "vClass":[Ljava/lang/Class;
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    .line 441
    :catch_0
    move-exception v6

    .line 443
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 457
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    const/16 v19, 0x0

    :try_start_1
    aget-object v19, v17, v19

    const-string v20, "TYPE"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v16

    .line 458
    .local v16, "type":Ljava/lang/reflect/Field;
    const/16 v20, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Class;

    aput-object v19, v17, v20

    .line 459
    move-object/from16 v0, v17

    invoke-virtual {v9, v8, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 460
    .restart local v13    # "set":Ljava/lang/reflect/Method;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_9

    goto :goto_2

    .line 463
    .end local v13    # "set":Ljava/lang/reflect/Method;
    .end local v16    # "type":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v6

    .line 465
    .local v6, "e":Ljava/lang/NoSuchFieldException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 483
    .end local v6    # "e":Ljava/lang/NoSuchFieldException;
    :goto_4
    :try_start_2
    invoke-virtual {v9, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 484
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 486
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 490
    .end local v7    # "field":Ljava/lang/reflect/Field;
    :catch_2
    move-exception v6

    .line 492
    .restart local v6    # "e":Ljava/lang/NoSuchFieldException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 496
    .end local v6    # "e":Ljava/lang/NoSuchFieldException;
    :cond_4
    invoke-virtual {v9}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v14

    .line 497
    .local v14, "sets":[Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    .line 498
    .restart local v13    # "set":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    .local v11, "s":I
    :goto_5
    if-eqz v14, :cond_7

    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_7

    .line 501
    aget-object v19, v14, v11

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 502
    .local v10, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    aget-object v19, v14, v11

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    array-length v0, v10

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 508
    :try_start_3
    aget-object v13, v14, v11

    .line 509
    aget-object v19, v14, v11

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_a

    goto/16 :goto_2

    .line 512
    :catch_3
    move-exception v6

    .line 514
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 522
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_6
    const/16 v19, 0x0

    aget-object v19, v10, v19

    const-class v20, Ljava/util/Collection;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->isArray()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 526
    const/16 v19, 0x0

    :try_start_4
    aget-object v19, v10, v19

    const-class v20, Ljava/util/Set;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 527
    aget-object v20, v14, v11

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/util/HashSet;

    move-object/from16 v0, v18

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_b

    goto/16 :goto_2

    .line 534
    :catch_4
    move-exception v6

    .line 536
    .restart local v6    # "e":Ljava/lang/IllegalArgumentException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 498
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 445
    .end local v10    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v11    # "s":I
    .end local v13    # "set":Ljava/lang/reflect/Method;
    .end local v14    # "sets":[Ljava/lang/reflect/Method;
    :catch_5
    move-exception v6

    .line 447
    .local v6, "e":Ljava/lang/IllegalAccessException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 449
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v6

    .line 451
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 467
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :catch_7
    move-exception v6

    .line 469
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 471
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v6

    .line 473
    .local v6, "e":Ljava/lang/IllegalAccessException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 475
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catch_9
    move-exception v6

    .line 477
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 516
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v10    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v11    # "s":I
    .restart local v13    # "set":Ljava/lang/reflect/Method;
    .restart local v14    # "sets":[Ljava/lang/reflect/Method;
    :catch_a
    move-exception v6

    .line 518
    .local v6, "e":Ljava/lang/IllegalAccessException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 530
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :cond_6
    :try_start_5
    aget-object v20, v14, v11

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    aput-object v19, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_b

    goto/16 :goto_2

    .line 538
    :catch_b
    move-exception v6

    .line 540
    .restart local v6    # "e":Ljava/lang/IllegalAccessException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 547
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    .end local v10    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_7
    if-eqz v13, :cond_9

    .line 551
    :try_start_6
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v12, v19, v20

    .line 552
    .local v12, "sClass":Ljava/lang/Class;
    invoke-virtual {v12}, Ljava/lang/Class;->isPrimitive()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 554
    const/4 v15, 0x0

    .local v15, "t":I
    :goto_8
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->__primitives:[Ljava/lang/Class;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$200()[Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v15, v0, :cond_8

    .line 556
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->__primitives:[Ljava/lang/Class;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$200()[Ljava/lang/Class;

    move-result-object v19

    aget-object v19, v19, v15

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 558
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->__primitiveHolders:[Ljava/lang/Class;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$300()[Ljava/lang/Class;

    move-result-object v19

    aget-object v12, v19, v15

    .line 563
    .end local v15    # "t":I
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 564
    .local v5, "cons":Ljava/lang/reflect/Constructor;
    const/16 v19, 0x0

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v3, v19

    .line 565
    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_e

    goto/16 :goto_2

    .line 568
    .end local v5    # "cons":Ljava/lang/reflect/Constructor;
    .end local v12    # "sClass":Ljava/lang/Class;
    :catch_c
    move-exception v6

    .line 570
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 583
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :cond_9
    :goto_9
    new-instance v19, Ljava/lang/NoSuchMethodException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v21, v17, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 554
    .restart local v12    # "sClass":Ljava/lang/Class;
    .restart local v15    # "t":I
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 572
    .end local v12    # "sClass":Ljava/lang/Class;
    .end local v15    # "t":I
    :catch_d
    move-exception v6

    .line 574
    .local v6, "e":Ljava/lang/IllegalAccessException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 576
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catch_e
    move-exception v6

    .line 578
    .local v6, "e":Ljava/lang/InstantiationException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method private value(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;
    .locals 13
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 937
    const/4 v9, 0x0

    .line 940
    .local v9, "value":Ljava/lang/Object;
    const-string v11, "type"

    invoke-virtual {p2, v11}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 943
    .local v8, "type":Ljava/lang/String;
    const-string v11, "ref"

    invoke-virtual {p2, v11}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 944
    .local v7, "ref":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 946
    iget-object v11, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1012
    .end local v9    # "value":Ljava/lang/Object;
    :goto_0
    if-nez v9, :cond_d

    .line 1014
    const-string v11, "String"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1015
    const-string v9, ""

    .line 1054
    :cond_0
    :goto_1
    return-object v9

    .line 951
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v11

    if-nez v11, :cond_3

    .line 953
    const-string v11, "String"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 954
    const-string v9, ""

    goto :goto_1

    :cond_2
    move-object v9, v10

    .line 955
    goto :goto_1

    .line 959
    :cond_3
    const/4 v2, 0x0

    .line 960
    .local v2, "first":I
    invoke-virtual {p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .line 963
    .local v5, "last":I
    if-eqz v8, :cond_4

    const-string v11, "String"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 966
    :cond_4
    const/4 v4, 0x0

    .line 967
    :goto_2
    if-gt v2, v5, :cond_5

    .line 969
    invoke-virtual {p2, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 970
    .local v4, "item":Ljava/lang/Object;
    instance-of v11, v4, Ljava/lang/String;

    if-nez v11, :cond_7

    .line 979
    .end local v4    # "item":Ljava/lang/Object;
    :cond_5
    :goto_3
    if-ge v2, v5, :cond_6

    .line 981
    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 982
    .restart local v4    # "item":Ljava/lang/Object;
    instance-of v11, v4, Ljava/lang/String;

    if-nez v11, :cond_8

    .line 991
    .end local v4    # "item":Ljava/lang/Object;
    :cond_6
    if-le v2, v5, :cond_9

    move-object v9, v10

    .line 992
    goto :goto_1

    .line 972
    .restart local v4    # "item":Ljava/lang/Object;
    :cond_7
    check-cast v4, Ljava/lang/String;

    .end local v4    # "item":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 973
    .local v4, "item":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .end local v4    # "item":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_5

    .line 975
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 984
    .local v4, "item":Ljava/lang/Object;
    :cond_8
    check-cast v4, Ljava/lang/String;

    .end local v4    # "item":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 985
    .local v4, "item":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .end local v4    # "item":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_6

    .line 987
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 995
    :cond_9
    if-ne v2, v5, :cond_a

    .line 997
    invoke-virtual {p2, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->itemValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 1001
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1002
    .local v0, "buf":Ljava/lang/StringBuilder;
    move v3, v2

    .local v3, "i":I
    :goto_4
    if-gt v3, v5, :cond_b

    .line 1004
    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1005
    .local v4, "item":Ljava/lang/Object;
    invoke-direct {p0, p1, v4}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->itemValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1002
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1007
    .end local v4    # "item":Ljava/lang/Object;
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "value":Ljava/lang/String;
    goto/16 :goto_0

    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "first":I
    .end local v3    # "i":I
    .end local v5    # "last":I
    .end local v9    # "value":Ljava/lang/String;
    :cond_c
    move-object v9, v10

    .line 1016
    goto/16 :goto_1

    .line 1020
    :cond_d
    if-nez v8, :cond_e

    .line 1022
    if-eqz v9, :cond_0

    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 1023
    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 1027
    :cond_e
    const-string v10, "String"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "java.lang.String"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1028
    :cond_f
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 1030
    :cond_10
    invoke-static {v8}, Lorg/eclipse/jetty/util/TypeUtil;->fromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 1031
    .local v6, "pClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v6, :cond_11

    .line 1032
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lorg/eclipse/jetty/util/TypeUtil;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_1

    .line 1034
    :cond_11
    const-string v10, "URL"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    const-string v10, "java.net.URL"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1036
    :cond_12
    instance-of v10, v9, Ljava/net/URL;

    if-nez v10, :cond_0

    .line 1040
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v10

    goto/16 :goto_1

    .line 1042
    :catch_0
    move-exception v1

    .line 1044
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v10, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v10, v1}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 1048
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_13
    const-string v10, "InetAddress"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    const-string v10, "java.net.InetAddress"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1050
    :cond_14
    instance-of v10, v9, Ljava/net/InetAddress;

    if-nez v10, :cond_0

    .line 1054
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    goto/16 :goto_1

    .line 1056
    :catch_1
    move-exception v1

    .line 1058
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v10, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v10, v1}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 1062
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_15
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method


# virtual methods
.method public configure()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_config:Lorg/eclipse/jetty/xml/XmlParser$Node;

    invoke-direct {p0, v3}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->nodeClass(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v1

    .line 329
    .local v1, "oClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_config:Lorg/eclipse/jetty/xml/XmlParser$Node;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 332
    .local v2, "obj":Ljava/lang/Object;
    :goto_0
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 335
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 336
    new-instance v3, Ljava/lang/ClassCastException;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 330
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 338
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_config:Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V

    .line 339
    return-object v2
.end method

.method public configure(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_config:Lorg/eclipse/jetty/xml/XmlParser$Node;

    invoke-direct {p0, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->nodeClass(Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Class;

    move-result-object v1

    .line 315
    .local v1, "oClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 317
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const-string v0, ""

    .line 318
    .local v0, "loaders":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object of class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    .end local v0    # "loaders":Ljava/lang/String;
    :cond_0
    const-string v0, "Object Class and type Class are from different loaders."

    goto :goto_0

    .line 320
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_config:Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V

    .line 321
    return-object p1
.end method

.method public configure(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;I)V
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "cfg"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 363
    const-string v5, "id"

    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 365
    iget-object v5, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_idMap:Ljava/util/Map;

    invoke-interface {v5, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v5

    if-ge p3, v5, :cond_a

    .line 369
    invoke-virtual {p2, p3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 370
    .local v3, "o":Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 367
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 372
    check-cast v2, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 376
    .local v2, "node":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :try_start_0
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, "tag":Ljava/lang/String;
    const-string v5, "Set"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 378
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->set(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 396
    .end local v4    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Config error at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    throw v0

    .line 379
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "tag":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v5, "Put"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 380
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->put(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    goto :goto_1

    .line 381
    :cond_3
    const-string v5, "Call"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 382
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->call(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 383
    :cond_4
    const-string v5, "Get"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 384
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->get(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 385
    :cond_5
    const-string v5, "New"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 386
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->newObj(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 387
    :cond_6
    const-string v5, "Array"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 388
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->newArray(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    goto :goto_1

    .line 389
    :cond_7
    const-string v5, "Ref"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 390
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->refObj(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 391
    :cond_8
    const-string v5, "Property"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 392
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->propertyObj(Ljava/lang/Object;Lorg/eclipse/jetty/xml/XmlParser$Node;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 394
    :cond_9
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 402
    .end local v2    # "node":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "tag":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method public init(Ljava/net/URL;Lorg/eclipse/jetty/xml/XmlParser$Node;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "config"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lorg/eclipse/jetty/xml/XmlParser$Node;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p3, "idMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_config:Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 306
    iput-object p3, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_idMap:Ljava/util/Map;

    .line 307
    iput-object p4, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$JettyXmlConfiguration;->_propertyMap:Ljava/util/Map;

    .line 308
    return-void
.end method
