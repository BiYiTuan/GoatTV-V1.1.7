.class public Lorg/eclipse/jetty/servlet/ServletMapping;
.super Ljava/lang/Object;
.source "ServletMapping.java"


# instance fields
.field private _pathSpecs:[Ljava/lang/String;

.field private _servletName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 86
    return-void
.end method

.method public getPathSpecs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_pathSpecs:[Ljava/lang/String;

    return-object v0
.end method

.method public getServletName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_servletName:Ljava/lang/String;

    return-object v0
.end method

.method public setPathSpec(Ljava/lang/String;)V
    .locals 2
    .param p1, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_pathSpecs:[Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setPathSpecs([Ljava/lang/String;)V
    .locals 0
    .param p1, "pathSpecs"    # [Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_pathSpecs:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setServletName(Ljava/lang/String;)V
    .locals 0
    .param p1, "servletName"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_servletName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_pathSpecs:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "[]"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_servletName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_pathSpecs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
