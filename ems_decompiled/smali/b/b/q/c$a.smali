.class public Lb/b/q/c$a;
.super Lb/b/p/i/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/q/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic m:Lb/b/q/c;


# direct methods
.method public constructor <init>(Lb/b/q/c;Landroid/content/Context;Lb/b/p/i/r;Landroid/view/View;)V
    .locals 7

    iput-object p1, p0, Lb/b/q/c$a;->m:Lb/b/q/c;

    sget v5, Lb/b/a;->actionOverflowMenuStyle:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lb/b/p/i/l;-><init>(Landroid/content/Context;Lb/b/p/i/g;Landroid/view/View;ZII)V

    .line 2
    iget-object p2, p3, Lb/b/p/i/r;->A:Lb/b/p/i/i;

    .line 3
    invoke-virtual {p2}, Lb/b/p/i/i;->g()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Lb/b/q/c;->l:Lb/b/q/c$d;

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p1, Lb/b/p/i/b;->j:Lb/b/p/i/n;

    .line 5
    check-cast p2, Landroid/view/View;

    .line 6
    :cond_0
    iput-object p2, p0, Lb/b/p/i/l;->f:Landroid/view/View;

    .line 7
    :cond_1
    iget-object p1, p1, Lb/b/q/c;->A:Lb/b/q/c$f;

    invoke-virtual {p0, p1}, Lb/b/p/i/l;->d(Lb/b/p/i/m$a;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Lb/b/q/c$a;->m:Lb/b/q/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lb/b/q/c;->x:Lb/b/q/c$a;

    const/4 v1, 0x0

    iput v1, v0, Lb/b/q/c;->B:I

    invoke-super {p0}, Lb/b/p/i/l;->c()V

    return-void
.end method
