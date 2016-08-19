.class public Lorg/eclipse/jetty/http/PathMap;
.super Ljava/util/HashMap;
.source "PathMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/PathMap$Entry;
    }
.end annotation


# static fields
.field private static __pathSpecSeparators:Ljava/lang/String;


# instance fields
.field _default:Lorg/eclipse/jetty/http/PathMap$Entry;

.field _defaultSingletonList:Ljava/util/List;

.field final _entrySet:Ljava/util/Set;

.field final _exactMap:Lorg/eclipse/jetty/util/StringMap;

.field _nodefault:Z

.field _prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

.field final _prefixMap:Lorg/eclipse/jetty/util/StringMap;

.field final _suffixMap:Lorg/eclipse/jetty/util/StringMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, ":,"

    sput-object v0, Lorg/eclipse/jetty/http/PathMap;->__pathSpecSeparators:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 77
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    .line 79
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    .line 81
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 82
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 83
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/PathMap;->_nodefault:Z

    .line 93
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_entrySet:Ljava/util/Set;

    .line 94
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 77
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    .line 79
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    .line 81
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 82
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 83
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/PathMap;->_nodefault:Z

    .line 112
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_entrySet:Ljava/util/Set;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .param p1, "m"    # Ljava/util/Map;

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 77
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    .line 79
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    .line 81
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 82
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 83
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/PathMap;->_nodefault:Z

    .line 120
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->putAll(Ljava/util/Map;)V

    .line 121
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_entrySet:Ljava/util/Set;

    .line 122
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "nodefault"    # Z

    .prologue
    const/4 v1, 0x0

    .line 101
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 77
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    .line 79
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    .line 81
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 82
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 83
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/PathMap;->_nodefault:Z

    .line 102
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_entrySet:Ljava/util/Set;

    .line 103
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/PathMap;->_nodefault:Z

    .line 104
    return-void
.end method

.method private static isPathWildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "pathSpec"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 414
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x2

    .line 415
    .local v0, "cpl":I
    const-string v2, "/*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1, p0, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v0, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    .line 418
    :cond_0
    const/4 v1, 0x1

    .line 420
    :cond_1
    return v1
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pathSpec"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "pathSpec"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "noDefault"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 395
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 396
    .local v0, "c":C
    const/16 v3, 0x2f

    if-ne v0, v3, :cond_4

    .line 398
    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 407
    :cond_1
    :goto_0
    return v1

    .line 401
    :cond_2
    invoke-static {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->isPathWildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    move v1, v2

    .line 407
    goto :goto_0

    .line 404
    :cond_4
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_3

    .line 405
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, p0, v1, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    goto :goto_0
.end method

.method public static pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pathSpec"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 458
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 460
    .local v0, "c":C
    const/16 v3, 0x2f

    if-ne v0, v3, :cond_0

    .line 462
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-object v2

    .line 465
    :cond_1
    invoke-static {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->isPathWildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 468
    .local v1, "wildcard":Z
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_0

    .line 471
    :cond_2
    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-eq v3, v4, :cond_0

    .line 475
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static pathMatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pathSpec"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 430
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 432
    .local v0, "c":C
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 434
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 449
    .end local p1    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 437
    .restart local p1    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 440
    invoke-static {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->isPathWildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 441
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 443
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 445
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, p0, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static relativePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "pathSpec"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 493
    invoke-static {p1, p2}, Lorg/eclipse/jetty/http/PathMap;->pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "info":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 495
    move-object v0, p2

    .line 497
    :cond_0
    const-string v1, "./"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 500
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 509
    :goto_0
    return-object p2

    .line 503
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 505
    :cond_3
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 508
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static setPathSpecSeparators(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 73
    sput-object p0, Lorg/eclipse/jetty/http/PathMap;->__pathSpecSeparators:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/StringMap;->clear()V

    .line 371
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/StringMap;->clear()V

    .line 372
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/StringMap;->clear()V

    .line 373
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 374
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 375
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    .line 376
    return-void
.end method

.method public containsMatch(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v0

    .line 335
    .local v0, "match":Lorg/eclipse/jetty/http/PathMap$Entry;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 268
    const/4 v0, 0x0

    .line 270
    .local v0, "entries":Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 271
    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 312
    .end local v0    # "entries":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 273
    .restart local v0    # "entries":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 276
    .local v3, "l":I
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v4, p1, v6, v3}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v1

    .line 277
    .local v1, "entry":Ljava/util/Map$Entry;
    if-eqz v1, :cond_2

    .line 278
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 281
    .end local v0    # "entries":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v2, v3, -0x1

    .line 282
    .local v2, "i":I
    :cond_3
    :goto_1
    const/16 v4, 0x2f

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    if-ltz v2, :cond_4

    .line 284
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v4, p1, v6, v2}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_3

    .line 286
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "entries":Ljava/lang/Object;
    goto :goto_1

    .line 290
    .end local v0    # "entries":Ljava/lang/Object;
    :cond_4
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    if-eqz v4, :cond_5

    .line 291
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    invoke-static {v0, v4}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 294
    :cond_5
    const/4 v2, 0x0

    .line 295
    :cond_6
    :goto_2
    const/16 v4, 0x2e

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v2, :cond_7

    .line 297
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    add-int/lit8 v5, v2, 0x1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, p1, v5, v6}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_6

    .line 299
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "entries":Ljava/lang/Object;
    goto :goto_2

    .line 303
    .end local v0    # "entries":Ljava/lang/Object;
    :cond_7
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    if-eqz v4, :cond_0

    .line 306
    if-nez v0, :cond_8

    .line 307
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_defaultSingletonList:Ljava/util/List;

    goto :goto_0

    .line 309
    :cond_8
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    invoke-static {v0, v4}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "entries":Ljava/lang/Object;
    goto :goto_0
.end method

.method public getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 223
    if-nez p1, :cond_0

    .line 224
    const/4 v3, 0x0

    .line 256
    :goto_0
    return-object v3

    .line 226
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 229
    .local v2, "l":I
    iget-object v3, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v3, p1, v5, v2}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    .line 230
    .local v0, "entry":Ljava/util/Map$Entry;
    if-eqz v0, :cond_1

    .line 231
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0

    .line 234
    :cond_1
    move v1, v2

    .line 235
    .local v1, "i":I
    :cond_2
    const/16 v3, 0x2f

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    if-ltz v1, :cond_3

    .line 237
    iget-object v3, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v3, p1, v5, v1}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_2

    .line 239
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0

    .line 243
    :cond_3
    iget-object v3, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    if-eqz v3, :cond_4

    .line 244
    iget-object v3, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0

    .line 247
    :cond_4
    const/4 v1, 0x0

    .line 248
    :cond_5
    const/16 v3, 0x2e

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-lez v1, :cond_6

    .line 250
    iget-object v3, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, p1, v4, v5}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_5

    .line 252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0

    .line 256
    :cond_6
    iget-object v3, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0
.end method

.method public getMatches(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public match(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v0

    .line 208
    .local v0, "entry":Ljava/util/Map$Entry;
    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 210
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "pathSpec"    # Ljava/lang/Object;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 149
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/http/PathMap;->__pathSpecSeparators:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v4, "tok":Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 152
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 154
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "spec":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "*."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 157
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PathSpec "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". must start with \'/\' or \'*.\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 159
    :cond_1
    invoke-super {p0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 162
    .local v2, "old":Ljava/lang/Object;
    new-instance v0, Lorg/eclipse/jetty/http/PathMap$Entry;

    invoke-direct {v0, v3, p2}, Lorg/eclipse/jetty/http/PathMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    .local v0, "entry":Lorg/eclipse/jetty/http/PathMap$Entry;
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/PathMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    const-string v5, "/*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 167
    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0

    .line 168
    :cond_2
    const-string v5, "/*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 170
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "mapped":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/PathMap$Entry;->setMapped(Ljava/lang/String;)V

    .line 172
    iget-object v5, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v5, v1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v5, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v5, v1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v5, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 176
    .end local v1    # "mapped":Ljava/lang/String;
    :cond_3
    const-string v5, "*."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 177
    iget-object v5, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 178
    :cond_4
    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 180
    iget-boolean v5, p0, Lorg/eclipse/jetty/http/PathMap;->_nodefault:Z

    if-eqz v5, :cond_5

    .line 181
    iget-object v5, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v5, v3, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 184
    :cond_5
    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 185
    iget-object v5, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jetty/http/PathMap;->_defaultSingletonList:Ljava/util/List;

    goto/16 :goto_0

    .line 191
    :cond_6
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/http/PathMap$Entry;->setMapped(Ljava/lang/String;)V

    .line 192
    iget-object v5, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v5, v3, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 197
    .end local v0    # "entry":Lorg/eclipse/jetty/http/PathMap$Entry;
    .end local v2    # "old":Ljava/lang/Object;
    .end local v3    # "spec":Ljava/lang/String;
    :cond_7
    return-object v2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 137
    .local v0, "map":Ljava/util/HashMap;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/PathMap;->putAll(Ljava/util/Map;)V

    .line 138
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "pathSpec"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 342
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 344
    check-cast v0, Ljava/lang/String;

    .line 345
    .local v0, "spec":Ljava/lang/String;
    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    iput-object v2, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 363
    .end local v0    # "spec":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 347
    .restart local v0    # "spec":Ljava/lang/String;
    :cond_1
    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 350
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 351
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 353
    :cond_2
    const-string v1, "*."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 354
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 355
    :cond_3
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 357
    iput-object v2, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 358
    iput-object v2, p0, Lorg/eclipse/jetty/http/PathMap;->_defaultSingletonList:Ljava/util/List;

    goto :goto_0

    .line 361
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 129
    .local v0, "map":Ljava/util/HashMap;
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 130
    return-void
.end method
