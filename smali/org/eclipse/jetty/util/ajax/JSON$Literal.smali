.class public Lorg/eclipse/jetty/util/ajax/JSON$Literal;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Generator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/ajax/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Literal"
.end annotation


# instance fields
.field private _json:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 1640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1641
    # getter for: Lorg/eclipse/jetty/util/ajax/JSON;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/util/ajax/JSON;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    invoke-static {p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    .line 1643
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSON$Literal;->_json:Ljava/lang/String;

    .line 1644
    return-void
.end method


# virtual methods
.method public addJSON(Ljava/lang/Appendable;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/Appendable;

    .prologue
    .line 1656
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$Literal;->_json:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1662
    return-void

    .line 1658
    :catch_0
    move-exception v0

    .line 1660
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$Literal;->_json:Ljava/lang/String;

    return-object v0
.end method
