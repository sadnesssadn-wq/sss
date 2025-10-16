.class public final Lc/d/a/b/i/j/c;
.super Lc/d/a/b/i/j/g;
.source ""


# instance fields
.field public final c:Lc/d/a/b/e/m/m/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/m/e<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/e<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/d/a/b/i/j/g;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/j/c;->c:Lc/d/a/b/e/m/m/e;

    return-void
.end method


# virtual methods
.method public final D(Lc/d/a/b/i/j/d;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/j/c;->c:Lc/d/a/b/e/m/m/e;

    .line 1
    iget-object p1, p1, Lc/d/a/b/i/j/d;->c:Lcom/google/android/gms/common/api/Status;

    .line 2
    invoke-interface {v0, p1}, Lc/d/a/b/e/m/m/e;->a(Ljava/lang/Object;)V

    return-void
.end method
