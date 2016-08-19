.class public Lhdp/adapter/ManListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/adapter/ManListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private channelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/LiveChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/LiveChannelInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lhdp/adapter/ManListAdapter;->context:Landroid/content/Context;

    .line 24
    invoke-virtual {p0, p2}, Lhdp/adapter/ManListAdapter;->setChannelList(Ljava/util/ArrayList;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lhdp/adapter/ManListAdapter;->channelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lhdp/adapter/ManListAdapter;->channelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f08000b

    const/high16 v5, 0x7f080000

    .line 53
    iget-object v2, p0, Lhdp/adapter/ManListAdapter;->channelList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/LiveChannelInfo;

    .line 54
    .local v0, "channel":Lhdp/javabean/LiveChannelInfo;
    const/4 v1, 0x0

    .line 55
    .local v1, "holder":Lhdp/adapter/ManListAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 56
    iget-object v2, p0, Lhdp/adapter/ManListAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 57
    const v3, 0x7f030016

    const/4 v4, 0x0

    .line 56
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v1, Lhdp/adapter/ManListAdapter$ViewHolder;

    .end local v1    # "holder":Lhdp/adapter/ManListAdapter$ViewHolder;
    invoke-direct {v1, p0}, Lhdp/adapter/ManListAdapter$ViewHolder;-><init>(Lhdp/adapter/ManListAdapter;)V

    .line 60
    .restart local v1    # "holder":Lhdp/adapter/ManListAdapter$ViewHolder;
    const v2, 0x7f0a0037

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 59
    iput-object v2, v1, Lhdp/adapter/ManListAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f0a0036

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 61
    iput-object v2, v1, Lhdp/adapter/ManListAdapter$ViewHolder;->txtNum:Landroid/widget/TextView;

    .line 64
    const v2, 0x7f0a0051

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 63
    iput-object v2, v1, Lhdp/adapter/ManListAdapter$ViewHolder;->imghide:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    :goto_0
    iget-object v2, v1, Lhdp/adapter/ManListAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    iget-object v3, v0, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, v1, Lhdp/adapter/ManListAdapter$ViewHolder;->txtNum:Landroid/widget/TextView;

    iget v3, v0, Lhdp/javabean/LiveChannelInfo;->num:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-boolean v2, v0, Lhdp/javabean/LiveChannelInfo;->hide:Z

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, v1, Lhdp/adapter/ManListAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    iget-object v3, p0, Lhdp/adapter/ManListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v2, v1, Lhdp/adapter/ManListAdapter$ViewHolder;->txtNum:Landroid/widget/TextView;

    iget-object v3, p0, Lhdp/adapter/ManListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    :cond_0
    iget-boolean v2, v0, Lhdp/javabean/LiveChannelInfo;->hide:Z

    if-nez v2, :cond_1

    .line 80
    iget-object v2, v1, Lhdp/adapter/ManListAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    iget-object v3, p0, Lhdp/adapter/ManListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v2, v1, Lhdp/adapter/ManListAdapter$ViewHolder;->txtNum:Landroid/widget/TextView;

    iget-object v3, p0, Lhdp/adapter/ManListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    :cond_1
    iget-object v3, v1, Lhdp/adapter/ManListAdapter$ViewHolder;->imghide:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lhdp/javabean/LiveChannelInfo;->hide:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    return-object p2

    .line 67
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lhdp/adapter/ManListAdapter$ViewHolder;
    check-cast v1, Lhdp/adapter/ManListAdapter$ViewHolder;

    .restart local v1    # "holder":Lhdp/adapter/ManListAdapter$ViewHolder;
    goto :goto_0

    .line 87
    :cond_3
    const/4 v2, 0x4

    goto :goto_1
.end method

.method public setChannelList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lhdp/javabean/LiveChannelInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhdp/adapter/ManListAdapter;->channelList:Ljava/util/ArrayList;

    .line 34
    :goto_0
    return-void

    .line 31
    :cond_0
    iput-object p1, p0, Lhdp/adapter/ManListAdapter;->channelList:Ljava/util/ArrayList;

    goto :goto_0
.end method
