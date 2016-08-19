.class public Lorg/eclipse/jetty/util/ajax/JSON;
.super Ljava/lang/Object;
.source "JSON.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/ajax/JSON$Literal;,
        Lorg/eclipse/jetty/util/ajax/JSON$Generator;,
        Lorg/eclipse/jetty/util/ajax/JSON$Convertor;,
        Lorg/eclipse/jetty/util/ajax/JSON$Convertible;,
        Lorg/eclipse/jetty/util/ajax/JSON$Output;,
        Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;,
        Lorg/eclipse/jetty/util/ajax/JSON$StringSource;,
        Lorg/eclipse/jetty/util/ajax/JSON$Source;,
        Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _convertors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/ajax/JSON$Convertor;",
            ">;"
        }
    .end annotation
.end field

.field private _stringBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-class v0, Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 90
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSON;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_convertors:Ljava/util/Map;

    .line 93
    const/16 v0, 0x400

    iput v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_stringBufferSize:I

    .line 97
    return-void
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method protected static complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V
    .locals 6
    .param p0, "seek"    # Ljava/lang/String;
    .param p1, "source"    # Lorg/eclipse/jetty/util/ajax/JSON$Source;

    .prologue
    .line 1293
    const/4 v1, 0x0

    .line 1294
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1296
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v0

    .line 1297
    .local v0, "c":C
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v0, v3, :cond_0

    .line 1298
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while seeking  \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move v1, v2

    .line 1299
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 1301
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1302
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1303
    :cond_2
    return-void
.end method

.method public static getDefault()Lorg/eclipse/jetty/util/ajax/JSON;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;

    invoke-static {p0}, Lorg/eclipse/jetty/util/IO;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;Z)Ljava/lang/Object;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "stripOuterComment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;

    invoke-static {p0}, Lorg/eclipse/jetty/util/IO;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 3
    .param p0, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;-><init>(Ljava/io/Reader;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/Reader;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "stripOuterComment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 178
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "stripOuterComment"    # Z

    .prologue
    .line 191
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static registerConvertor(Ljava/lang/Class;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V
    .locals 1
    .param p0, "forClass"    # Ljava/lang/Class;
    .param p1, "convertor"    # Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    .prologue
    .line 131
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->addConvertor(Ljava/lang/Class;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V

    .line 132
    return-void
.end method

.method public static setDefault(Lorg/eclipse/jetty/util/ajax/JSON;)V
    .locals 0
    .param p0, "json"    # Lorg/eclipse/jetty/util/ajax/JSON;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    return-void
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 150
    .local v0, "buffer":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1, v0, p0}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/util/Map;

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 158
    .local v0, "buffer":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1, v0, p0}, Lorg/eclipse/jetty/util/ajax/JSON;->appendMap(Ljava/lang/Appendable;Ljava/util/Map;)V

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 166
    .local v0, "buffer":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1, v0, p0}, Lorg/eclipse/jetty/util/ajax/JSON;->appendArray(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addConvertor(Ljava/lang/Class;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V
    .locals 2
    .param p1, "forClass"    # Ljava/lang/Class;
    .param p2, "convertor"    # Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    .prologue
    .line 649
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    return-void
.end method

.method public addConvertorFor(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "convertor"    # Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    .prologue
    .line 697
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    return-void
.end method

.method public append(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 294
    if-nez p2, :cond_0

    .line 295
    :try_start_0
    const-string v2, "null"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 327
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 296
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v2, p2, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;

    if-eqz v2, :cond_1

    .line 297
    check-cast p2, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertible;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 298
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_1
    :try_start_1
    instance-of v2, p2, Lorg/eclipse/jetty/util/ajax/JSON$Generator;

    if-eqz v2, :cond_2

    .line 299
    check-cast p2, Lorg/eclipse/jetty/util/ajax/JSON$Generator;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Generator;)V

    goto :goto_0

    .line 300
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v2, p2, Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 301
    check-cast p2, Ljava/util/Map;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendMap(Ljava/lang/Appendable;Ljava/util/Map;)V

    goto :goto_0

    .line 302
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v2, p2, Ljava/util/Collection;

    if-eqz v2, :cond_4

    .line 303
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendArray(Ljava/lang/Appendable;Ljava/util/Collection;)V

    goto :goto_0

    .line 304
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 305
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendArray(Ljava/lang/Appendable;Ljava/lang/Object;)V

    goto :goto_0

    .line 306
    :cond_5
    instance-of v2, p2, Ljava/lang/Number;

    if-eqz v2, :cond_6

    .line 307
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNumber(Ljava/lang/Appendable;Ljava/lang/Number;)V

    goto :goto_0

    .line 308
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    .line 309
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendBoolean(Ljava/lang/Appendable;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 310
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_7
    instance-of v2, p2, Ljava/lang/Character;

    if-eqz v2, :cond_8

    .line 311
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendString(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_8
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 313
    check-cast p2, Ljava/lang/String;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendString(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v0

    .line 317
    .local v0, "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    if-eqz v0, :cond_a

    .line 318
    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V

    goto :goto_0

    .line 320
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendString(Ljava/lang/Appendable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public appendArray(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "array"    # Ljava/lang/Object;

    .prologue
    .line 488
    if-nez p2, :cond_0

    .line 490
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    .line 510
    :goto_0
    return-void

    .line 494
    :cond_0
    const/16 v3, 0x5b

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 495
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 497
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 499
    if-eqz v1, :cond_1

    .line 500
    const/16 v3, 0x2c

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 501
    :cond_1
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 504
    :cond_2
    const/16 v3, 0x5d

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 506
    .end local v1    # "i":I
    .end local v2    # "length":I
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public appendArray(Ljava/lang/Appendable;Ljava/util/Collection;)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "collection"    # Ljava/util/Collection;

    .prologue
    .line 450
    if-nez p2, :cond_0

    .line 452
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    .line 474
    :goto_0
    return-void

    .line 456
    :cond_0
    const/16 v3, 0x5b

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 457
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 458
    .local v2, "iter":Ljava/util/Iterator;
    const/4 v1, 0x1

    .line 459
    .local v1, "first":Z
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    if-nez v1, :cond_1

    .line 462
    const/16 v3, 0x2c

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 464
    :cond_1
    const/4 v1, 0x0

    .line 465
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 470
    .end local v1    # "first":Z
    .end local v2    # "iter":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 468
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "first":Z
    .restart local v2    # "iter":Ljava/util/Iterator;
    :cond_2
    const/16 v3, 0x5d

    :try_start_1
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public appendArray(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "array"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 480
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendArray(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 481
    return-void
.end method

.method public appendArray(Ljava/lang/StringBuffer;Ljava/util/Collection;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "collection"    # Ljava/util/Collection;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 442
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendArray(Ljava/lang/Appendable;Ljava/util/Collection;)V

    .line 443
    return-void
.end method

.method public appendBoolean(Ljava/lang/Appendable;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 524
    if-nez p2, :cond_0

    .line 526
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    .line 535
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "true"

    :goto_1
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 529
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_1
    const-string v1, "false"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public appendBoolean(Ljava/lang/StringBuffer;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "b"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 516
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendBoolean(Ljava/lang/Appendable;Ljava/lang/Boolean;)V

    .line 517
    return-void
.end method

.method public appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertible;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "converter"    # Lorg/eclipse/jetty/util/ajax/JSON$Convertible;

    .prologue
    .line 382
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;-><init>(Lorg/eclipse/jetty/util/ajax/JSON;Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$1;)V

    .line 383
    .local v0, "out":Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;
    invoke-interface {p2, v0}, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;->toJSON(Lorg/eclipse/jetty/util/ajax/JSON$Output;)V

    .line 384
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ajax/JSON$ConvertableOutput;->complete()V

    .line 385
    return-void
.end method

.method public appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "convertor"    # Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 359
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSON$1;

    invoke-direct {v0, p0, p2, p3}, Lorg/eclipse/jetty/util/ajax/JSON$1;-><init>(Lorg/eclipse/jetty/util/ajax/JSON;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertible;)V

    .line 370
    return-void
.end method

.method public appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Generator;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "generator"    # Lorg/eclipse/jetty/util/ajax/JSON$Generator;

    .prologue
    .line 397
    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/ajax/JSON$Generator;->addJSON(Ljava/lang/Appendable;)V

    .line 398
    return-void
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/eclipse/jetty/util/ajax/JSON$Convertible;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "converter"    # Lorg/eclipse/jetty/util/ajax/JSON$Convertible;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertible;)V

    .line 377
    return-void
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "convertor"    # Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .param p3, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V

    .line 354
    return-void
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/eclipse/jetty/util/ajax/JSON$Generator;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "generator"    # Lorg/eclipse/jetty/util/ajax/JSON$Generator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 391
    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/ajax/JSON$Generator;->addJSON(Ljava/lang/Appendable;)V

    .line 392
    return-void
.end method

.method public appendMap(Ljava/lang/Appendable;Ljava/util/Map;)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-nez p2, :cond_0

    .line 414
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    .line 436
    :goto_0
    return-void

    .line 418
    :cond_0
    const/16 v3, 0x7b

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 419
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 420
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 422
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 423
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 424
    const/16 v3, 0x3a

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 425
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 426
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 427
    const/16 v3, 0x2c

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 432
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 430
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    const/16 v3, 0x7d

    :try_start_1
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public appendMap(Ljava/lang/StringBuffer;Ljava/util/Map;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 404
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendMap(Ljava/lang/Appendable;Ljava/util/Map;)V

    .line 405
    return-void
.end method

.method public appendNull(Ljava/lang/Appendable;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/Appendable;

    .prologue
    .line 341
    :try_start_0
    const-string v1, "null"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public appendNull(Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    .line 334
    return-void
.end method

.method public appendNumber(Ljava/lang/Appendable;Ljava/lang/Number;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "number"    # Ljava/lang/Number;

    .prologue
    .line 549
    if-nez p2, :cond_0

    .line 551
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    .line 560
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public appendNumber(Ljava/lang/StringBuffer;Ljava/lang/Number;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "number"    # Ljava/lang/Number;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 541
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNumber(Ljava/lang/Appendable;Ljava/lang/Number;)V

    .line 542
    return-void
.end method

.method public appendString(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 572
    if-nez p2, :cond_0

    .line 574
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    .line 579
    :goto_0
    return-void

    .line 578
    :cond_0
    invoke-static {p1, p2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "string"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendString(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method protected contextFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON;
    .locals 0
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 610
    return-object p0
.end method

.method protected contextForArray()Lorg/eclipse/jetty/util/ajax/JSON;
    .locals 0

    .prologue
    .line 604
    return-object p0
.end method

.method protected convertTo(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "map"    # Ljava/util/Map;

    .prologue
    .line 616
    if-eqz p1, :cond_0

    const-class v3, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 620
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;

    .line 621
    .local v0, "conv":Lorg/eclipse/jetty/util/ajax/JSON$Convertible;
    invoke-interface {v0, p2}, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;->fromJSON(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    .end local v0    # "conv":Lorg/eclipse/jetty/util/ajax/JSON$Convertible;
    :goto_0
    return-object v0

    .line 624
    :catch_0
    move-exception v2

    .line 626
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 630
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v1

    .line 631
    .local v1, "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    if-eqz v1, :cond_1

    .line 633
    invoke-interface {v1, p2}, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;->fromJSON(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 635
    goto :goto_0
.end method

.method public fromJSON(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 271
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "source":Lorg/eclipse/jetty/util/ajax/JSON$Source;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected getConvertor(Ljava/lang/Class;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .locals 7
    .param p1, "forClass"    # Ljava/lang/Class;

    .prologue
    .line 666
    move-object v0, p1

    .line 667
    .local v0, "cls":Ljava/lang/Class;
    iget-object v5, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    .line 668
    .local v1, "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    if-nez v1, :cond_0

    sget-object v5, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    if-eq p0, v5, :cond_0

    .line 669
    sget-object v5, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v1

    .line 671
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    const-class v5, Ljava/lang/Object;

    if-eq v0, v5, :cond_2

    .line 673
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 674
    .local v4, "ifs":[Ljava/lang/Class;
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .line 675
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    if-nez v1, :cond_1

    if-eqz v4, :cond_1

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 676
    iget-object v5, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_convertors:Ljava/util/Map;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    check-cast v1, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    .restart local v1    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 677
    :cond_1
    if-nez v1, :cond_0

    .line 679
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 680
    iget-object v5, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    check-cast v1, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    .restart local v1    # "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    goto :goto_0

    .line 683
    .end local v3    # "i":I
    .end local v4    # "ifs":[Ljava/lang/Class;
    :cond_2
    return-object v1
.end method

.method public getConvertorFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 710
    move-object v0, p1

    .line 711
    .local v0, "clsName":Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_convertors:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    .line 712
    .local v1, "convertor":Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    if-nez v1, :cond_0

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    if-eq p0, v2, :cond_0

    .line 713
    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v1

    .line 714
    :cond_0
    return-object v1
.end method

.method public getStringBufferSize()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_stringBufferSize:I

    return v0
.end method

.method protected handleUnknown(Lorg/eclipse/jetty/util/ajax/JSON$Source;C)Ljava/lang/Object;
    .locals 3
    .param p1, "source"    # Lorg/eclipse/jetty/util/ajax/JSON$Source;
    .param p2, "c"    # C

    .prologue
    .line 908
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 598
    new-array v0, p1, [Ljava/lang/Object;

    return-object v0
.end method

.method protected newMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 5
    .param p1, "source"    # Lorg/eclipse/jetty/util/ajax/JSON$Source;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 808
    const/4 v1, 0x0

    .line 810
    .local v1, "comment_state":I
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 812
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v0

    .line 815
    .local v0, "c":C
    if-ne v1, v4, :cond_1

    .line 817
    sparse-switch v0, :sswitch_data_0

    .line 899
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 820
    :sswitch_0
    const/4 v1, -0x1

    .line 821
    goto :goto_1

    .line 823
    :sswitch_1
    const/4 v1, 0x2

    goto :goto_1

    .line 827
    :cond_1
    if-le v1, v4, :cond_3

    .line 829
    sparse-switch v0, :sswitch_data_1

    .line 841
    const/4 v1, 0x2

    goto :goto_1

    .line 832
    :sswitch_2
    const/4 v1, 0x3

    .line 833
    goto :goto_1

    .line 835
    :sswitch_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 836
    const/4 v1, 0x0

    goto :goto_1

    .line 838
    :cond_2
    const/4 v1, 0x2

    .line 839
    goto :goto_1

    .line 845
    :cond_3
    if-gez v1, :cond_4

    .line 847
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 851
    :pswitch_1
    const/4 v1, 0x0

    .line 852
    goto :goto_1

    .line 860
    :cond_4
    sparse-switch v0, :sswitch_data_2

    .line 892
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 893
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseNumber(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Number;

    move-result-object v2

    .line 902
    .end local v0    # "c":C
    :cond_5
    :goto_2
    return-object v2

    .line 863
    .restart local v0    # "c":C
    :sswitch_4
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseObject(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 865
    :sswitch_5
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseArray(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 867
    :sswitch_6
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseString(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 869
    :sswitch_7
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseNumber(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Number;

    move-result-object v2

    goto :goto_2

    .line 872
    :sswitch_8
    const-string v3, "null"

    invoke-static {v3, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V

    goto :goto_2

    .line 875
    :sswitch_9
    const-string v2, "true"

    invoke-static {v2, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V

    .line 876
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 878
    :sswitch_a
    const-string v2, "false"

    invoke-static {v2, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V

    .line 879
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 881
    :sswitch_b
    const-string v3, "undefined"

    invoke-static {v3, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V

    goto :goto_2

    .line 884
    :sswitch_c
    const-string v3, "NaN"

    invoke-static {v3, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V

    goto :goto_2

    .line 888
    :sswitch_d
    const/4 v1, 0x1

    .line 889
    goto :goto_1

    .line 894
    :cond_6
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 896
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->handleUnknown(Lorg/eclipse/jetty/util/ajax/JSON$Source;C)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 817
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch

    .line 829
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch

    .line 847
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 860
    :sswitch_data_2
    .sparse-switch
        0x22 -> :sswitch_6
        0x2d -> :sswitch_7
        0x2f -> :sswitch_d
        0x4e -> :sswitch_c
        0x5b -> :sswitch_5
        0x66 -> :sswitch_a
        0x6e -> :sswitch_8
        0x74 -> :sswitch_9
        0x75 -> :sswitch_b
        0x7b -> :sswitch_4
    .end sparse-switch
.end method

.method public parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;
    .locals 6
    .param p1, "source"    # Lorg/eclipse/jetty/util/ajax/JSON$Source;
    .param p2, "stripOuterComment"    # Z

    .prologue
    const/4 v5, 0x1

    .line 720
    const/4 v1, 0x0

    .line 721
    .local v1, "comment_state":I
    if-nez p2, :cond_1

    .line 722
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v2

    .line 802
    :cond_0
    :goto_0
    return-object v2

    .line 724
    :cond_1
    const/4 v3, 0x1

    .line 726
    .local v3, "strip_state":I
    const/4 v2, 0x0

    .line 727
    :goto_1
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 729
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v0

    .line 732
    .local v0, "c":C
    if-ne v1, v5, :cond_3

    .line 734
    sparse-switch v0, :sswitch_data_0

    .line 799
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_1

    .line 737
    :sswitch_0
    const/4 v1, -0x1

    .line 738
    goto :goto_2

    .line 740
    :sswitch_1
    const/4 v1, 0x2

    .line 741
    if-ne v3, v5, :cond_2

    .line 743
    const/4 v1, 0x0

    .line 744
    const/4 v3, 0x2

    goto :goto_2

    .line 749
    :cond_3
    if-le v1, v5, :cond_5

    .line 751
    sparse-switch v0, :sswitch_data_1

    .line 767
    const/4 v1, 0x2

    goto :goto_2

    .line 754
    :sswitch_2
    const/4 v1, 0x3

    .line 755
    goto :goto_2

    .line 757
    :sswitch_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    .line 759
    const/4 v1, 0x0

    .line 760
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 764
    :cond_4
    const/4 v1, 0x2

    .line 765
    goto :goto_2

    .line 771
    :cond_5
    if-gez v1, :cond_6

    .line 773
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 777
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_2

    .line 785
    :cond_6
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 787
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_7

    .line 788
    const/4 v1, 0x1

    goto :goto_2

    .line 789
    :cond_7
    const/16 v4, 0x2a

    if-ne v0, v4, :cond_8

    .line 790
    const/4 v1, 0x3

    goto :goto_2

    .line 791
    :cond_8
    if-nez v2, :cond_2

    .line 793
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v2

    .line 794
    .local v2, "o":Ljava/lang/Object;
    goto :goto_1

    .line 734
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch

    .line 751
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch

    .line 773
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected parseArray(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 10
    .param p1, "source"    # Lorg/eclipse/jetty/util/ajax/JSON$Source;

    .prologue
    const/4 v9, 0x0

    .line 962
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v7

    const/16 v8, 0x5b

    if-eq v7, v8, :cond_0

    .line 963
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 965
    :cond_0
    const/4 v5, 0x0

    .line 966
    .local v5, "size":I
    const/4 v4, 0x0

    .line 967
    .local v4, "list":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .line 968
    .local v3, "item":Ljava/lang/Object;
    const/4 v2, 0x1

    .line 970
    .end local v3    # "item":Ljava/lang/Object;
    .local v2, "coma":Z
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 972
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v1

    .line 973
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 997
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 998
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 976
    :sswitch_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    .line 977
    packed-switch v5, :pswitch_data_0

    .line 986
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/eclipse/jetty/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    .line 980
    :pswitch_0
    invoke-virtual {p0, v9}, Lorg/eclipse/jetty/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 982
    :pswitch_1
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lorg/eclipse/jetty/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 983
    .local v0, "array":[Ljava/lang/Object;
    invoke-static {v0, v9, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    .line 990
    .end local v0    # "array":[Ljava/lang/Object;
    :sswitch_1
    if-eqz v2, :cond_1

    .line 991
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 992
    :cond_1
    const/4 v2, 0x1

    .line 993
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1001
    :cond_2
    const/4 v2, 0x0

    .line 1002
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "size":I
    .local v6, "size":I
    if-nez v5, :cond_3

    .line 1003
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSON;->contextForArray()Lorg/eclipse/jetty/util/ajax/JSON;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "item":Ljava/lang/Object;
    move v5, v6

    .end local v6    # "size":I
    .restart local v5    # "size":I
    goto :goto_0

    .line 1004
    .end local v3    # "item":Ljava/lang/Object;
    .end local v5    # "size":I
    .restart local v6    # "size":I
    :cond_3
    if-nez v4, :cond_4

    .line 1006
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "list":Ljava/util/ArrayList;
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1007
    .restart local v4    # "list":Ljava/util/ArrayList;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSON;->contextForArray()Lorg/eclipse/jetty/util/ajax/JSON;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v3

    .line 1009
    .restart local v3    # "item":Ljava/lang/Object;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    const/4 v3, 0x0

    move v5, v6

    .end local v6    # "size":I
    .restart local v5    # "size":I
    goto :goto_0

    .line 1014
    .end local v3    # "item":Ljava/lang/Object;
    .end local v5    # "size":I
    .restart local v6    # "size":I
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSON;->contextForArray()Lorg/eclipse/jetty/util/ajax/JSON;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v3

    .line 1015
    .restart local v3    # "item":Ljava/lang/Object;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    const/4 v3, 0x0

    move v5, v6

    .end local v6    # "size":I
    .restart local v5    # "size":I
    goto :goto_0

    .line 1023
    .end local v1    # "c":C
    .end local v3    # "item":Ljava/lang/Object;
    :cond_5
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "unexpected end of array"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 973
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch

    .line 977
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parseNumber(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Number;
    .locals 9
    .param p1, "source"    # Lorg/eclipse/jetty/util/ajax/JSON$Source;

    .prologue
    .line 1172
    const/4 v2, 0x0

    .line 1173
    .local v2, "minus":Z
    const-wide/16 v3, 0x0

    .line 1174
    .local v3, "number":J
    const/4 v0, 0x0

    .line 1176
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1178
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v1

    .line 1179
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 1219
    .end local v1    # "c":C
    :cond_0
    :goto_1
    if-nez v0, :cond_4

    .line 1220
    if-eqz v2, :cond_1

    const-wide/16 v5, -0x1

    mul-long/2addr v3, v5

    .end local v3    # "number":J
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1250
    :goto_2
    return-object v5

    .line 1191
    .restart local v1    # "c":C
    .restart local v3    # "number":J
    :sswitch_0
    const-wide/16 v5, 0xa

    mul-long/2addr v5, v3

    add-int/lit8 v7, v1, -0x30

    int-to-long v7, v7

    add-long v3, v5, v7

    .line 1192
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1197
    :sswitch_1
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    .line 1198
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "bad number"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1199
    :cond_2
    const/4 v2, 0x1

    .line 1200
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1206
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    const/16 v5, 0x10

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1207
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_3

    .line 1208
    const/16 v5, 0x2d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1209
    :cond_3
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1211
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_1

    .line 1242
    :sswitch_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1243
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    .line 1222
    .end local v1    # "c":C
    :cond_4
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1224
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v1

    .line 1225
    .restart local v1    # "c":C
    sparse-switch v1, :sswitch_data_1

    .line 1250
    .end local v1    # "c":C
    :cond_5
    new-instance v5, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 1179
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch

    .line 1225
    :sswitch_data_1
    .sparse-switch
        0x2b -> :sswitch_3
        0x2d -> :sswitch_3
        0x2e -> :sswitch_3
        0x30 -> :sswitch_3
        0x31 -> :sswitch_3
        0x32 -> :sswitch_3
        0x33 -> :sswitch_3
        0x34 -> :sswitch_3
        0x35 -> :sswitch_3
        0x36 -> :sswitch_3
        0x37 -> :sswitch_3
        0x38 -> :sswitch_3
        0x39 -> :sswitch_3
        0x45 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method protected parseObject(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 10
    .param p1, "source"    # Lorg/eclipse/jetty/util/ajax/JSON$Source;

    .prologue
    const/16 v9, 0x7d

    .line 914
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v7

    const/16 v8, 0x7b

    if-eq v7, v8, :cond_0

    .line 915
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 916
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSON;->newMap()Ljava/util/Map;

    move-result-object v3

    .line 918
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "\"}"

    invoke-virtual {p0, v7, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)C

    move-result v5

    .line 920
    .local v5, "next":C
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 922
    if-ne v5, v9, :cond_3

    .line 924
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    .line 943
    :cond_1
    const-string v7, "class"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 944
    .local v1, "classname":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 948
    :try_start_0
    const-class v7, Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-static {v7, v1}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 949
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jetty/util/ajax/JSON;->convertTo(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 956
    .end local v0    # "c":Ljava/lang/Class;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :goto_1
    return-object v3

    .line 928
    .end local v1    # "classname":Ljava/lang/String;
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseString(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/String;

    move-result-object v4

    .line 929
    .local v4, "name":Ljava/lang/String;
    const/16 v7, 0x3a

    invoke-virtual {p0, v7, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->seekTo(CLorg/eclipse/jetty/util/ajax/JSON$Source;)V

    .line 930
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    .line 932
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/util/ajax/JSON;->contextFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v6

    .line 933
    .local v6, "value":Ljava/lang/Object;
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    const-string v7, ",}"

    invoke-virtual {p0, v7, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)C

    .line 936
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v5

    .line 937
    if-eq v5, v9, :cond_1

    .line 940
    const-string v7, "\"}"

    invoke-virtual {p0, v7, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)C

    move-result v5

    .line 941
    goto :goto_0

    .line 951
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    .restart local v1    # "classname":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 953
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method protected parseString(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/String;
    .locals 10
    .param p1, "source"    # Lorg/eclipse/jetty/util/ajax/JSON$Source;

    .prologue
    .line 1029
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v8

    const/16 v9, 0x22

    if-eq v8, v9, :cond_0

    .line 1030
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8

    .line 1032
    :cond_0
    const/4 v3, 0x0

    .line 1034
    .local v3, "escape":Z
    const/4 v0, 0x0

    .line 1035
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->scratchBuffer()[C

    move-result-object v6

    .line 1037
    .local v6, "scratch":[C
    if-eqz v6, :cond_6

    .line 1039
    const/4 v4, 0x0

    .line 1040
    .local v4, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1042
    array-length v8, v6

    if-lt v4, v8, :cond_2

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "b":Ljava/lang/StringBuilder;
    array-length v8, v6

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1047
    .restart local v0    # "b":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1106
    :cond_1
    if-nez v0, :cond_7

    .line 1107
    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8, v4}, Lorg/eclipse/jetty/util/ajax/JSON;->toString([CII)Ljava/lang/String;

    move-result-object v8

    .line 1166
    .end local v4    # "i":I
    :goto_1
    return-object v8

    .line 1051
    .restart local v4    # "i":I
    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v2

    .line 1053
    .local v2, "c":C
    if-eqz v3, :cond_3

    .line 1055
    const/4 v3, 0x0

    .line 1056
    sparse-switch v2, :sswitch_data_0

    .line 1088
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aput-char v2, v6, v4

    :goto_2
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 1059
    :sswitch_0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x22

    aput-char v8, v6, v4

    move v4, v5

    .line 1060
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 1062
    :sswitch_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x5c

    aput-char v8, v6, v4

    move v4, v5

    .line 1063
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 1065
    :sswitch_2
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x2f

    aput-char v8, v6, v4

    move v4, v5

    .line 1066
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 1068
    :sswitch_3
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x8

    aput-char v8, v6, v4

    move v4, v5

    .line 1069
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 1071
    :sswitch_4
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0xc

    aput-char v8, v6, v4

    move v4, v5

    .line 1072
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 1074
    :sswitch_5
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0xa

    aput-char v8, v6, v4

    move v4, v5

    .line 1075
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 1077
    :sswitch_6
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0xd

    aput-char v8, v6, v4

    move v4, v5

    .line 1078
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 1080
    :sswitch_7
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x9

    aput-char v8, v6, v4

    move v4, v5

    .line 1081
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 1083
    :sswitch_8
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    shl-int/lit8 v8, v8, 0xc

    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v9

    int-to-byte v9, v9

    invoke-static {v9}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v8, v9

    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v9

    int-to-byte v9, v9

    invoke-static {v9}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v9

    shl-int/lit8 v9, v9, 0x4

    add-int/2addr v8, v9

    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v9

    int-to-byte v9, v9

    invoke-static {v9}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v9

    add-int/2addr v8, v9

    int-to-char v7, v8

    .line 1085
    .local v7, "uc":C
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aput-char v7, v6, v4

    move v4, v5

    .line 1086
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_0

    .line 1091
    .end local v7    # "uc":C
    :cond_3
    const/16 v8, 0x5c

    if-ne v2, v8, :cond_4

    .line 1093
    const/4 v3, 0x1

    .line 1094
    goto/16 :goto_0

    .line 1096
    :cond_4
    const/16 v8, 0x22

    if-ne v2, v8, :cond_5

    .line 1099
    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8, v4}, Lorg/eclipse/jetty/util/ajax/JSON;->toString([CII)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 1102
    :cond_5
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aput-char v2, v6, v4

    goto/16 :goto_2

    .line 1110
    .end local v2    # "c":C
    .end local v5    # "i":I
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "b":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSON;->getStringBufferSize()I

    move-result v8

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1113
    .restart local v0    # "b":Ljava/lang/StringBuilder;
    :cond_7
    move-object v1, v0

    .line 1114
    .local v1, "builder":Ljava/lang/StringBuilder;
    :goto_3
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1116
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v2

    .line 1118
    .restart local v2    # "c":C
    if-eqz v3, :cond_8

    .line 1120
    const/4 v3, 0x0

    .line 1121
    sparse-switch v2, :sswitch_data_1

    .line 1153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1124
    :sswitch_9
    const/16 v8, 0x22

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1127
    :sswitch_a
    const/16 v8, 0x5c

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1130
    :sswitch_b
    const/16 v8, 0x2f

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1133
    :sswitch_c
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1136
    :sswitch_d
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1139
    :sswitch_e
    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1142
    :sswitch_f
    const/16 v8, 0xd

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1145
    :sswitch_10
    const/16 v8, 0x9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1148
    :sswitch_11
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    shl-int/lit8 v8, v8, 0xc

    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v9

    int-to-byte v9, v9

    invoke-static {v9}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v8, v9

    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v9

    int-to-byte v9, v9

    invoke-static {v9}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v9

    shl-int/lit8 v9, v9, 0x4

    add-int/2addr v8, v9

    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v9

    int-to-byte v9, v9

    invoke-static {v9}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v9

    add-int/2addr v8, v9

    int-to-char v7, v8

    .line 1150
    .restart local v7    # "uc":C
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1156
    .end local v7    # "uc":C
    :cond_8
    const/16 v8, 0x5c

    if-ne v2, v8, :cond_9

    .line 1158
    const/4 v3, 0x1

    .line 1159
    goto :goto_3

    .line 1161
    :cond_9
    const/16 v8, 0x22

    if-ne v2, v8, :cond_b

    .line 1166
    .end local v2    # "c":C
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 1164
    .restart local v2    # "c":C
    :cond_b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1056
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_2
        0x5c -> :sswitch_1
        0x62 -> :sswitch_3
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x72 -> :sswitch_6
        0x74 -> :sswitch_7
        0x75 -> :sswitch_8
    .end sparse-switch

    .line 1121
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_9
        0x2f -> :sswitch_b
        0x5c -> :sswitch_a
        0x62 -> :sswitch_c
        0x66 -> :sswitch_d
        0x6e -> :sswitch_e
        0x72 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_11
    .end sparse-switch
.end method

.method protected seekTo(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)C
    .locals 4
    .param p1, "seek"    # Ljava/lang/String;
    .param p2, "source"    # Lorg/eclipse/jetty/util/ajax/JSON$Source;

    .prologue
    .line 1274
    :goto_0
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1276
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v0

    .line 1277
    .local v0, "c":C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1279
    return v0

    .line 1282
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1283
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' while seeking one of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1284
    :cond_1
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1287
    .end local v0    # "c":C
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected one of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected seekTo(CLorg/eclipse/jetty/util/ajax/JSON$Source;)V
    .locals 4
    .param p1, "seek"    # C
    .param p2, "source"    # Lorg/eclipse/jetty/util/ajax/JSON$Source;

    .prologue
    .line 1257
    :goto_0
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1259
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v0

    .line 1260
    .local v0, "c":C
    if-ne v0, p1, :cond_0

    .line 1261
    return-void

    .line 1263
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1264
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while seeking \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1265
    :cond_1
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1268
    .end local v0    # "c":C
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setStringBufferSize(I)V
    .locals 0
    .param p1, "stringBufferSize"    # I

    .prologue
    .line 117
    iput p1, p0, Lorg/eclipse/jetty/util/ajax/JSON;->_stringBufferSize:I

    .line 118
    return-void
.end method

.method public toJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 257
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected toString([CII)Ljava/lang/String;
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 586
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
