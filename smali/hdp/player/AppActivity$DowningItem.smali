.class Lhdp/player/AppActivity$DowningItem;
.super Ljava/lang/Object;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/player/AppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DowningItem"
.end annotation


# instance fields
.field private app:Lhdp/javabean/AppInfo$NetApp;

.field private key:Ljava/lang/String;

.field final synthetic this$0:Lhdp/player/AppActivity;

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lhdp/player/AppActivity;Ljava/lang/String;Lhdp/javabean/AppInfo$NetApp;Landroid/widget/TextView;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "app"    # Lhdp/javabean/AppInfo$NetApp;
    .param p4, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 440
    iput-object p1, p0, Lhdp/player/AppActivity$DowningItem;->this$0:Lhdp/player/AppActivity;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p2, p0, Lhdp/player/AppActivity$DowningItem;->key:Ljava/lang/String;

    .line 443
    iput-object p3, p0, Lhdp/player/AppActivity$DowningItem;->app:Lhdp/javabean/AppInfo$NetApp;

    .line 444
    iput-object p4, p0, Lhdp/player/AppActivity$DowningItem;->tv:Landroid/widget/TextView;

    .line 445
    return-void
.end method

.method private Clean(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 453
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhdp/player/AppActivity$DowningItem;->this$0:Lhdp/player/AppActivity;

    # getter for: Lhdp/player/AppActivity;->savefolder:Ljava/lang/String;
    invoke-static {v2}, Lhdp/player/AppActivity;->access$3(Lhdp/player/AppActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhdp/player/AppActivity$DowningItem;->app:Lhdp/javabean/AppInfo$NetApp;

    iget-object v2, v2, Lhdp/javabean/AppInfo$NetApp;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 457
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lhdp/player/AppActivity$DowningItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lhdp/player/AppActivity$DowningItem;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lhdp/player/AppActivity$DowningItem;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lhdp/player/AppActivity$DowningItem;->tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lhdp/player/AppActivity$DowningItem;)Lhdp/javabean/AppInfo$NetApp;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lhdp/player/AppActivity$DowningItem;->app:Lhdp/javabean/AppInfo$NetApp;

    return-object v0
.end method

.method static synthetic access$3(Lhdp/player/AppActivity$DowningItem;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lhdp/player/AppActivity$DowningItem;->Clean(Landroid/content/Context;)V

    return-void
.end method
