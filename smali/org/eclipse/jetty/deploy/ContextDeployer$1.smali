.class Lorg/eclipse/jetty/deploy/ContextDeployer$1;
.super Ljava/lang/Object;
.source "ContextDeployer.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/deploy/ContextDeployer;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/deploy/ContextDeployer;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/deploy/ContextDeployer;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lorg/eclipse/jetty/deploy/ContextDeployer$1;->this$0:Lorg/eclipse/jetty/deploy/ContextDeployer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 402
    :try_start_0
    const-string v2, ".xml"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    const/4 v1, 0x1

    .line 409
    :cond_0
    :goto_0
    return v1

    .line 406
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lorg/eclipse/jetty/deploy/ContextDeployer;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/deploy/ContextDeployer;->access$300()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
