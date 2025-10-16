.class public Lc/a/b/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/b/l$a;,
        Lc/a/b/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lc/a/b/a$a;

.field public final c:Lcom/android/volley/VolleyError;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/android/volley/VolleyError;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/b/l;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/b/l;->a:Ljava/lang/Object;

    iput-object v0, p0, Lc/a/b/l;->b:Lc/a/b/a$a;

    iput-object p1, p0, Lc/a/b/l;->c:Lcom/android/volley/VolleyError;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lc/a/b/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/a/b/a$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/b/l;->d:Z

    iput-object p1, p0, Lc/a/b/l;->a:Ljava/lang/Object;

    iput-object p2, p0, Lc/a/b/l;->b:Lc/a/b/a$a;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/a/b/l;->c:Lcom/android/volley/VolleyError;

    return-void
.end method
