.class public Lb/b/q/c$e;
.super Lb/b/p/i/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/q/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic m:Lb/b/q/c;


# direct methods
.method public constructor <init>(Lb/b/q/c;Landroid/content/Context;Lb/b/p/i/g;Landroid/view/View;Z)V
    .locals 7

    iput-object p1, p0, Lb/b/q/c$e;->m:Lb/b/q/c;

    sget v5, Lb/b/a;->actionOverflowMenuStyle:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lb/b/p/i/l;-><init>(Landroid/content/Context;Lb/b/p/i/g;Landroid/view/View;ZII)V

    const p2, 0x800005

    .line 2
    iput p2, p0, Lb/b/p/i/l;->g:I

    .line 3
    iget-object p1, p1, Lb/b/q/c;->A:Lb/b/q/c$f;

    invoke-virtual {p0, p1}, Lb/b/p/i/l;->d(Lb/b/p/i/m$a;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Lb/b/q/c$e;->m:Lb/b/q/c;

    .line 1
    iget-object v0, v0, Lb/b/p/i/b;->e:Lb/b/p/i/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lb/b/p/i/g;->c(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/q/c$e;->m:Lb/b/q/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lb/b/q/c;->w:Lb/b/q/c$e;

    invoke-super {p0}, Lb/b/p/i/l;->c()V

    return-void
.end method
