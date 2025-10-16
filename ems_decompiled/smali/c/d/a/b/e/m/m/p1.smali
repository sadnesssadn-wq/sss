.class public final Lc/d/a/b/e/m/m/p1;
.super Lc/d/a/b/e/m/m/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/m/m/r<",
        "TA;TResultT;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lc/d/a/b/e/m/m/r$a;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/r$a;[Lc/d/a/b/e/c;ZI)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/e/m/m/p1;->d:Lc/d/a/b/e/m/m/r$a;

    invoke-direct {p0, p2, p3, p4}, Lc/d/a/b/e/m/m/r;-><init>([Lc/d/a/b/e/c;ZI)V

    return-void
.end method


# virtual methods
.method public final a(Lc/d/a/b/e/m/a$b;Lc/d/a/b/p/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lc/d/a/b/p/m<",
            "TResultT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/m/m/p1;->d:Lc/d/a/b/e/m/m/r$a;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/r$a;->a:Lc/d/a/b/e/m/m/o;

    .line 2
    invoke-interface {v0, p1, p2}, Lc/d/a/b/e/m/m/o;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
