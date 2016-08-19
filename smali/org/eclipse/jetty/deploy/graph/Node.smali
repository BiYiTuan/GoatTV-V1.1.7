.class public final Lorg/eclipse/jetty/deploy/graph/Node;
.super Ljava/lang/Object;
.source "Node.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final _name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/eclipse/jetty/deploy/graph/Node;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/eclipse/jetty/deploy/graph/Node;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-boolean v0, Lorg/eclipse/jetty/deploy/graph/Node;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/graph/Node;->_name:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    if-ne p0, p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 56
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 57
    check-cast v0, Lorg/eclipse/jetty/deploy/graph/Node;

    .line 58
    .local v0, "other":Lorg/eclipse/jetty/deploy/graph/Node;
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/graph/Node;->_name:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 60
    iget-object v3, v0, Lorg/eclipse/jetty/deploy/graph/Node;->_name:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 61
    goto :goto_0

    .line 63
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jetty/deploy/graph/Node;->_name:Ljava/lang/String;

    iget-object v4, v0, Lorg/eclipse/jetty/deploy/graph/Node;->_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 64
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Node;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/eclipse/jetty/deploy/graph/Node;->_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Node["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/deploy/graph/Node;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
