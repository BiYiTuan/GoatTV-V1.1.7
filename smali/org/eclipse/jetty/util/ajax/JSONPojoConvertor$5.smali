.class final Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$5;
.super Ljava/lang/Object;
.source "JSONPojoConvertor.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualValue(Ljava/lang/Number;)Ljava/lang/Object;
    .locals 3
    .param p1, "number"    # Ljava/lang/Number;

    .prologue
    .line 408
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .end local p1    # "number":Ljava/lang/Number;
    :goto_0
    return-object p1

    .restart local p1    # "number":Ljava/lang/Number;
    :cond_0
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    move-object p1, v0

    goto :goto_0
.end method
