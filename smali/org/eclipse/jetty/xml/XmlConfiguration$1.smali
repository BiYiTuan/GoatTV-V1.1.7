.class final Lorg/eclipse/jetty/xml/XmlConfiguration$1;
.super Ljava/lang/Object;
.source "XmlConfiguration.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/xml/XmlConfiguration;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$args:[Ljava/lang/String;

.field final synthetic val$exception:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 1139
    iput-object p1, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$args:[Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 21

    .prologue
    .line 1145
    const/4 v14, 0x0

    .line 1150
    .local v14, "properties":Ljava/util/Properties;
    :try_start_0
    const-class v17, Lorg/eclipse/jetty/xml/XmlConfiguration;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    const-string v18, "org.eclipse.jetty.start.Config"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1151
    .local v3, "config":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v17, "getProperties"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/util/Properties;

    move-object v14, v0

    .line 1152
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v17

    const-string v18, "org.eclipse.jetty.start.Config properties = {}"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v14, v19, v20

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v14

    .line 1168
    .end local v3    # "config":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "properties":Ljava/util/Properties;
    .local v15, "properties":Ljava/util/Properties;
    :goto_0
    if-nez v15, :cond_1

    .line 1170
    :try_start_1
    new-instance v14, Ljava/util/Properties;

    invoke-direct {v14}, Ljava/util/Properties;-><init>()V
    :try_end_1
    .catch Ljava/security/AccessControlException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 1172
    .end local v15    # "properties":Ljava/util/Properties;
    .restart local v14    # "properties":Ljava/util/Properties;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v6

    .line 1173
    .local v6, "ensysprop":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1175
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1176
    .local v12, "name":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v12, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/security/AccessControlException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 1219
    .end local v6    # "ensysprop":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v12    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1221
    .local v2, "ace":Ljava/security/AccessControlException;
    :goto_2
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/security/AccessControlException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1229
    .end local v2    # "ace":Ljava/security/AccessControlException;
    :cond_0
    :goto_3
    const/16 v17, 0x0

    return-object v17

    .line 1154
    :catch_1
    move-exception v5

    .line 1156
    .local v5, "e":Ljava/lang/NoClassDefFoundError;
    :try_start_3
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move-object v15, v14

    .line 1165
    .end local v14    # "properties":Ljava/util/Properties;
    .restart local v15    # "properties":Ljava/util/Properties;
    goto :goto_0

    .line 1158
    .end local v5    # "e":Ljava/lang/NoClassDefFoundError;
    .end local v15    # "properties":Ljava/util/Properties;
    .restart local v14    # "properties":Ljava/util/Properties;
    :catch_2
    move-exception v5

    .line 1160
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move-object v15, v14

    .line 1165
    .end local v14    # "properties":Ljava/util/Properties;
    .restart local v15    # "properties":Ljava/util/Properties;
    goto :goto_0

    .line 1162
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .end local v15    # "properties":Ljava/util/Properties;
    .restart local v14    # "properties":Ljava/util/Properties;
    :catch_3
    move-exception v5

    .line 1164
    .local v5, "e":Ljava/lang/Exception;
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    move-object v15, v14

    .end local v14    # "properties":Ljava/util/Properties;
    .restart local v15    # "properties":Ljava/util/Properties;
    goto :goto_0

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v14, v15

    .line 1181
    .end local v15    # "properties":Ljava/util/Properties;
    .restart local v14    # "properties":Ljava/util/Properties;
    :cond_2
    const/4 v10, 0x0

    .line 1182
    .local v10, "last":Lorg/eclipse/jetty/xml/XmlConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$args:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/Object;

    .line 1183
    .local v13, "obj":[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$args:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_7

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$args:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, ".properties"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$args:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    invoke-static/range {v17 .. v17}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1183
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1191
    :cond_3
    new-instance v4, Lorg/eclipse/jetty/xml/XmlConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$args:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    invoke-static/range {v17 .. v17}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lorg/eclipse/jetty/xml/XmlConfiguration;-><init>(Ljava/net/URL;)V

    .line 1192
    .local v4, "configuration":Lorg/eclipse/jetty/xml/XmlConfiguration;
    if-eqz v10, :cond_4

    .line 1193
    invoke-virtual {v4}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v17

    invoke-virtual {v10}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1194
    :cond_4
    invoke-virtual {v14}, Ljava/util/Properties;->size()I

    move-result v17

    if-lez v17, :cond_6

    .line 1196
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 1197
    .local v16, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1199
    .local v9, "key":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v14, v9}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/security/AccessControlException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_6

    .line 1224
    .end local v4    # "configuration":Lorg/eclipse/jetty/xml/XmlConfiguration;
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "key":Ljava/lang/Object;
    .end local v10    # "last":Lorg/eclipse/jetty/xml/XmlConfiguration;
    .end local v13    # "obj":[Ljava/lang/Object;
    .end local v16    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_4
    move-exception v5

    .line 1226
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_7
    # getter for: Lorg/eclipse/jetty/xml/XmlConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v17

    const-string v18, "EXCEPTION "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1201
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "configuration":Lorg/eclipse/jetty/xml/XmlConfiguration;
    .restart local v7    # "i":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "last":Lorg/eclipse/jetty/xml/XmlConfiguration;
    .restart local v13    # "obj":[Ljava/lang/Object;
    .restart local v16    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :try_start_4
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/xml/XmlConfiguration;->setProperties(Ljava/util/Map;)V

    .line 1203
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v16    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v4}, Lorg/eclipse/jetty/xml/XmlConfiguration;->configure()Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v13, v7

    .line 1204
    move-object v10, v4

    goto :goto_5

    .line 1209
    .end local v4    # "configuration":Lorg/eclipse/jetty/xml/XmlConfiguration;
    :cond_7
    const/4 v7, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$args:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_0

    .line 1211
    aget-object v17, v13, v7

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1213
    aget-object v11, v13, v7

    check-cast v11, Lorg/eclipse/jetty/util/component/LifeCycle;

    .line 1214
    .local v11, "lc":Lorg/eclipse/jetty/util/component/LifeCycle;
    invoke-interface {v11}, Lorg/eclipse/jetty/util/component/LifeCycle;->isRunning()Z

    move-result v17

    if-nez v17, :cond_8

    .line 1215
    invoke-interface {v11}, Lorg/eclipse/jetty/util/component/LifeCycle;->start()V
    :try_end_4
    .catch Ljava/security/AccessControlException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1209
    .end local v11    # "lc":Lorg/eclipse/jetty/util/component/LifeCycle;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 1224
    .end local v7    # "i":I
    .end local v10    # "last":Lorg/eclipse/jetty/xml/XmlConfiguration;
    .end local v13    # "obj":[Ljava/lang/Object;
    .end local v14    # "properties":Ljava/util/Properties;
    .restart local v15    # "properties":Ljava/util/Properties;
    :catch_5
    move-exception v5

    move-object v14, v15

    .end local v15    # "properties":Ljava/util/Properties;
    .restart local v14    # "properties":Ljava/util/Properties;
    goto :goto_7

    .line 1219
    .end local v14    # "properties":Ljava/util/Properties;
    .restart local v15    # "properties":Ljava/util/Properties;
    :catch_6
    move-exception v2

    move-object v14, v15

    .end local v15    # "properties":Ljava/util/Properties;
    .restart local v14    # "properties":Ljava/util/Properties;
    goto/16 :goto_2
.end method
