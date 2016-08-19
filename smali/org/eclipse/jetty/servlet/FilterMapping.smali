.class public Lorg/eclipse/jetty/servlet/FilterMapping;
.super Ljava/lang/Object;
.source "FilterMapping.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/FilterMapping$1;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x1f

.field public static final ASYNC:I = 0x10

.field public static final DEFAULT:I = 0x0

.field public static final ERROR:I = 0x8

.field public static final FORWARD:I = 0x2

.field public static final INCLUDE:I = 0x4

.field public static final REQUEST:I = 0x1


# instance fields
.field private _dispatches:I

.field private _filterName:Ljava/lang/String;

.field private transient _holder:Lorg/eclipse/jetty/servlet/FilterHolder;

.field private _pathSpecs:[Ljava/lang/String;

.field private _servletNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 91
    return-void
.end method

.method public static dispatch(Lorg/eclipse/jetty/server/DispatcherType;)I
    .locals 2
    .param p0, "type"    # Lorg/eclipse/jetty/server/DispatcherType;

    .prologue
    .line 62
    sget-object v0, Lorg/eclipse/jetty/servlet/FilterMapping$1;->$SwitchMap$org$eclipse$jetty$server$DispatcherType:[I

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/DispatcherType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/DispatcherType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :pswitch_0
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    .line 67
    :pswitch_1
    const/16 v0, 0x10

    goto :goto_0

    .line 69
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 71
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 73
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static dispatch(Ljava/lang/String;)Lorg/eclipse/jetty/server/DispatcherType;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "request"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lorg/eclipse/jetty/server/DispatcherType;->REQUEST:Lorg/eclipse/jetty/server/DispatcherType;

    .line 53
    :goto_0
    return-object v0

    .line 46
    :cond_0
    const-string v0, "forward"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lorg/eclipse/jetty/server/DispatcherType;->FORWARD:Lorg/eclipse/jetty/server/DispatcherType;

    goto :goto_0

    .line 48
    :cond_1
    const-string v0, "include"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    sget-object v0, Lorg/eclipse/jetty/server/DispatcherType;->INCLUDE:Lorg/eclipse/jetty/server/DispatcherType;

    goto :goto_0

    .line 50
    :cond_2
    const-string v0, "error"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    sget-object v0, Lorg/eclipse/jetty/server/DispatcherType;->ERROR:Lorg/eclipse/jetty/server/DispatcherType;

    goto :goto_0

    .line 52
    :cond_3
    const-string v0, "async"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53
    sget-object v0, Lorg/eclipse/jetty/server/DispatcherType;->ASYNC:Lorg/eclipse/jetty/server/DispatcherType;

    goto :goto_0

    .line 54
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method appliesTo(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 119
    iget v2, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    if-nez v2, :cond_2

    .line 120
    if-eq p1, v1, :cond_0

    const/16 v2, 0x10

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_holder:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->isAsyncSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 121
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method appliesTo(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/servlet/FilterMapping;->appliesTo(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 104
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2, p1, v1}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 103
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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
    .line 265
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 266
    return-void
.end method

.method getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_holder:Lorg/eclipse/jetty/servlet/FilterHolder;

    return-object v0
.end method

.method public getFilterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_filterName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathSpecs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    return-object v0
.end method

.method public getServletNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_servletNames:[Ljava/lang/String;

    return-object v0
.end method

.method public setDispatcherTypes(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lorg/eclipse/jetty/server/DispatcherType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "dispatcherTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/eclipse/jetty/server/DispatcherType;>;"
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 155
    if-eqz p1, :cond_4

    .line 157
    sget-object v0, Lorg/eclipse/jetty/server/DispatcherType;->ERROR:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 159
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/server/DispatcherType;->FORWARD:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 161
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/server/DispatcherType;->INCLUDE:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 163
    :cond_2
    sget-object v0, Lorg/eclipse/jetty/server/DispatcherType;->REQUEST:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    iget v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 165
    :cond_3
    sget-object v0, Lorg/eclipse/jetty/server/DispatcherType;->ASYNC:Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    iget v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 168
    :cond_4
    return-void
.end method

.method public setDispatches(I)V
    .locals 0
    .param p1, "dispatches"    # I

    .prologue
    .line 183
    iput p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 184
    return-void
.end method

.method setFilterHolder(Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .locals 1
    .param p1, "holder"    # Lorg/eclipse/jetty/servlet/FilterHolder;

    .prologue
    .line 201
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_holder:Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 202
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public setFilterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "filterName"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_filterName:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setPathSpec(Ljava/lang/String;)V
    .locals 2
    .param p1, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 220
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setPathSpecs([Ljava/lang/String;)V
    .locals 0
    .param p1, "pathSpecs"    # [Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setServletName(Ljava/lang/String;)V
    .locals 2
    .param p1, "servletName"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_servletNames:[Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setServletNames([Ljava/lang/String;)V
    .locals 0
    .param p1, "servletNames"    # [Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_servletNames:[Ljava/lang/String;

    .line 240
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_servletNames:[Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_filterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
