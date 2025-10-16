.class public abstract Lc/d/a/b/i/e/o1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lc/d/a/b/i/e/o1;

.field public static final b:Lc/d/a/b/i/e/o1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/a/b/i/e/q1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/d/a/b/i/e/q1;-><init>(Lc/d/a/b/i/e/p1;)V

    sput-object v0, Lc/d/a/b/i/e/o1;->a:Lc/d/a/b/i/e/o1;

    new-instance v0, Lc/d/a/b/i/e/r1;

    invoke-direct {v0, v1}, Lc/d/a/b/i/e/r1;-><init>(Lc/d/a/b/i/e/p1;)V

    sput-object v0, Lc/d/a/b/i/e/o1;->b:Lc/d/a/b/i/e/o1;

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/i/e/p1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)V
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
