.class public Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;
.super Ljava/lang/Object;
.source "Holder.java"

# interfaces
.implements Lorg/eclipse/jetty/servlet/api/Registration$Dynamic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HolderRegistration"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/servlet/Holder;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/servlet/Holder;)V
    .locals 0

    .prologue
    .line 302
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 323
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/Holder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->getInitParameters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAsyncSupported(Z)V
    .locals 1
    .param p1, "isAsyncSupported"    # Z

    .prologue
    .line 306
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->illegalStateIfContextStarted()V

    .line 307
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/Holder;->setAsyncSupported(Z)V

    .line 308
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 3
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 312
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    # getter for: Lorg/eclipse/jetty/servlet/Holder;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/servlet/Holder;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    # getter for: Lorg/eclipse/jetty/servlet/Holder;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/servlet/Holder;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    :cond_0
    return-void
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 338
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->illegalStateIfContextStarted()V

    .line 339
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/Holder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x0

    .line 342
    :goto_0
    return v0

    .line 341
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/servlet/Holder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setInitParameters(Ljava/util/Map;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "this":Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;, "Lorg/eclipse/jetty/servlet/Holder<TT;>.HolderRegistration;"
    .local p1, "initParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/Holder;->illegalStateIfContextStarted()V

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "clash":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 351
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/servlet/Holder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 353
    if-nez v0, :cond_1

    .line 354
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "clash":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 355
    .restart local v0    # "clash":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 361
    .end local v0    # "clash":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    return-object v0

    .line 360
    .restart local v0    # "clash":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/servlet/Holder;->setInitParameters(Ljava/util/Map;)V

    .line 361
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1
.end method
