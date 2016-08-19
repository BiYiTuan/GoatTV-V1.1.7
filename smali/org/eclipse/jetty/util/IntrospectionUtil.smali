.class public Lorg/eclipse/jetty/util/IntrospectionUtil;
.super Ljava/lang/Object;
.source "IntrospectionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkParams([Ljava/lang/Class;[Ljava/lang/Class;Z)Z
    .locals 5
    .param p2, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "formalParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "actualParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    move v1, v2

    .line 145
    goto :goto_0

    .line 146
    :cond_2
    if-eqz p0, :cond_3

    if-nez p1, :cond_3

    move v1, v2

    .line 147
    goto :goto_0

    .line 149
    :cond_3
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 150
    goto :goto_0

    .line 152
    :cond_4
    array-length v3, p0

    if-eqz v3, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "j":I
    if-eqz p2, :cond_5

    .line 158
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_6

    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_5
    :goto_2
    array-length v3, p0

    if-ge v0, v3, :cond_6

    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 169
    :cond_6
    array-length v3, p0

    if-eq v0, v3, :cond_0

    move v1, v2

    .line 171
    goto :goto_0
.end method

.method public static containsSameFieldName(Ljava/lang/reflect/Field;Ljava/lang/Class;Z)Z
    .locals 5
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p2, "checkPackage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_1

    .line 237
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    const/4 v2, 0x0

    .line 248
    :cond_0
    return v2

    .line 241
    :cond_1
    const/4 v2, 0x0

    .line 242
    .local v2, "sameName":Z
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 243
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    if-nez v2, :cond_0

    .line 245
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    const/4 v2, 0x1

    .line 243
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static containsSameMethodSignature(Ljava/lang/reflect/Method;Ljava/lang/Class;Z)Z
    .locals 5
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p2, "checkPackage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_1

    .line 218
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    const/4 v2, 0x0

    .line 229
    :cond_0
    return v2

    .line 222
    :cond_1
    const/4 v2, 0x0

    .line 223
    .local v2, "samesig":Z
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 224
    .local v1, "methods":[Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    if-nez v2, :cond_0

    .line 226
    aget-object v3, v1, v0

    invoke-static {p0, v3}, Lorg/eclipse/jetty/util/IntrospectionUtil;->isSameSignature(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    const/4 v2, 0x1

    .line 224
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static findField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)Ljava/lang/reflect/Field;
    .locals 5
    .param p1, "targetName"    # Ljava/lang/String;
    .param p3, "checkInheritance"    # Z
    .param p4, "strictType"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;ZZ)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 85
    new-instance v2, Ljava/lang/NoSuchFieldException;

    const-string v3, "No class"

    invoke-direct {v2, v3}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_0
    if-nez p1, :cond_1

    .line 87
    new-instance v2, Ljava/lang/NoSuchFieldException;

    const-string v3, "No field name"

    invoke-direct {v2, v3}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 92
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz p4, :cond_3

    .line 94
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 111
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_2
    :goto_0
    return-object v1

    .line 99
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    :cond_4
    if-eqz p3, :cond_5

    .line 104
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3, p1, p2, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->findInheritedField(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_0

    .line 107
    :cond_5
    new-instance v2, Ljava/lang/NoSuchFieldException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No field with name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3, p1, p2, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->findInheritedField(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_0
.end method

.method protected static findInheritedField(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;
    .locals 4
    .param p0, "pack"    # Ljava/lang/Package;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p4, "strictType"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Package;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 282
    new-instance v2, Ljava/lang/NoSuchFieldException;

    const-string v3, "No class"

    invoke-direct {v2, v3}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 283
    :cond_0
    if-nez p2, :cond_1

    .line 284
    new-instance v2, Ljava/lang/NoSuchFieldException;

    const-string v3, "No field name"

    invoke-direct {v2, v3}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 288
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-static {p0, v1}, Lorg/eclipse/jetty/util/IntrospectionUtil;->isInheritable(Ljava/lang/Package;Ljava/lang/reflect/Member;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p3, v2, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->isTypeCompatible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    .line 291
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3, p2, p3, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->findInheritedField(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 293
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3, p2, p3, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->findInheritedField(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_0
.end method

.method protected static findInheritedMethod(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "pack"    # Ljava/lang/Package;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p4, "strictArgs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Package;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 257
    new-instance v3, Ljava/lang/NoSuchMethodException;

    const-string v4, "No class"

    invoke-direct {v3, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    :cond_0
    if-nez p2, :cond_1

    .line 259
    new-instance v3, Ljava/lang/NoSuchMethodException;

    const-string v4, "No method name"

    invoke-direct {v3, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 261
    :cond_1
    const/4 v1, 0x0

    .line 262
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 263
    .local v2, "methods":[Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    if-nez v1, :cond_3

    .line 265
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v2, v0

    invoke-static {p0, v3}, Lorg/eclipse/jetty/util/IntrospectionUtil;->isInheritable(Ljava/lang/Package;Ljava/lang/reflect/Member;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p3, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->checkParams([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    aget-object v1, v2, v0

    .line 263
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_3
    if-eqz v1, :cond_4

    .line 275
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return-object v1

    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4, p2, p3, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->findInheritedMethod(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_1
.end method

.method public static findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;ZZ)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "checkInheritance"    # Z
    .param p4, "strictArgs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;ZZ)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 52
    new-instance v3, Ljava/lang/NoSuchMethodException;

    const-string v4, "No class"

    invoke-direct {v3, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    :cond_1
    new-instance v3, Ljava/lang/NoSuchMethodException;

    const-string v4, "No method name"

    invoke-direct {v3, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    :cond_2
    const/4 v1, 0x0

    .line 57
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 58
    .local v2, "methods":[Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_5

    if-nez v1, :cond_5

    .line 60
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    if-nez p2, :cond_4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    :goto_1
    invoke-static {v4, v3, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->checkParams([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 62
    aget-object v1, v2, v0

    .line 58
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move-object v3, p2

    .line 60
    goto :goto_1

    .line 66
    :cond_5
    if-eqz v1, :cond_6

    .line 71
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_2
    return-object v1

    .line 70
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :cond_6
    if-eqz p3, :cond_7

    .line 71
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4, p1, p2, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->findInheritedMethod(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_2

    .line 73
    :cond_7
    new-instance v3, Ljava/lang/NoSuchMethodException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static isInheritable(Ljava/lang/Package;Ljava/lang/reflect/Member;)Z
    .locals 4
    .param p0, "pack"    # Ljava/lang/Package;
    .param p1, "member"    # Ljava/lang/reflect/Member;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    if-nez p0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    .line 123
    :cond_1
    if-eqz p1, :cond_0

    .line 126
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    .line 127
    .local v0, "modifiers":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 128
    goto :goto_0

    .line 129
    :cond_2
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 130
    goto :goto_0

    .line 131
    :cond_3
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 132
    goto :goto_0
.end method

.method public static isJavaBeanCompliantSetter(Ljava/lang/reflect/Method;)Z
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 33
    if-nez p0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    .line 39
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 45
    goto :goto_0
.end method

.method public static isSameSignature(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 5
    .param p0, "methodA"    # Ljava/lang/reflect/Method;
    .param p1, "methodB"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v2, 0x0

    .line 180
    if-nez p0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v2

    .line 182
    :cond_1
    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 186
    .local v0, "parameterTypesA":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 188
    .local v1, "parameterTypesB":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isTypeCompatible(Ljava/lang/Class;Ljava/lang/Class;Z)Z
    .locals 1
    .param p2, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "formalType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "actualType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 198
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_0

    .line 202
    :cond_2
    if-nez p0, :cond_3

    if-nez p1, :cond_3

    .line 203
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    :cond_3
    if-eqz p2, :cond_4

    .line 206
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 208
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method
