.class public abstract Lc/d/a/b/e/m/m/n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lc/d/a/b/e/m/a$b;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lc/d/a/b/e/m/m/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/m/j<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[Lc/d/a/b/e/c;

.field public final c:Z

.field public final d:I


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/j;)V
    .locals 0
    .param p1    # Lc/d/a/b/e/m/m/j;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/j<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/e/m/m/n;->a:Lc/d/a/b/e/m/m/j;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/d/a/b/e/m/m/n;->b:[Lc/d/a/b/e/c;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/d/a/b/e/m/m/n;->c:Z

    iput p1, p0, Lc/d/a/b/e/m/m/n;->d:I

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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
