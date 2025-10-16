.class public Lc/d/a/b/q/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/q/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:J

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc/d/a/b/q/b$a;->f:I

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/q/b$a;)V
    .locals 2
    .param p1    # Lc/d/a/b/q/b$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc/d/a/b/q/b$a;->f:I

    .line 1
    iget v0, p1, Lc/d/a/b/q/b$a;->a:I

    .line 2
    iput v0, p0, Lc/d/a/b/q/b$a;->a:I

    .line 3
    iget v0, p1, Lc/d/a/b/q/b$a;->b:I

    .line 4
    iput v0, p0, Lc/d/a/b/q/b$a;->b:I

    .line 5
    iget v0, p1, Lc/d/a/b/q/b$a;->c:I

    .line 6
    iput v0, p0, Lc/d/a/b/q/b$a;->c:I

    .line 7
    iget-wide v0, p1, Lc/d/a/b/q/b$a;->d:J

    .line 8
    iput-wide v0, p0, Lc/d/a/b/q/b$a;->d:J

    .line 9
    iget v0, p1, Lc/d/a/b/q/b$a;->e:I

    .line 10
    iput v0, p0, Lc/d/a/b/q/b$a;->e:I

    .line 11
    iget p1, p1, Lc/d/a/b/q/b$a;->f:I

    .line 12
    iput p1, p0, Lc/d/a/b/q/b$a;->f:I

    return-void
.end method
