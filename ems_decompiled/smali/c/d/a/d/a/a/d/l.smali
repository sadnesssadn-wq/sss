.class public abstract Lc/d/a/d/a/a/d/l;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>(Lc/d/a/d/a/a/d/m;Landroid/content/IntentFilter;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    return-void
.end method
