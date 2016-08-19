.class Lorg/eclipse/jetty/deploy/graph/GraphOutputDot$TopNodeSort;
.super Ljava/lang/Object;
.source "GraphOutputDot.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/deploy/graph/GraphOutputDot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TopNodeSort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/eclipse/jetty/deploy/graph/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private collator:Ljava/text/Collator;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/deploy/graph/GraphOutputDot$TopNodeSort;->collator:Ljava/text/Collator;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/deploy/graph/GraphOutputDot$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/deploy/graph/GraphOutputDot$1;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/eclipse/jetty/deploy/graph/GraphOutputDot$TopNodeSort;-><init>()V

    return-void
.end method

.method private toKey(Lorg/eclipse/jetty/deploy/graph/Node;)Ljava/text/CollationKey;
    .locals 2
    .param p1, "node"    # Lorg/eclipse/jetty/deploy/graph/Node;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/GraphOutputDot$TopNodeSort;->collator:Ljava/text/Collator;

    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/graph/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Lorg/eclipse/jetty/deploy/graph/Node;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/eclipse/jetty/deploy/graph/Node;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/deploy/graph/GraphOutputDot$TopNodeSort;->compare(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/graph/Node;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/eclipse/jetty/deploy/graph/Node;Lorg/eclipse/jetty/deploy/graph/Node;)I
    .locals 4
    .param p1, "o1"    # Lorg/eclipse/jetty/deploy/graph/Node;
    .param p2, "o2"    # Lorg/eclipse/jetty/deploy/graph/Node;

    .prologue
    .line 52
    invoke-virtual {p1}, Lorg/eclipse/jetty/deploy/graph/Node;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "undeployed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    const/4 v2, -0x1

    .line 64
    :goto_0
    return v2

    .line 57
    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/deploy/graph/Node;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "undeployed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    const/4 v2, 0x1

    goto :goto_0

    .line 62
    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/deploy/graph/GraphOutputDot$TopNodeSort;->toKey(Lorg/eclipse/jetty/deploy/graph/Node;)Ljava/text/CollationKey;

    move-result-object v0

    .line 63
    .local v0, "key1":Ljava/text/CollationKey;
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/deploy/graph/GraphOutputDot$TopNodeSort;->toKey(Lorg/eclipse/jetty/deploy/graph/Node;)Ljava/text/CollationKey;

    move-result-object v1

    .line 64
    .local v1, "key2":Ljava/text/CollationKey;
    invoke-virtual {v0, v1}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v2

    goto :goto_0
.end method
