.class public Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;
.super Ljava/lang/Object;
.source "JSONPojoConvertorFactory.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Convertor;


# instance fields
.field private final _fromJson:Z

.field private final _json:Lorg/eclipse/jetty/util/ajax/JSON;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/util/ajax/JSON;)V
    .locals 1
    .param p1, "json"    # Lorg/eclipse/jetty/util/ajax/JSON;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/eclipse/jetty/util/ajax/JSON;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_fromJson:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/ajax/JSON;Z)V
    .locals 1
    .param p1, "json"    # Lorg/eclipse/jetty/util/ajax/JSON;
    .param p2, "fromJSON"    # Z

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/eclipse/jetty/util/ajax/JSON;

    .line 51
    iput-boolean p2, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_fromJson:Z

    .line 52
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/util/Map;)Ljava/lang/Object;
    .locals 7
    .param p1, "object"    # Ljava/util/Map;

    .prologue
    .line 80
    move-object v5, p1

    .line 81
    .local v5, "map":Ljava/util/Map;
    const-string v6, "class"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    .local v1, "clsName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 84
    iget-object v6, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v6, v1}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v2

    .line 85
    .local v2, "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    if-nez v2, :cond_0

    .line 89
    :try_start_0
    const-class v6, Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-static {v6, v1}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 90
    .local v0, "cls":Ljava/lang/Class;
    new-instance v3, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;

    iget-boolean v6, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_fromJson:Z

    invoke-direct {v3, v0, v6}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v2    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .local v3, "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v6, v1, v3}, Lorg/eclipse/jetty/util/ajax/JSON;->addConvertorFor(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 98
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v3    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .restart local v2    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 100
    invoke-interface {v2, p1}, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;->fromJSON(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v5

    .line 103
    .end local v2    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .end local v5    # "map":Ljava/util/Map;
    :cond_1
    return-object v5

    .line 93
    .restart local v2    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .restart local v5    # "map":Ljava/util/Map;
    :catch_0
    move-exception v4

    .line 95
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 93
    .end local v2    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cls":Ljava/lang/Class;
    .restart local v3    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .restart local v2    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    goto :goto_1
.end method

.method public toJSON(Ljava/lang/Object;Lorg/eclipse/jetty/util/ajax/JSON$Output;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Lorg/eclipse/jetty/util/ajax/JSON$Output;

    .prologue
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "clsName":Ljava/lang/String;
    iget-object v5, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v5, v1}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v2

    .line 59
    .local v2, "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    if-nez v2, :cond_0

    .line 63
    :try_start_0
    const-class v5, Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-static {v5, v1}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 64
    .local v0, "cls":Ljava/lang/Class;
    new-instance v3, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;

    iget-boolean v5, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_fromJson:Z

    invoke-direct {v3, v0, v5}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v2    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .local v3, "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    :try_start_1
    iget-object v5, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v5, v1, v3}, Lorg/eclipse/jetty/util/ajax/JSON;->addConvertorFor(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 72
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v3    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .restart local v2    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 74
    invoke-interface {v2, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;->toJSON(Ljava/lang/Object;Lorg/eclipse/jetty/util/ajax/JSON$Output;)V

    .line 76
    :cond_1
    return-void

    .line 67
    :catch_0
    move-exception v4

    .line 69
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v2    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cls":Ljava/lang/Class;
    .restart local v3    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .restart local v2    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    goto :goto_1
.end method
