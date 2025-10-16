.class public final Lc/d/a/b/e/m/m/a0;
.super Lc/d/a/b/e/m/m/n0;
.source ""


# instance fields
.field public final synthetic b:Lc/d/a/b/e/p/b$c;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/l0;Lc/d/a/b/e/p/b$c;)V
    .locals 0

    iput-object p2, p0, Lc/d/a/b/e/m/m/a0;->b:Lc/d/a/b/e/p/b$c;

    invoke-direct {p0, p1}, Lc/d/a/b/e/m/m/n0;-><init>(Lc/d/a/b/e/m/m/l0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/m/m/a0;->b:Lc/d/a/b/e/p/b$c;

    new-instance v1, Lc/d/a/b/e/a;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lc/d/a/b/e/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Lc/d/a/b/e/p/b$c;->a(Lc/d/a/b/e/a;)V

    return-void
.end method
