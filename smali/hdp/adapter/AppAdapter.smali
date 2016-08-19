.class public Lhdp/adapter/AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/adapter/AppAdapter$ViewHooder;
    }
.end annotation


# instance fields
.field private apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/AppInfo$NetApp;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/nostra13/universalimageloader/core/ImageLoader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "imageLoader"    # Lcom/nostra13/universalimageloader/core/ImageLoader;
    .param p4, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/AppInfo$NetApp;",
            ">;",
            "Lcom/nostra13/universalimageloader/core/ImageLoader;",
            "Lcom/nostra13/universalimageloader/core/DisplayImageOptions;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/AppInfo$NetApp;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lhdp/adapter/AppAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lhdp/adapter/AppAdapter;->apps:Ljava/util/ArrayList;

    .line 33
    iput-object p3, p0, Lhdp/adapter/AppAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 34
    iput-object p4, p0, Lhdp/adapter/AppAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 35
    return-void
.end method

.method private IsInstall(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p2, "packagename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhdp/adapter/LocalAppInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lhdp/adapter/LocalAppInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 85
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/adapter/LocalAppInfo;

    .line 86
    .local v0, "localAppInfo":Lhdp/adapter/LocalAppInfo;
    iget-object v2, v0, Lhdp/adapter/LocalAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lhdp/adapter/AppAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 54
    iget-object v3, p0, Lhdp/adapter/AppAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/AppInfo$NetApp;

    .line 55
    .local v0, "app":Lhdp/javabean/AppInfo$NetApp;
    move-object v2, p2

    .line 57
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 58
    iget-object v3, p0, Lhdp/adapter/AppAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030001

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 59
    new-instance v1, Lhdp/adapter/AppAdapter$ViewHooder;

    invoke-direct {v1, p0, v5}, Lhdp/adapter/AppAdapter$ViewHooder;-><init>(Lhdp/adapter/AppAdapter;Lhdp/adapter/AppAdapter$ViewHooder;)V

    .line 60
    .local v1, "hooder":Lhdp/adapter/AppAdapter$ViewHooder;
    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lhdp/adapter/AppAdapter$ViewHooder;->icon:Landroid/widget/ImageView;

    .line 61
    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lhdp/adapter/AppAdapter$ViewHooder;->install:Landroid/widget/ImageView;

    .line 62
    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lhdp/adapter/AppAdapter$ViewHooder;->name:Landroid/widget/TextView;

    .line 63
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    iget-object v3, v1, Lhdp/adapter/AppAdapter$ViewHooder;->name:Landroid/widget/TextView;

    iget-object v4, v0, Lhdp/javabean/AppInfo$NetApp;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v3, p0, Lhdp/adapter/AppAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v4, v0, Lhdp/javabean/AppInfo$NetApp;->icon:Ljava/lang/String;

    iget-object v5, v1, Lhdp/adapter/AppAdapter$ViewHooder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lhdp/adapter/AppAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 70
    sget-object v3, Lhdp/player/AppActivity;->localAppInfos:Ljava/util/List;

    iget-object v4, v0, Lhdp/javabean/AppInfo$NetApp;->packagename:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lhdp/adapter/AppAdapter;->IsInstall(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    iget-object v3, v1, Lhdp/adapter/AppAdapter$ViewHooder;->install:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    :goto_1
    return-object v2

    .line 66
    .end local v1    # "hooder":Lhdp/adapter/AppAdapter$ViewHooder;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhdp/adapter/AppAdapter$ViewHooder;

    .restart local v1    # "hooder":Lhdp/adapter/AppAdapter$ViewHooder;
    goto :goto_0

    .line 73
    :cond_1
    iget-object v3, v1, Lhdp/adapter/AppAdapter$ViewHooder;->install:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
