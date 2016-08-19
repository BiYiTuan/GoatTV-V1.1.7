.class public Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;
.super Ljava/lang/Object;
.source "JSONPojoConvertor.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Convertor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;,
        Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;
    }
.end annotation


# static fields
.field public static final DOUBLE:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

.field public static final FLOAT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

.field public static final GETTER_ARG:[Ljava/lang/Object;

.field public static final INTEGER:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final LONG:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

.field public static final NULL_ARG:[Ljava/lang/Object;

.field public static final SHORT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

.field private static final __numberTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected _excluded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _fromJSON:Z

.field protected _getters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field protected _pojoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected _setters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    const-class v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 41
    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->GETTER_ARG:[Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->NULL_ARG:[Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    .line 372
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$1;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$1;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->SHORT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    .line 380
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$2;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$2;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->INTEGER:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    .line 388
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$3;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$3;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->FLOAT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    .line 396
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$4;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$4;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LONG:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    .line 404
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$5;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$5;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->DOUBLE:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    .line 414
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->SHORT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->SHORT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->INTEGER:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->INTEGER:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LONG:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LONG:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->FLOAT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->FLOAT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->DOUBLE:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->DOUBLE:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "pojoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Ljava/util/Set;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "pojoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "excluded":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Ljava/util/Set;Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Set;Z)V
    .locals 1
    .param p3, "fromJSON"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "pojoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "excluded":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_getters:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_setters:Ljava/util/Map;

    .line 88
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    .line 89
    iput-object p2, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    .line 90
    iput-boolean p3, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_fromJSON:Z

    .line 91
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->init()V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .param p2, "fromJSON"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "pojoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Ljava/util/Set;Z)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 2
    .param p2, "excluded"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "pojoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Ljava/util/Set;Z)V

    .line 70
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public static getNumberType(Ljava/lang/Class;)Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->__numberTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    return-object v0
.end method


# virtual methods
.method protected addGetter(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 145
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_getters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method protected addSetter(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 151
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_setters:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;

    invoke-direct {v1, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public fromJSON(Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .param p1, "object"    # Ljava/util/Map;

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 178
    .local v1, "obj":Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 186
    invoke-virtual {p0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->setProps(Ljava/lang/Object;Ljava/util/Map;)I

    .line 187
    return-object v1

    .line 180
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected getExcludedCount()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected getSetter(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_setters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;

    return-object v0
.end method

.method protected includeField(Ljava/lang/String;Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 163
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected init()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x3

    .line 106
    iget-object v4, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 107
    .local v2, "methods":[Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 109
    aget-object v1, v2, v0

    .line 110
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_0

    .line 112
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    packed-switch v4, :pswitch_data_0

    .line 107
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .restart local v3    # "name":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 119
    const-string v4, "is"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_1

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    :goto_2
    invoke-virtual {p0, v3, v1}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->includeField(Ljava/lang/String;Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    invoke-virtual {p0, v3, v1}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->addGetter(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    goto :goto_1

    .line 121
    :cond_1
    const-string v4, "get"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 130
    :pswitch_1
    const-string v4, "set"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-virtual {p0, v3, v1}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->includeField(Ljava/lang/String;Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    invoke-virtual {p0, v3, v1}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->addSetter(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    goto/16 :goto_1

    .line 140
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected log(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 241
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 242
    return-void
.end method

.method public setProps(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<**>;)I"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, "props":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v0, 0x0

    .line 194
    .local v0, "count":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 196
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 197
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->getSetter(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;

    move-result-object v4

    .line 198
    .local v4, "setter":Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;
    if-eqz v4, :cond_0

    .line 202
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;->getPropertyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not set from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v4    # "setter":Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;
    :cond_1
    return v0
.end method

.method public toJSON(Ljava/lang/Object;Lorg/eclipse/jetty/util/ajax/JSON$Output;)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Lorg/eclipse/jetty/util/ajax/JSON$Output;

    .prologue
    .line 220
    iget-boolean v3, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_fromJSON:Z

    if-eqz v3, :cond_0

    .line 221
    iget-object v3, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-interface {p2, v3}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->addClass(Ljava/lang/Class;)V

    .line 222
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_getters:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 226
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    sget-object v5, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->GETTER_ARG:[Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->add(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "{} property \'{}\' excluded. (errors)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_1
    return-void
.end method
