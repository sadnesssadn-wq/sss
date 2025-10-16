.class public final Lc/d/a/b/i/e/o0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lc/d/a/b/i/e/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/e/l0<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:Lc/d/a/b/i/e/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/e/l0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc/d/a/b/i/e/m0;

    invoke-direct {v0}, Lc/d/a/b/i/e/m0;-><init>()V

    sput-object v0, Lc/d/a/b/i/e/o0;->a:Lc/d/a/b/i/e/l0;

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/l0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sput-object v0, Lc/d/a/b/i/e/o0;->b:Lc/d/a/b/i/e/l0;

    return-void
.end method
