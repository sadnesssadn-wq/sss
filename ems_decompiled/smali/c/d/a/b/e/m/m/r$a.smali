.class public Lc/d/a/b/e/m/m/r$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/e/m/m/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lc/d/a/b/e/m/a$b;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lc/d/a/b/e/m/m/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/m/o<",
            "TA;",
            "Lc/d/a/b/p/m<",
            "TResultT;>;>;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:[Lc/d/a/b/e/c;

.field public d:I


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/o1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/d/a/b/e/m/m/r$a;->b:Z

    const/4 p1, 0x0

    iput p1, p0, Lc/d/a/b/e/m/m/r$a;->d:I

    return-void
.end method


# virtual methods
.method public a()Lc/d/a/b/e/m/m/r;
    .locals 4
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/d/a/b/e/m/m/r<",
            "TA;TResultT;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/m/m/r$a;->a:Lc/d/a/b/e/m/m/o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "execute parameter required"

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->f(ZLjava/lang/Object;)V

    new-instance v0, Lc/d/a/b/e/m/m/p1;

    iget-object v1, p0, Lc/d/a/b/e/m/m/r$a;->c:[Lc/d/a/b/e/c;

    iget-boolean v2, p0, Lc/d/a/b/e/m/m/r$a;->b:Z

    iget v3, p0, Lc/d/a/b/e/m/m/r$a;->d:I

    invoke-direct {v0, p0, v1, v2, v3}, Lc/d/a/b/e/m/m/p1;-><init>(Lc/d/a/b/e/m/m/r$a;[Lc/d/a/b/e/c;ZI)V

    return-object v0
.end method
