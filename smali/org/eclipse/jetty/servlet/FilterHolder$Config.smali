.class Lorg/eclipse/jetty/servlet/FilterHolder$Config;
.super Lorg/eclipse/jetty/servlet/Holder$HolderConfig;
.source "FilterHolder.java"

# interfaces
.implements Ljavax/servlet/FilterConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/FilterHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Config"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/servlet/FilterHolder;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Config;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderConfig;-><init>(Lorg/eclipse/jetty/servlet/Holder;)V

    return-void
.end method


# virtual methods
.method public getFilterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Config;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/FilterHolder;->_name:Ljava/lang/String;

    return-object v0
.end method
