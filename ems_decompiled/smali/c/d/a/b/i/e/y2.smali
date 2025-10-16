.class public final Lc/d/a/b/i/e/y2;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/i/e/z2;

    invoke-direct {v0}, Lc/d/a/b/i/e/z2;-><init>()V

    sput-object v0, Lc/d/a/b/i/e/y2;->a:Ljava/util/Iterator;

    new-instance v0, Lc/d/a/b/i/e/a3;

    invoke-direct {v0}, Lc/d/a/b/i/e/a3;-><init>()V

    sput-object v0, Lc/d/a/b/i/e/y2;->b:Ljava/lang/Iterable;

    return-void
.end method
