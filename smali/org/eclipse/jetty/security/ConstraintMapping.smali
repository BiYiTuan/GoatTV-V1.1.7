.class public Lorg/eclipse/jetty/security/ConstraintMapping;
.super Ljava/lang/Object;
.source "ConstraintMapping.java"


# instance fields
.field _constraint:Lorg/eclipse/jetty/util/security/Constraint;

.field _method:Ljava/lang/String;

.field _pathSpec:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConstraint()Lorg/eclipse/jetty/util/security/Constraint;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintMapping;->_constraint:Lorg/eclipse/jetty/util/security/Constraint;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintMapping;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public getPathSpec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintMapping;->_pathSpec:Ljava/lang/String;

    return-object v0
.end method

.method public setConstraint(Lorg/eclipse/jetty/util/security/Constraint;)V
    .locals 0
    .param p1, "constraint"    # Lorg/eclipse/jetty/util/security/Constraint;

    .prologue
    .line 41
    iput-object p1, p0, Lorg/eclipse/jetty/security/ConstraintMapping;->_constraint:Lorg/eclipse/jetty/util/security/Constraint;

    .line 42
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/eclipse/jetty/security/ConstraintMapping;->_method:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPathSpec(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/eclipse/jetty/security/ConstraintMapping;->_pathSpec:Ljava/lang/String;

    .line 78
    return-void
.end method
