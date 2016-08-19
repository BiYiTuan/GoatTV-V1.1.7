.class public Lorg/eclipse/jetty/security/ConstraintSecurityHandler;
.super Lorg/eclipse/jetty/security/SecurityHandler;
.source "ConstraintSecurityHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/security/ConstraintAware;


# instance fields
.field private final _constraintMap:Lorg/eclipse/jetty/http/PathMap;

.field private final _constraintMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;"
        }
    .end annotation
.end field

.field private final _roles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _strict:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/eclipse/jetty/security/SecurityHandler;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    .line 48
    new-instance v0, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    return-void
.end method


# virtual methods
.method public addConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V
    .locals 5
    .param p1, "mapping"    # Lorg/eclipse/jetty/security/ConstraintMapping;

    .prologue
    .line 181
    iget-object v4, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 183
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 184
    .local v3, "role":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->addRole(Ljava/lang/String;)V

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "role":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->processConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V

    .line 190
    :cond_1
    return-void
.end method

.method public addRole(Ljava/lang/String;)V
    .locals 6
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v5, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 199
    .local v4, "modified":Z
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    iget-boolean v5, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    if-eqz v5, :cond_2

    .line 202
    iget-object v5, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v5}, Lorg/eclipse/jetty/http/PathMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 204
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/security/RoleInfo;

    .line 206
    .local v2, "info":Lorg/eclipse/jetty/security/RoleInfo;
    invoke-virtual {v2}, Lorg/eclipse/jetty/security/RoleInfo;->isAnyRole()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 207
    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/security/RoleInfo;->addRole(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lorg/eclipse/jetty/security/RoleInfo;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    :cond_2
    return-void
.end method

.method protected checkUserDataPermissions(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "pathInContext"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "response"    # Lorg/eclipse/jetty/server/Response;
    .param p4, "constraintInfo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x193

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 341
    if-nez p4, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v3, p4

    .line 344
    check-cast v3, Lorg/eclipse/jetty/security/RoleInfo;

    .line 345
    .local v3, "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    invoke-virtual {v3}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 346
    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {v3}, Lorg/eclipse/jetty/security/RoleInfo;->getUserDataConstraint()Lorg/eclipse/jetty/security/UserDataConstraint;

    move-result-object v2

    .line 350
    .local v2, "dataConstraint":Lorg/eclipse/jetty/security/UserDataConstraint;
    if-eqz v2, :cond_0

    sget-object v7, Lorg/eclipse/jetty/security/UserDataConstraint;->None:Lorg/eclipse/jetty/security/UserDataConstraint;

    if-eq v2, v7, :cond_0

    .line 354
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    .line 355
    .local v0, "connection":Lorg/eclipse/jetty/server/AbstractHttpConnection;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v1

    .line 357
    .local v1, "connector":Lorg/eclipse/jetty/server/Connector;
    sget-object v7, Lorg/eclipse/jetty/security/UserDataConstraint;->Integral:Lorg/eclipse/jetty/security/UserDataConstraint;

    if-ne v2, v7, :cond_5

    .line 359
    invoke-interface {v1, p2}, Lorg/eclipse/jetty/server/Connector;->isIntegral(Lorg/eclipse/jetty/server/Request;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 361
    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getIntegralPort()I

    move-result v7

    if-lez v7, :cond_4

    .line 363
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getIntegralScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getIntegralPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 365
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 366
    :cond_3
    invoke-virtual {p3, v6}, Lorg/eclipse/jetty/server/Response;->setContentLength(I)V

    .line 367
    invoke-virtual {p3, v4}, Lorg/eclipse/jetty/server/Response;->sendRedirect(Ljava/lang/String;)V

    .line 372
    .end local v4    # "url":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    move v5, v6

    .line 373
    goto/16 :goto_0

    .line 370
    :cond_4
    const-string v7, "!Integral"

    invoke-virtual {p3, v8, v7}, Lorg/eclipse/jetty/server/Response;->sendError(ILjava/lang/String;)V

    goto :goto_1

    .line 375
    :cond_5
    sget-object v7, Lorg/eclipse/jetty/security/UserDataConstraint;->Confidential:Lorg/eclipse/jetty/security/UserDataConstraint;

    if-ne v2, v7, :cond_8

    .line 377
    invoke-interface {v1, p2}, Lorg/eclipse/jetty/server/Connector;->isConfidential(Lorg/eclipse/jetty/server/Request;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 380
    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConfidentialPort()I

    move-result v7

    if-lez v7, :cond_7

    .line 382
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConfidentialScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConfidentialPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 384
    .restart local v4    # "url":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 385
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 387
    :cond_6
    invoke-virtual {p3, v6}, Lorg/eclipse/jetty/server/Response;->setContentLength(I)V

    .line 388
    invoke-virtual {p3, v4}, Lorg/eclipse/jetty/server/Response;->sendRedirect(Ljava/lang/String;)V

    .line 393
    .end local v4    # "url":Ljava/lang/String;
    :goto_2
    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    move v5, v6

    .line 394
    goto/16 :goto_0

    .line 391
    :cond_7
    const-string v7, "!Confidential"

    invoke-virtual {p3, v8, v7}, Lorg/eclipse/jetty/server/Response;->sendError(ILjava/lang/String;)V

    goto :goto_2

    .line 398
    :cond_8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid dataConstraint value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected checkWebResourcePermissions(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;Lorg/eclipse/jetty/server/UserIdentity;)Z
    .locals 5
    .param p1, "pathInContext"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "response"    # Lorg/eclipse/jetty/server/Response;
    .param p4, "constraintInfo"    # Ljava/lang/Object;
    .param p5, "userIdentity"    # Lorg/eclipse/jetty/server/UserIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 416
    if-nez p4, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p4

    .line 420
    check-cast v2, Lorg/eclipse/jetty/security/RoleInfo;

    .line 422
    .local v2, "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    invoke-virtual {v2}, Lorg/eclipse/jetty/security/RoleInfo;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    invoke-virtual {v2}, Lorg/eclipse/jetty/security/RoleInfo;->isAnyRole()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getAuthType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 430
    :cond_2
    invoke-virtual {v2}, Lorg/eclipse/jetty/security/RoleInfo;->getRoles()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 432
    .local v1, "role":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-interface {p5, v1, v4}, Lorg/eclipse/jetty/server/UserIdentity;->isUserInRole(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity$Scope;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 435
    .end local v1    # "role":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v2, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/PathMap;->clear()V

    .line 221
    iget-object v2, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 225
    .local v1, "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->processConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V

    goto :goto_0

    .line 228
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->doStart()V

    .line 229
    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/PathMap;->clear()V

    .line 235
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 237
    invoke-super {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->doStop()V

    .line 238
    return-void
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->dumpThis(Ljava/lang/Appendable;)V

    .line 443
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getAuthenticator()Lorg/eclipse/jetty/security/Authenticator;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getBeans()Ljava/util/Collection;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 451
    return-void
.end method

.method public getConstraintMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    return-object v0
.end method

.method public getRoles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    return-object v0
.end method

.method protected isAuthMandatory(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p2, "base_response"    # Lorg/eclipse/jetty/server/Response;
    .param p3, "constraintInfo"    # Ljava/lang/Object;

    .prologue
    .line 405
    if-nez p3, :cond_0

    .line 407
    const/4 v0, 0x0

    .line 409
    .end local p3    # "constraintInfo":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p3    # "constraintInfo":Ljava/lang/Object;
    :cond_0
    check-cast p3, Lorg/eclipse/jetty/security/RoleInfo;

    .end local p3    # "constraintInfo":Ljava/lang/Object;
    invoke-virtual {p3}, Lorg/eclipse/jetty/security/RoleInfo;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method public isStrict()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    return v0
.end method

.method protected prepareConstraintInfo(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;)Ljava/lang/Object;
    .locals 5
    .param p1, "pathInContext"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    const/4 v3, 0x0

    .line 325
    iget-object v4, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 327
    .local v1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    if-eqz v1, :cond_1

    .line 329
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "httpMethod":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/security/RoleInfo;

    .line 331
    .local v2, "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    if-nez v2, :cond_0

    .line 332
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    check-cast v2, Lorg/eclipse/jetty/security/RoleInfo;

    .line 336
    .end local v0    # "httpMethod":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    move-object v2, v3

    goto :goto_0
.end method

.method protected processConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V
    .locals 20
    .param p1, "mapping"    # Lorg/eclipse/jetty/security/ConstraintMapping;

    .prologue
    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/http/PathMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 243
    .local v11, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    if-nez v11, :cond_0

    .line 245
    new-instance v11, Lorg/eclipse/jetty/util/StringMap;

    .end local v11    # "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    invoke-direct {v11}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    .line 246
    .restart local v11    # "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_0
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/security/RoleInfo;

    .line 249
    .local v2, "allMethodsRoleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 321
    :cond_1
    :goto_0
    return-void

    .line 252
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getMethod()Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, "httpMethod":Ljava/lang/String;
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/eclipse/jetty/security/RoleInfo;

    .line 254
    .local v14, "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    if-nez v14, :cond_3

    .line 256
    new-instance v14, Lorg/eclipse/jetty/security/RoleInfo;

    .end local v14    # "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    invoke-direct {v14}, Lorg/eclipse/jetty/security/RoleInfo;-><init>()V

    .line 257
    .restart local v14    # "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    invoke-interface {v11, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    if-eqz v2, :cond_3

    .line 260
    invoke-virtual {v14, v2}, Lorg/eclipse/jetty/security/RoleInfo;->combine(Lorg/eclipse/jetty/security/RoleInfo;)V

    .line 263
    :cond_3
    invoke-virtual {v14}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result v17

    if-nez v17, :cond_1

    .line 266
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v5

    .line 267
    .local v5, "constraint":Lorg/eclipse/jetty/util/security/Constraint;
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/security/Constraint;->isForbidden()Z

    move-result v7

    .line 268
    .local v7, "forbidden":Z
    invoke-virtual {v14, v7}, Lorg/eclipse/jetty/security/RoleInfo;->setForbidden(Z)V

    .line 269
    if-eqz v7, :cond_4

    .line 271
    if-nez v8, :cond_1

    .line 273
    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 274
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v11, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 279
    :cond_4
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/security/Constraint;->getDataConstraint()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/eclipse/jetty/security/UserDataConstraint;->get(I)Lorg/eclipse/jetty/security/UserDataConstraint;

    move-result-object v16

    .line 280
    .local v16, "userDataConstraint":Lorg/eclipse/jetty/security/UserDataConstraint;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/eclipse/jetty/security/RoleInfo;->setUserDataConstraint(Lorg/eclipse/jetty/security/UserDataConstraint;)V

    .line 282
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/security/Constraint;->getAuthenticate()Z

    move-result v4

    .line 283
    .local v4, "checked":Z
    invoke-virtual {v14, v4}, Lorg/eclipse/jetty/security/RoleInfo;->setChecked(Z)V

    .line 284
    invoke-virtual {v14}, Lorg/eclipse/jetty/security/RoleInfo;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 286
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/security/Constraint;->isAnyRole()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 288
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 292
    .local v13, "role":Ljava/lang/String;
    invoke-virtual {v14, v13}, Lorg/eclipse/jetty/security/RoleInfo;->addRole(Ljava/lang/String;)V

    goto :goto_1

    .line 296
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "role":Ljava/lang/String;
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/eclipse/jetty/security/RoleInfo;->setAnyRole(Z)V

    .line 309
    :cond_6
    if-nez v8, :cond_1

    .line 311
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 313
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_7

    .line 315
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/eclipse/jetty/security/RoleInfo;

    .line 316
    .local v15, "specific":Lorg/eclipse/jetty/security/RoleInfo;
    invoke-virtual {v15, v14}, Lorg/eclipse/jetty/security/RoleInfo;->combine(Lorg/eclipse/jetty/security/RoleInfo;)V

    goto :goto_2

    .line 300
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "specific":Lorg/eclipse/jetty/security/RoleInfo;
    :cond_8
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v12

    .line 301
    .local v12, "newRoles":[Ljava/lang/String;
    move-object v3, v12

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v10, :cond_6

    aget-object v13, v3, v9

    .line 303
    .restart local v13    # "role":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 304
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Attempt to use undeclared role: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", known roles: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 305
    :cond_9
    invoke-virtual {v14, v13}, Lorg/eclipse/jetty/security/RoleInfo;->addRole(Ljava/lang/String;)V

    .line 301
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method public setConstraintMappings(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "constraintMappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/ConstraintMapping;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->setConstraintMappings(Ljava/util/List;Ljava/util/Set;)V

    .line 108
    return-void
.end method

.method public setConstraintMappings(Ljava/util/List;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "constraintMappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/ConstraintMapping;>;"
    .local p2, "roles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 135
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Started"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 136
    :cond_0
    iget-object v7, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 137
    iget-object v7, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    if-nez p2, :cond_3

    .line 141
    new-instance p2, Ljava/util/HashSet;

    .end local p2    # "roles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 142
    .restart local p2    # "roles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 144
    .local v1, "cm":Lorg/eclipse/jetty/security/ConstraintMapping;
    invoke-virtual {v1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "cmr":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 147
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 148
    .local v6, "r":Ljava/lang/String;
    const-string v7, "*"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 149
    invoke-interface {p2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cm":Lorg/eclipse/jetty/security/ConstraintMapping;
    .end local v2    # "cmr":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "r":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->setRoles(Ljava/util/Set;)V

    .line 154
    return-void
.end method

.method public setConstraintMappings([Lorg/eclipse/jetty/security/ConstraintMapping;)V
    .locals 2
    .param p1, "constraintMappings"    # [Lorg/eclipse/jetty/security/ConstraintMapping;

    .prologue
    .line 120
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->setConstraintMappings(Ljava/util/List;Ljava/util/Set;)V

    .line 121
    return-void
.end method

.method public setRoles(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "roles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 170
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 171
    return-void
.end method

.method public setStrict(Z)V
    .locals 0
    .param p1, "strict"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    .line 79
    return-void
.end method
