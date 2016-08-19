.class Lhdp/adapter/ChannelListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ChannelListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/adapter/ChannelListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field imgFav:Landroid/widget/ImageView;

.field imgHui:Landroid/widget/ImageView;

.field imgSharp:Landroid/widget/ImageView;

.field final synthetic this$0:Lhdp/adapter/ChannelListAdapter;

.field txtName:Landroid/widget/TextView;

.field txtNum:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lhdp/adapter/ChannelListAdapter;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lhdp/adapter/ChannelListAdapter$ViewHolder;->this$0:Lhdp/adapter/ChannelListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
