.class Lorg/mortbay/ijetty/deployer/AndroidContextDeployer$1;
.super Ljava/lang/Object;
.source "AndroidContextDeployer.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;


# direct methods
.method constructor <init>(Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer$1;->this$0:Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;

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

    .line 156
    :try_start_0
    const-string v2, ".xml"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer$1;->this$0:Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;

    invoke-virtual {v2}, Lorg/mortbay/ijetty/deployer/AndroidContextDeployer;->getConfigurationDir()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const/4 v1, 0x1

    .line 162
    :cond_0
    :goto_0
    return v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
