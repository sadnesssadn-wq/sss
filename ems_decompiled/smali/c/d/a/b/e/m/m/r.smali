.class public abstract Lc/d/a/b/e/m/m/r;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/e/m/m/r$a;
    }
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
.field public final a:[Lc/d/a/b/e/c;

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/b/e/m/m/r;->a:[Lc/d/a/b/e/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/d/a/b/e/m/m/r;->b:Z

    iput v0, p0, Lc/d/a/b/e/m/m/r;->c:I

    return-void
.end method

.method public constructor <init>([Lc/d/a/b/e/c;ZI)V
    .locals 0
    .param p1    # [Lc/d/a/b/e/c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/e/m/m/r;->a:[Lc/d/a/b/e/c;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lc/d/a/b/e/m/m/r;->b:Z

    iput p3, p0, Lc/d/a/b/e/m/m/r;->c:I

    return-void
.end method


# virtual methods
.method public abstract a(Lc/d/a/b/e/m/a$b;Lc/d/a/b/p/m;)V
    .param p1    # Lc/d/a/b/e/m/a$b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lc/d/a/b/p/m;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lc/d/a/b/p/m<",
            "TResultT;>;)V"
        }
    .end annotation
.end method
