.class public Lhdp/adapter/ChannelListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChannelListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdp/adapter/ChannelListAdapter$ViewHolder;
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
    .line 26
    .local p2, "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lhdp/adapter/ChannelListAdapter;->context:Landroid/content/Context;

    .line 30
    invoke-virtual {p0, p2}, Lhdp/adapter/ChannelListAdapter;->setChannelList(Ljava/util/ArrayList;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lhdp/adapter/ChannelListAdapter;->channelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lhdp/adapter/ChannelListAdapter;->channelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 61
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 68
    iget-object v2, p0, Lhdp/adapter/ChannelListAdapter;->channelList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdp/javabean/LiveChannelInfo;

    .line 69
    .local v0, "channel":Lhdp/javabean/LiveChannelInfo;
    const/4 v1, 0x0

    .line 72
    .local v1, "holder":Lhdp/adapter/ChannelListAdapter$ViewHolder;
    if-nez p2, :cond_4

    .line 73
    invoke-static {}, Lhdp/http/MyApp;->getTvSize()Ljava/lang/String;

    move-result-object v2

    const-string v5, "small"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Lhdp/adapter/ChannelListAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 75
    const v5, 0x7f030010

    .line 74
    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 84
    :goto_0
    new-instance v1, Lhdp/adapter/ChannelListAdapter$ViewHolder;

    .end local v1    # "holder":Lhdp/adapter/ChannelListAdapter$ViewHolder;
    invoke-direct {v1, p0}, Lhdp/adapter/ChannelListAdapter$ViewHolder;-><init>(Lhdp/adapter/ChannelListAdapter;)V

    .line 86
    .restart local v1    # "holder":Lhdp/adapter/ChannelListAdapter$ViewHolder;
    const v2, 0x7f0a0037

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 85
    iput-object v2, v1, Lhdp/adapter/ChannelListAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    .line 88
    const v2, 0x7f0a0036

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 87
    iput-object v2, v1, Lhdp/adapter/ChannelListAdapter$ViewHolder;->txtNum:Landroid/widget/TextView;

    .line 90
    const v2, 0x7f0a0038

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 89
    iput-object v2, v1, Lhdp/adapter/ChannelListAdapter$ViewHolder;->imgHui:Landroid/widget/ImageView;

    .line 92
    const v2, 0x7f0a0039

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 91
    iput-object v2, v1, Lhdp/adapter/ChannelListAdapter$ViewHolder;->imgSharp:Landroid/widget/ImageView;

    .line 94
    const v2, 0x7f0a003a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 93
    iput-object v2, v1, Lhdp/adapter/ChannelListAdapter$ViewHolder;->imgFav:Landroid/widget/ImageView;

    .line 97
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    :goto_1
    iget-object v2, v1, Lhdp/adapter/ChannelListAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    iget-object v5, v0, Lhdp/javabean/LiveChannelInfo;->vname:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v2, v1, Lhdp/adapter/ChannelListAdapter$ViewHolder;->txtNum:Landroid/widget/TextView;

    iget v5, v0, Lhdp/javabean/LiveChannelInfo;->num:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, v0, Lhdp/javabean/LiveChannelInfo;->quality:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lhdp/javabean/LiveChannelInfo;->quality:Ljava/lang/String;

    const-string v5, "sd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 114
    :cond_0
    iget-object v2, v1, Lhdp/adapter/ChannelListAdapter$ViewHolder;->imgSharp:Landroid/widget/ImageView;

    .line 115
    const v5, 0x7f02003c

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    :cond_1
    :goto_2
    iget-object v5, v1, Lhdp/adapter/ChannelListAdapter$ViewHolder;->imgFav:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lhdp/javabean/LiveChannelInfo;->favorite:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v2, v0, Lhdp/javabean/LiveChannelInfo;->huibo:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lhdp/javabean/LiveChannelInfo;->huibo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 131
    iget-object v2, v1, Lhdp/adapter/ChannelListAdapter$ViewHolder;->imgHui:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    :goto_4
    return-object p2

    .line 76
    :cond_2
    invoke-static {}, Lhdp/http/MyApp;->getTvSize()Ljava/lang/String;

    move-result-object v2

    const-string v5, "large"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    iget-object v2, p0, Lhdp/adapter/ChannelListAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 78
    const v5, 0x7f03000e

    .line 77
    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    goto/16 :goto_0

    .line 80
    :cond_3
    iget-object v2, p0, Lhdp/adapter/ChannelListAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 81
    const v5, 0x7f03000f

    .line 80
    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 102
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lhdp/adapter/ChannelListAdapter$ViewHolder;
    check-cast v1, Lhdp/adapter/ChannelListAdapter$ViewHolder;

    .restart local v1    # "holder":Lhdp/adapter/ChannelListAdapter$ViewHolder;
    goto :goto_1

    .line 117
    :cond_5
    iget-object v2, v0, Lhdp/javabean/LiveChannelInfo;->quality:Ljava/lang/String;

    const-string v5, "hd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, v1, Lhdp/adapter/ChannelListAdapter$ViewHolder;->imgSharp:Landroid/widget/ImageView;

    .line 120
    const v5, 0x7f02003b

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_6
    move v2, v4

    .line 126
    goto :goto_3

    .line 135
    :cond_7
    iget-object v2, v1, Lhdp/adapter/ChannelListAdapter$ViewHolder;->imgHui:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
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
    .line 37
    .local p1, "channelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhdp/javabean/LiveChannelInfo;>;"
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhdp/adapter/ChannelListAdapter;->channelList:Ljava/util/ArrayList;

    .line 47
    :goto_0
    return-void

    .line 43
    :cond_0
    iput-object p1, p0, Lhdp/adapter/ChannelListAdapter;->channelList:Ljava/util/ArrayList;

    goto :goto_0
.end method
