.class public final enum Lorg/eclipse/jetty/server/DispatcherType;
.super Ljava/lang/Enum;
.source "DispatcherType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/eclipse/jetty/server/DispatcherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/jetty/server/DispatcherType;

.field public static final enum ASYNC:Lorg/eclipse/jetty/server/DispatcherType;

.field public static final enum ERROR:Lorg/eclipse/jetty/server/DispatcherType;

.field public static final enum FORWARD:Lorg/eclipse/jetty/server/DispatcherType;

.field public static final enum INCLUDE:Lorg/eclipse/jetty/server/DispatcherType;

.field public static final enum REQUEST:Lorg/eclipse/jetty/server/DispatcherType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lorg/eclipse/jetty/server/DispatcherType;

    const-string v1, "FORWARD"

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/server/DispatcherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/server/DispatcherType;->FORWARD:Lorg/eclipse/jetty/server/DispatcherType;

    .line 7
    new-instance v0, Lorg/eclipse/jetty/server/DispatcherType;

    const-string v1, "INCLUDE"

    invoke-direct {v0, v1, v3}, Lorg/eclipse/jetty/server/DispatcherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/server/DispatcherType;->INCLUDE:Lorg/eclipse/jetty/server/DispatcherType;

    .line 8
    new-instance v0, Lorg/eclipse/jetty/server/DispatcherType;

    const-string v1, "REQUEST"

    invoke-direct {v0, v1, v4}, Lorg/eclipse/jetty/server/DispatcherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/server/DispatcherType;->REQUEST:Lorg/eclipse/jetty/server/DispatcherType;

    .line 9
    new-instance v0, Lorg/eclipse/jetty/server/DispatcherType;

    const-string v1, "ASYNC"

    invoke-direct {v0, v1, v5}, Lorg/eclipse/jetty/server/DispatcherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/server/DispatcherType;->ASYNC:Lorg/eclipse/jetty/server/DispatcherType;

    .line 10
    new-instance v0, Lorg/eclipse/jetty/server/DispatcherType;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lorg/eclipse/jetty/server/DispatcherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/server/DispatcherType;->ERROR:Lorg/eclipse/jetty/server/DispatcherType;

    .line 4
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/eclipse/jetty/server/DispatcherType;

    sget-object v1, Lorg/eclipse/jetty/server/DispatcherType;->FORWARD:Lorg/eclipse/jetty/server/DispatcherType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/server/DispatcherType;->INCLUDE:Lorg/eclipse/jetty/server/DispatcherType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/jetty/server/DispatcherType;->REQUEST:Lorg/eclipse/jetty/server/DispatcherType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/jetty/server/DispatcherType;->ASYNC:Lorg/eclipse/jetty/server/DispatcherType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/jetty/server/DispatcherType;->ERROR:Lorg/eclipse/jetty/server/DispatcherType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/eclipse/jetty/server/DispatcherType;->$VALUES:[Lorg/eclipse/jetty/server/DispatcherType;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jetty/server/DispatcherType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lorg/eclipse/jetty/server/DispatcherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/DispatcherType;

    return-object v0
.end method

.method public static values()[Lorg/eclipse/jetty/server/DispatcherType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lorg/eclipse/jetty/server/DispatcherType;->$VALUES:[Lorg/eclipse/jetty/server/DispatcherType;

    invoke-virtual {v0}, [Lorg/eclipse/jetty/server/DispatcherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/server/DispatcherType;

    return-object v0
.end method
