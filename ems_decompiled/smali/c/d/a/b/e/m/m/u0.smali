.class public final Lc/d/a/b/e/m/m/u0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lc/d/a/b/e/m/m/g$a;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/g$a;I)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/e/m/m/u0;->d:Lc/d/a/b/e/m/m/g$a;

    iput p2, p0, Lc/d/a/b/e/m/m/u0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/e/m/m/u0;->d:Lc/d/a/b/e/m/m/g$a;

    iget v1, p0, Lc/d/a/b/e/m/m/u0;->c:I

    .line 1
    invoke-virtual {v0, v1}, Lc/d/a/b/e/m/m/g$a;->c(I)V

    return-void
.end method
