.class public final enum Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;
.super Ljava/lang/Enum;
.source "FragmentDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/webapp/FragmentDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OtherType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

.field public static final enum After:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

.field public static final enum Before:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

.field public static final enum None:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->None:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    new-instance v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    const-string v1, "Before"

    invoke-direct {v0, v1, v3}, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->Before:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    new-instance v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    const-string v1, "After"

    invoke-direct {v0, v1, v4}, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->After:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    sget-object v1, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->None:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->Before:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->After:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->$VALUES:[Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    return-object v0
.end method

.method public static values()[Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->$VALUES:[Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    invoke-virtual {v0}, [Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    return-object v0
.end method
