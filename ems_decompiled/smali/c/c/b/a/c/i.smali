.class public Lc/c/b/a/c/i;
.super Lc/c/b/a/c/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/b/a/c/i$a;
    }
.end annotation


# instance fields
.field public C:I

.field public D:I

.field public E:Lc/c/b/a/c/i$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/c/b/a/c/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lc/c/b/a/c/i;->C:I

    iput v0, p0, Lc/c/b/a/c/i;->D:I

    sget-object v0, Lc/c/b/a/c/i$a;->c:Lc/c/b/a/c/i$a;

    iput-object v0, p0, Lc/c/b/a/c/i;->E:Lc/c/b/a/c/i$a;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lc/c/b/a/k/i;->d(F)F

    move-result v0

    iput v0, p0, Lc/c/b/a/c/b;->c:F

    return-void
.end method
