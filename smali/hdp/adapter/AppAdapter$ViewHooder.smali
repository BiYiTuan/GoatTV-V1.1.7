.class Lhdp/adapter/AppAdapter$ViewHooder;
.super Ljava/lang/Object;
.source "AppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdp/adapter/AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHooder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public install:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field final synthetic this$0:Lhdp/adapter/AppAdapter;


# direct methods
.method private constructor <init>(Lhdp/adapter/AppAdapter;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lhdp/adapter/AppAdapter$ViewHooder;->this$0:Lhdp/adapter/AppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhdp/adapter/AppAdapter;Lhdp/adapter/AppAdapter$ViewHooder;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lhdp/adapter/AppAdapter$ViewHooder;-><init>(Lhdp/adapter/AppAdapter;)V

    return-void
.end method
