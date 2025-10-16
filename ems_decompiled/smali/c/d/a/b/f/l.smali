.class public final Lc/d/a/b/f/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/f/a$a;


# instance fields
.field public final synthetic a:Lc/d/a/b/f/a;


# direct methods
.method public constructor <init>(Lc/d/a/b/f/a;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/f/l;->a:Lc/d/a/b/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final b(Lc/d/a/b/f/c;)V
    .locals 0

    iget-object p1, p0, Lc/d/a/b/f/l;->a:Lc/d/a/b/f/a;

    .line 1
    iget-object p1, p1, Lc/d/a/b/f/a;->a:Lc/d/a/b/f/c;

    .line 2
    invoke-interface {p1}, Lc/d/a/b/f/c;->b()V

    return-void
.end method
