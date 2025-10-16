.class public abstract Lc/d/a/b/i/n/l2;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lc/d/a/b/i/n/l2;

.field public static final b:Lc/d/a/b/i/n/l2;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/a/b/i/n/n2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/d/a/b/i/n/n2;-><init>(Lc/d/a/b/i/n/o2;)V

    sput-object v0, Lc/d/a/b/i/n/l2;->a:Lc/d/a/b/i/n/l2;

    new-instance v0, Lc/d/a/b/i/n/q2;

    invoke-direct {v0, v1}, Lc/d/a/b/i/n/q2;-><init>(Lc/d/a/b/i/n/o2;)V

    sput-object v0, Lc/d/a/b/i/n/l2;->b:Lc/d/a/b/i/n/l2;

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/i/n/o2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;J)V
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

.method public abstract b(Ljava/lang/Object;J)V
.end method
