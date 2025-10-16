.class public final Lc/d/a/b/p/n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/p/n$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/p/n$a;

    invoke-direct {v0}, Lc/d/a/b/p/n$a;-><init>()V

    sput-object v0, Lc/d/a/b/p/n;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lc/d/a/b/p/i0;

    invoke-direct {v0}, Lc/d/a/b/p/i0;-><init>()V

    sput-object v0, Lc/d/a/b/p/n;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
