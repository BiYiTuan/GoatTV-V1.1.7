.class public Lorg/eclipse/jetty/util/TypeUtil;
.super Ljava/lang/Object;
.source "TypeUtil.java"


# static fields
.field public static CR:I

.field public static LF:I

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final class2Name:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final class2Value:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final name2Class:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 42
    const-class v2, Lorg/eclipse/jetty/util/TypeUtil;

    invoke-static {v2}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jetty/util/TypeUtil;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 43
    const/16 v2, 0xd

    sput v2, Lorg/eclipse/jetty/util/TypeUtil;->CR:I

    .line 44
    const/16 v2, 0xa

    sput v2, Lorg/eclipse/jetty/util/TypeUtil;->LF:I

    .line 47
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    .line 50
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "boolean"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "byte"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "char"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "double"

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "float"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "int"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "long"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "short"

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "void"

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Boolean.TYPE"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Byte.TYPE"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Character.TYPE"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Double.TYPE"

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Float.TYPE"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Integer.TYPE"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Long.TYPE"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Short.TYPE"

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Void.TYPE"

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Boolean"

    const-class v4, Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Byte"

    const-class v4, Ljava/lang/Byte;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Character"

    const-class v4, Ljava/lang/Character;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Double"

    const-class v4, Ljava/lang/Double;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Float"

    const-class v4, Ljava/lang/Float;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Integer"

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Long"

    const-class v4, Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Short"

    const-class v4, Ljava/lang/Short;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "Boolean"

    const-class v4, Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "Byte"

    const-class v4, Ljava/lang/Byte;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "Character"

    const-class v4, Ljava/lang/Character;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "Double"

    const-class v4, Ljava/lang/Double;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "Float"

    const-class v4, Ljava/lang/Float;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "Integer"

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "Long"

    const-class v4, Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "Short"

    const-class v4, Ljava/lang/Short;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "string"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "String"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.String"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    .line 98
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "boolean"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v4, "byte"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v4, "char"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v4, "double"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v4, "float"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "int"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v4, "long"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v4, "short"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v4, "void"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Boolean;

    const-string v4, "java.lang.Boolean"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Byte;

    const-string v4, "java.lang.Byte"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Character;

    const-string v4, "java.lang.Character"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Double;

    const-string v4, "java.lang.Double"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Float;

    const-string v4, "java.lang.Float"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Integer;

    const-string v4, "java.lang.Integer"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Long;

    const-string v4, "java.lang.Long"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Short;

    const-string v4, "java.lang.Short"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-string v3, "void"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/String;

    const-string v4, "java.lang.String"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    .line 127
    const/4 v2, 0x1

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 129
    .local v1, "s":[Ljava/lang/Class;
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Byte;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Short;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Boolean;

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Byte;

    const-class v4, Ljava/lang/Byte;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Double;

    const-class v4, Ljava/lang/Double;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Float;

    const-class v4, Ljava/lang/Float;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Integer;

    const-class v4, Ljava/lang/Integer;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Long;

    const-class v4, Ljava/lang/Long;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Short;

    const-class v4, Ljava/lang/Short;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    .line 174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static call(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "oClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 525
    .local v2, "methods":[Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    if-eqz v2, :cond_4

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 527
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 525
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    array-length v4, p3

    if-ne v3, v4, :cond_0

    .line 531
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez p2, :cond_3

    const/4 v3, 0x1

    :goto_2
    if-ne v4, v3, :cond_0

    .line 533
    if-nez p2, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 538
    :cond_2
    :try_start_0
    aget-object v3, v2, v0

    invoke-virtual {v3, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 531
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 540
    :catch_0
    move-exception v1

    .line 542
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Lorg/eclipse/jetty/util/TypeUtil;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 544
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 546
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lorg/eclipse/jetty/util/TypeUtil;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 550
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    new-instance v3, Ljava/lang/NoSuchMethodException;

    invoke-direct {v3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static convertHexDigit(B)B
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 361
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    .line 363
    :goto_0
    return v0

    .line 362
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 363
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    .line 364
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!hex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p0, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dump(Ljava/lang/Class;)V
    .locals 3
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 436
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/TypeUtil;->dump(Ljava/lang/ClassLoader;)V

    .line 438
    return-void
.end method

.method public static dump(Ljava/lang/ClassLoader;)V
    .locals 3
    .param p0, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 442
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Dump Loaders:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 443
    :goto_0
    if-eqz p0, :cond_0

    .line 445
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  loader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_0

    .line 448
    :cond_0
    return-void
.end method

.method public static fromHexString(Ljava/lang/String;)[B
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 423
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 424
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 425
    .local v0, "array":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 427
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 428
    .local v1, "b":I
    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    .end local v1    # "b":I
    :cond_1
    return-object v0
.end method

.method public static fromName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 185
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static jarFor(Ljava/lang/String;)Ljava/net/URL;
    .locals 7
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 506
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".class"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 508
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v3, p0, v5}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v2

    .line 509
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "s":Ljava/lang/String;
    const-string v3, "jar:file:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 511
    new-instance v3, Ljava/net/URL;

    const/4 v5, 0x4

    const-string v6, "!/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 513
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/util/TypeUtil;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 517
    goto :goto_0
.end method

.method public static parseBytes(Ljava/lang/String;I)[B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "base"    # I

    .prologue
    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 330
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 331
    div-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    invoke-static {p0, v1, v3, p1}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 330
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 332
    :cond_0
    return-object v0
.end method

.method public static parseInt(Ljava/lang/String;III)I
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "base"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 267
    const/4 v3, 0x0

    .line 269
    .local v3, "value":I
    if-gez p2, :cond_0

    .line 270
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int p2, v4, p1

    .line 272
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_6

    .line 274
    add-int v4, p1, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 276
    .local v0, "c":C
    add-int/lit8 v1, v0, -0x30

    .line 277
    .local v1, "digit":I
    if-ltz v1, :cond_1

    if-ge v1, p3, :cond_1

    if-lt v1, v5, :cond_3

    .line 279
    :cond_1
    add-int/lit8 v4, v0, 0xa

    add-int/lit8 v1, v4, -0x41

    .line 280
    if-lt v1, v5, :cond_2

    if-lt v1, p3, :cond_3

    .line 281
    :cond_2
    add-int/lit8 v4, v0, 0xa

    add-int/lit8 v1, v4, -0x61

    .line 283
    :cond_3
    if-ltz v1, :cond_4

    if-lt v1, p3, :cond_5

    .line 284
    :cond_4
    new-instance v4, Ljava/lang/NumberFormatException;

    add-int v5, p1, p2

    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 285
    :cond_5
    mul-int v4, v3, p3

    add-int v3, v4, v1

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_6
    return v3
.end method

.method public static parseInt([BIII)I
    .locals 6
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "base"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 303
    const/4 v3, 0x0

    .line 305
    .local v3, "value":I
    if-gez p2, :cond_0

    .line 306
    array-length v4, p0

    sub-int p2, v4, p1

    .line 308
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_6

    .line 310
    add-int v4, p1, v2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v0, v4

    .line 312
    .local v0, "c":C
    add-int/lit8 v1, v0, -0x30

    .line 313
    .local v1, "digit":I
    if-ltz v1, :cond_1

    if-ge v1, p3, :cond_1

    if-lt v1, v5, :cond_3

    .line 315
    :cond_1
    add-int/lit8 v4, v0, 0xa

    add-int/lit8 v1, v4, -0x41

    .line 316
    if-lt v1, v5, :cond_2

    if-lt v1, p3, :cond_3

    .line 317
    :cond_2
    add-int/lit8 v4, v0, 0xa

    add-int/lit8 v1, v4, -0x61

    .line 319
    :cond_3
    if-ltz v1, :cond_4

    if-lt v1, p3, :cond_5

    .line 320
    :cond_4
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 321
    :cond_5
    mul-int v4, v3, p3

    add-int v3, v4, v1

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_6
    return v3
.end method

.method public static readLine(Ljava/io/InputStream;)[B
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 454
    const/16 v6, 0x100

    new-array v0, v6, [B

    .line 456
    .local v0, "buf":[B
    const/4 v2, 0x0

    .line 457
    .local v2, "i":I
    const/4 v4, 0x0

    .line 458
    .local v4, "loops":I
    const/4 v1, 0x0

    .line 462
    .local v1, "ch":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 463
    if-gez v1, :cond_2

    .line 483
    :cond_1
    const/4 v6, -0x1

    if-ne v1, v6, :cond_5

    if-nez v2, :cond_5

    .line 484
    const/4 v6, 0x0

    .line 499
    :goto_1
    return-object v6

    .line 465
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 468
    if-ne v4, v8, :cond_3

    sget v6, Lorg/eclipse/jetty/util/TypeUtil;->LF:I

    if-eq v1, v6, :cond_0

    .line 471
    :cond_3
    sget v6, Lorg/eclipse/jetty/util/TypeUtil;->CR:I

    if-eq v1, v6, :cond_1

    sget v6, Lorg/eclipse/jetty/util/TypeUtil;->LF:I

    if-eq v1, v6, :cond_1

    .line 474
    array-length v6, v0

    if-lt v2, v6, :cond_4

    .line 476
    move-object v5, v0

    .line 477
    .local v5, "old_buf":[B
    array-length v6, v5

    add-int/lit16 v6, v6, 0x100

    new-array v0, v6, [B

    .line 478
    array-length v6, v5

    invoke-static {v5, v7, v0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    .end local v5    # "old_buf":[B
    :cond_4
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    int-to-byte v6, v1

    aput-byte v6, v0, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 487
    :cond_5
    sget v6, Lorg/eclipse/jetty/util/TypeUtil;->CR:I

    if-ne v1, v6, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v6

    if-lt v6, v8, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 489
    invoke-virtual {p0, v8}, Ljava/io/InputStream;->mark(I)V

    .line 490
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 491
    sget v6, Lorg/eclipse/jetty/util/TypeUtil;->LF:I

    if-eq v1, v6, :cond_6

    .line 492
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 495
    :cond_6
    move-object v5, v0

    .line 496
    .restart local v5    # "old_buf":[B
    new-array v0, v2, [B

    .line 497
    invoke-static {v5, v7, v0, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v0

    .line 499
    goto :goto_1
.end method

.method public static toHex(BLjava/lang/Appendable;)V
    .locals 5
    .param p0, "b"    # B
    .param p1, "buf"    # Ljava/lang/Appendable;

    .prologue
    const/16 v4, 0x39

    .line 372
    and-int/lit16 v0, p0, 0xff

    .line 373
    .local v0, "bi":I
    :try_start_0
    div-int/lit8 v3, v0, 0x10

    rem-int/lit8 v3, v3, 0x10

    add-int/lit8 v1, v3, 0x30

    .line 374
    .local v1, "c":I
    if-le v1, v4, :cond_0

    .line 375
    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v1, v3, 0x41

    .line 376
    :cond_0
    int-to-char v3, v1

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 377
    rem-int/lit8 v3, v0, 0x10

    add-int/lit8 v1, v3, 0x30

    .line 378
    if-le v1, v4, :cond_1

    .line 379
    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v1, v3, 0x41

    .line 380
    :cond_1
    int-to-char v3, v1

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    return-void

    .line 382
    .end local v1    # "c":I
    :catch_0
    move-exception v2

    .line 384
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toHexString(B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    new-array v0, v2, [B

    aput-byte p0, v0, v1

    invoke-static {v0, v1, v2}, Lorg/eclipse/jetty/util/TypeUtil;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 397
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/eclipse/jetty/util/TypeUtil;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v5, 0x39

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v1, "buf":Ljava/lang/StringBuilder;
    move v3, p1

    .local v3, "i":I
    :goto_0
    add-int v4, p1, p2

    if-ge v3, v4, :cond_2

    .line 406
    aget-byte v4, p0, v3

    and-int/lit16 v0, v4, 0xff

    .line 407
    .local v0, "bi":I
    div-int/lit8 v4, v0, 0x10

    rem-int/lit8 v4, v4, 0x10

    add-int/lit8 v2, v4, 0x30

    .line 408
    .local v2, "c":I
    if-le v2, v5, :cond_0

    .line 409
    add-int/lit8 v4, v2, -0x30

    add-int/lit8 v4, v4, -0xa

    add-int/lit8 v2, v4, 0x41

    .line 410
    :cond_0
    int-to-char v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    rem-int/lit8 v4, v0, 0x10

    add-int/lit8 v2, v4, 0x30

    .line 412
    if-le v2, v5, :cond_1

    .line 413
    add-int/lit8 v4, v2, -0x30

    add-int/lit8 v4, v4, -0xa

    add-int/lit8 v2, v4, 0x61

    .line 414
    :cond_1
    int-to-char v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 416
    .end local v0    # "bi":I
    .end local v2    # "c":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static toName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/Class;

    .prologue
    .line 195
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static toString([BI)Ljava/lang/String;
    .locals 9
    .param p0, "bytes"    # [B
    .param p1, "base"    # I

    .prologue
    const/16 v8, 0x39

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v3, "buf":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-byte v1, v0, v5

    .line 341
    .local v1, "b":B
    and-int/lit16 v2, v1, 0xff

    .line 342
    .local v2, "bi":I
    div-int v7, v2, p1

    rem-int/2addr v7, p1

    add-int/lit8 v4, v7, 0x30

    .line 343
    .local v4, "c":I
    if-le v4, v8, :cond_0

    .line 344
    add-int/lit8 v7, v4, -0x30

    add-int/lit8 v7, v7, -0xa

    add-int/lit8 v4, v7, 0x61

    .line 345
    :cond_0
    int-to-char v7, v4

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    rem-int v7, v2, p1

    add-int/lit8 v4, v7, 0x30

    .line 347
    if-le v4, v8, :cond_1

    .line 348
    add-int/lit8 v7, v4, -0x30

    add-int/lit8 v7, v7, -0xa

    add-int/lit8 v4, v7, 0x61

    .line 349
    :cond_1
    int-to-char v7, v4

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "b":B
    .end local v2    # "bi":I
    .end local v4    # "c":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "type"    # Ljava/lang/Class;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 208
    :try_start_0
    const-class v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 211
    .restart local p1    # "value":Ljava/lang/String;
    :cond_0
    sget-object v3, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 212
    .local v2, "m":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    .line 213
    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 215
    :cond_1
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Ljava/lang/Character;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 217
    :cond_2
    new-instance v3, Ljava/lang/Character;

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/Character;-><init>(C)V

    move-object p1, v3

    goto :goto_0

    .line 219
    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 220
    .local v0, "c":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 234
    .end local v0    # "c":Ljava/lang/reflect/Constructor;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Error;

    if-eqz v3, :cond_4

    .line 237
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/Error;

    check-cast v3, Ljava/lang/Error;

    throw v3

    .line 230
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    :cond_4
    :goto_1
    move-object p1, v4

    .line 240
    goto :goto_0

    .line 226
    :catch_2
    move-exception v3

    goto :goto_1

    .line 222
    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {p0}, Lorg/eclipse/jetty/util/TypeUtil;->fromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/TypeUtil;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
