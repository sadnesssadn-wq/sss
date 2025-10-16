.class public final Lc/d/a/b/i/n/l4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/i/n/l4$a;,
        Lc/d/a/b/i/n/l4$c;,
        Lc/d/a/b/i/n/l4$b;,
        Lc/d/a/b/i/n/l4$d;
    }
.end annotation


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final c:Z

.field public static final d:Z

.field public static final e:Lc/d/a/b/i/n/l4$d;

.field public static final f:Z

.field public static final g:Z

.field public static final h:J

.field public static final i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    const-class v1, [D

    const-class v2, [F

    const-class v3, [J

    const-class v4, [I

    const-class v5, [Z

    const-class v6, Lc/d/a/b/i/n/l4;

    const-class v7, Ljava/lang/Object;

    invoke-static {}, Lc/d/a/b/i/n/l4;->k()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lc/d/a/b/i/n/l4;->a:Lsun/misc/Unsafe;

    .line 1
    sget-object v8, Lc/d/a/b/i/n/n0;->a:Ljava/lang/Class;

    .line 2
    sput-object v8, Lc/d/a/b/i/n/l4;->b:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v8}, Lc/d/a/b/i/n/l4;->p(Ljava/lang/Class;)Z

    move-result v9

    sput-boolean v9, Lc/d/a/b/i/n/l4;->c:Z

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10}, Lc/d/a/b/i/n/l4;->p(Ljava/lang/Class;)Z

    move-result v11

    sput-boolean v11, Lc/d/a/b/i/n/l4;->d:Z

    const/4 v12, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lc/d/a/b/i/n/n0;->a()Z

    move-result v13

    if-eqz v13, :cond_2

    if-eqz v9, :cond_1

    new-instance v12, Lc/d/a/b/i/n/l4$c;

    invoke-direct {v12, v0}, Lc/d/a/b/i/n/l4$c;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v11, :cond_3

    new-instance v12, Lc/d/a/b/i/n/l4$a;

    invoke-direct {v12, v0}, Lc/d/a/b/i/n/l4$a;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_2
    new-instance v12, Lc/d/a/b/i/n/l4$b;

    invoke-direct {v12, v0}, Lc/d/a/b/i/n/l4$b;-><init>(Lsun/misc/Unsafe;)V

    :cond_3
    :goto_0
    sput-object v12, Lc/d/a/b/i/n/l4;->e:Lc/d/a/b/i/n/l4$d;

    const-string v9, "copyMemory"

    const-string v12, "putLong"

    const-string v13, "putInt"

    const-string v14, "getInt"

    const-string v15, "putByte"

    const-string v11, "getByte"

    move-object/from16 v16, v1

    const-string v1, "com.google.protobuf.UnsafeUtil"

    move-object/from16 v17, v2

    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    move-object/from16 v18, v3

    const-string v3, "objectFieldOffset"

    move-object/from16 v19, v4

    const-string v4, "getLong"

    move-object/from16 v20, v5

    const/4 v5, 0x1

    const/16 v21, 0x0

    if-nez v0, :cond_4

    move-object v9, v1

    move-object/from16 v24, v11

    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 3
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v22, v1

    :try_start_1
    new-array v1, v5, [Ljava/lang/Class;

    const-class v23, Ljava/lang/reflect/Field;

    aput-object v23, v1, v21

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Class;

    aput-object v7, v5, v21

    const/4 v1, 0x1

    aput-object v8, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lc/d/a/b/i/n/l4;->s()Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_5

    move-object/from16 v24, v11

    move-object/from16 v9, v22

    goto :goto_1

    :cond_5
    invoke-static {}, Lc/d/a/b/i/n/n0;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v24, v11

    :goto_2
    move-object/from16 v9, v22

    const/4 v0, 0x1

    goto/16 :goto_5

    :cond_6
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Class;

    aput-object v8, v5, v21

    invoke-virtual {v0, v11, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Class;

    aput-object v8, v5, v21

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v24, v11

    const/4 v11, 0x1

    :try_start_2
    aput-object v1, v5, v11

    invoke-virtual {v0, v15, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v11, [Ljava/lang/Class;

    aput-object v8, v1, v21

    invoke-virtual {v0, v14, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Class;

    aput-object v8, v5, v21

    const/4 v1, 0x1

    aput-object v10, v5, v1

    invoke-virtual {v0, v13, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v1, [Ljava/lang/Class;

    aput-object v8, v5, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Class;

    aput-object v8, v5, v21

    const/4 v1, 0x1

    aput-object v8, v5, v1

    invoke-virtual {v0, v12, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x3

    new-array v10, v5, [Ljava/lang/Class;

    aput-object v8, v10, v21

    aput-object v8, v10, v1

    const/4 v1, 0x2

    aput-object v8, v10, v1

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    aput-object v7, v1, v21

    const/4 v5, 0x1

    aput-object v8, v1, v5

    const/4 v5, 0x2

    aput-object v7, v1, v5

    const/4 v5, 0x3

    aput-object v8, v1, v5

    const/4 v5, 0x4

    aput-object v8, v1, v5

    invoke-virtual {v0, v9, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v22, v1

    :goto_3
    move-object/from16 v24, v11

    :goto_4
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x47

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "supportsUnsafeByteBufferOperations"

    move-object/from16 v9, v22

    invoke-virtual {v1, v5, v9, v8, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4
    :goto_5
    sput-boolean v0, Lc/d/a/b/i/n/l4;->f:Z

    .line 5
    sget-object v0, Lc/d/a/b/i/n/l4;->a:Lsun/misc/Unsafe;

    if-nez v0, :cond_7

    const/4 v1, 0x0

    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_8

    :cond_7
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Class;

    const-class v8, Ljava/lang/reflect/Field;

    aput-object v8, v5, v21

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "arrayBaseOffset"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Class;

    aput-object v8, v5, v21

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "arrayIndexScale"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Class;

    aput-object v1, v5, v21

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Class;

    aput-object v7, v3, v21

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v5, 0x1

    :try_start_4
    aput-object v1, v3, v5

    invoke-virtual {v0, v14, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v8, v3, [Ljava/lang/Class;

    aput-object v7, v8, v21

    aput-object v1, v8, v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v3, v8, v5

    invoke-virtual {v0, v13, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v3, v5, [Ljava/lang/Class;

    aput-object v7, v3, v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v5, 0x1

    :try_start_6
    aput-object v1, v3, v5

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v7, v4, v21

    aput-object v1, v4, v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v3, 0x2

    :try_start_7
    aput-object v1, v4, v3

    invoke-virtual {v0, v12, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "getObject"

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v7, v5, v21

    const/4 v3, 0x1

    aput-object v1, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "putObject"

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v7, v8, v21

    aput-object v1, v8, v3

    const/4 v3, 0x2

    aput-object v7, v8, v3

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lc/d/a/b/i/n/n0;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    new-array v4, v3, [Ljava/lang/Class;

    aput-object v7, v4, v21

    const/4 v3, 0x1

    aput-object v1, v4, v3

    move-object/from16 v5, v24

    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v7, v5, v21

    aput-object v1, v5, v3

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v3, v5, v4

    invoke-virtual {v0, v15, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getBoolean"

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v7, v5, v21

    const/4 v4, 0x1

    aput-object v1, v5, v4

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putBoolean"

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v7, v8, v21

    aput-object v1, v8, v4

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v8, v5

    invoke-virtual {v0, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getFloat"

    new-array v4, v5, [Ljava/lang/Class;

    aput-object v7, v4, v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const/4 v5, 0x1

    :try_start_8
    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putFloat"

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v7, v8, v21

    aput-object v1, v8, v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v8, v5

    invoke-virtual {v0, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getDouble"

    new-array v4, v5, [Ljava/lang/Class;

    aput-object v7, v4, v21
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const/4 v5, 0x1

    :try_start_a
    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putDouble"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v7, v4, v21

    aput-object v1, v4, v5

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/4 v1, 0x1

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    const/4 v5, 0x1

    :goto_7
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x47

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "supportsUnsafeArrayOperations"

    invoke-virtual {v1, v3, v9, v2, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6
    :goto_8
    sput-boolean v1, Lc/d/a/b/i/n/l4;->g:Z

    const-class v0, [B

    invoke-static {v0}, Lc/d/a/b/i/n/l4;->h(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lc/d/a/b/i/n/l4;->h:J

    invoke-static/range {v20 .. v20}, Lc/d/a/b/i/n/l4;->h(Ljava/lang/Class;)I

    invoke-static/range {v20 .. v20}, Lc/d/a/b/i/n/l4;->j(Ljava/lang/Class;)I

    invoke-static/range {v19 .. v19}, Lc/d/a/b/i/n/l4;->h(Ljava/lang/Class;)I

    invoke-static/range {v19 .. v19}, Lc/d/a/b/i/n/l4;->j(Ljava/lang/Class;)I

    invoke-static/range {v18 .. v18}, Lc/d/a/b/i/n/l4;->h(Ljava/lang/Class;)I

    invoke-static/range {v18 .. v18}, Lc/d/a/b/i/n/l4;->j(Ljava/lang/Class;)I

    invoke-static/range {v17 .. v17}, Lc/d/a/b/i/n/l4;->h(Ljava/lang/Class;)I

    invoke-static/range {v17 .. v17}, Lc/d/a/b/i/n/l4;->j(Ljava/lang/Class;)I

    invoke-static/range {v16 .. v16}, Lc/d/a/b/i/n/l4;->h(Ljava/lang/Class;)I

    invoke-static/range {v16 .. v16}, Lc/d/a/b/i/n/l4;->j(Ljava/lang/Class;)I

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lc/d/a/b/i/n/l4;->h(Ljava/lang/Class;)I

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lc/d/a/b/i/n/l4;->j(Ljava/lang/Class;)I

    invoke-static {}, Lc/d/a/b/i/n/l4;->s()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-object v1, Lc/d/a/b/i/n/l4;->e:Lc/d/a/b/i/n/l4$d;

    if-nez v1, :cond_9

    goto :goto_9

    :cond_9
    iget-object v1, v1, Lc/d/a/b/i/n/l4$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    :cond_a
    :goto_9
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_b

    goto :goto_a

    :cond_b
    const/4 v5, 0x0

    :goto_a
    sput-boolean v5, Lc/d/a/b/i/n/l4;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BJ)B
    .locals 3

    sget-object v0, Lc/d/a/b/i/n/l4;->e:Lc/d/a/b/i/n/l4$d;

    sget-wide v1, Lc/d/a/b/i/n/l4;->h:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lc/d/a/b/i/n/l4$d;->a(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/Object;J)I
    .locals 1

    sget-object v0, Lc/d/a/b/i/n/l4;->e:Lc/d/a/b/i/n/l4$d;

    invoke-virtual {v0, p0, p1, p2}, Lc/d/a/b/i/n/l4$d;->k(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lc/d/a/b/i/n/l4;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static d(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Lc/d/a/b/i/n/l4;->e:Lc/d/a/b/i/n/l4$d;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lc/d/a/b/i/n/l4$d;->c(Ljava/lang/Object;JD)V

    return-void
.end method

.method public static e(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Lc/d/a/b/i/n/l4;->e:Lc/d/a/b/i/n/l4$d;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lc/d/a/b/i/n/l4$d;->f(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static f(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lc/d/a/b/i/n/l4;->e:Lc/d/a/b/i/n/l4$d;

    iget-object v0, v0, Lc/d/a/b/i/n/l4$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static g([BJB)V
    .locals 3

    sget-object v0, Lc/d/a/b/i/n/l4;->e:Lc/d/a/b/i/n/l4$d;

    sget-wide v1, Lc/d/a/b/i/n/l4;->h:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lc/d/a/b/i/n/l4$d;->b(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static h(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lc/d/a/b/i/n/l4;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lc/d/a/b/i/n/l4;->e:Lc/d/a/b/i/n/l4$d;

    iget-object v0, v0, Lc/d/a/b/i/n/l4$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static i(Ljava/lang/Object;J)J
    .locals 1

    sget-object v0, Lc/d/a/b/i/n/l4;->e:Lc/d/a/b/i/n/l4$d;

    invoke-virtual {v0, p0, p1, p2}, Lc/d/a/b/i/n/l4$d;->l(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static j(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lc/d/a/b/i/n/l4;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lc/d/a/b/i/n/l4;->e:Lc/d/a/b/i/n/l4$d;

    iget-object v0, v0, Lc/d/a/b/i/n/l4$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static k()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Lc/d/a/b/i/n/n4;

    invoke-direct {v0}, Lc/d/a/b/i/n/n4;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static l(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lc/d/a/b/i/n/l4;->b(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    xor-int/lit8 p1, p2, -0x1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 1
    sget-object p2, Lc/d/a/b/i/n/l4;->e:Lc/d/a/b/i/n/l4$d;

    invoke-virtual {p2, p0, v0, v1, p1}, Lc/d/a/b/i/n/l4$d;->e(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static m(Ljava/lang/Object;J)Z
    .locals 1

    sget-object v0, Lc/d/a/b/i/n/l4;->e:Lc/d/a/b/i/n/l4$d;

    invoke-virtual {v0, p0, p1, p2}, Lc/d/a/b/i/n/l4$d;->h(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static n(Ljava/lang/Object;J)F
    .locals 1

    sget-object v0, Lc/d/a/b/i/n/l4;->e:Lc/d/a/b/i/n/l4$d;

    invoke-virtual {v0, p0, p1, p2}, Lc/d/a/b/i/n/l4$d;->i(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method public static o(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lc/d/a/b/i/n/l4;->b(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 1
    sget-object p2, Lc/d/a/b/i/n/l4;->e:Lc/d/a/b/i/n/l4$d;

    invoke-virtual {p2, p0, v0, v1, p1}, Lc/d/a/b/i/n/l4$d;->e(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static p(Ljava/lang/Class;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, [B

    invoke-static {}, Lc/d/a/b/i/n/n0;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    sget-object v1, Lc/d/a/b/i/n/l4;->b:Ljava/lang/Class;

    const-string v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v2

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v6, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v6, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v6, v8, v7

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v0, v8, v7

    aput-object v9, v8, v4

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v2

    aput-object v0, v6, v7

    aput-object v9, v6, v4

    aput-object v9, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    :catchall_0
    return v2
.end method

.method public static q(Ljava/lang/Object;J)D
    .locals 1

    sget-object v0, Lc/d/a/b/i/n/l4;->e:Lc/d/a/b/i/n/l4$d;

    invoke-virtual {v0, p0, p1, p2}, Lc/d/a/b/i/n/l4$d;->j(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static r(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lc/d/a/b/i/n/l4;->e:Lc/d/a/b/i/n/l4$d;

    iget-object v0, v0, Lc/d/a/b/i/n/l4$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static s()Ljava/lang/reflect/Field;
    .locals 4

    invoke-static {}, Lc/d/a/b/i/n/n0;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-class v0, Ljava/nio/Buffer;

    const-string v2, "effectiveDirectAddress"

    .line 1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    const-class v0, Ljava/nio/Buffer;

    const-string v2, "address"

    .line 3
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method public static t(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lc/d/a/b/i/n/l4;->b(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, -0x1

    xor-long/2addr p1, v0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method

.method public static u(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lc/d/a/b/i/n/l4;->b(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method
