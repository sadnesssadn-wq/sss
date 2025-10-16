.class public Lb/b/k/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/i/m/l;


# instance fields
.field public final synthetic a:Lb/b/k/k;


# direct methods
.method public constructor <init>(Lb/b/k/k;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/l;->a:Lb/b/k/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/i/m/c0;)Lb/i/m/c0;
    .locals 4

    invoke-virtual {p2}, Lb/i/m/c0;->e()I

    move-result v0

    iget-object v1, p0, Lb/b/k/l;->a:Lb/b/k/k;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lb/b/k/k;->a0(Lb/i/m/c0;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lb/i/m/c0;->c()I

    move-result v0

    invoke-virtual {p2}, Lb/i/m/c0;->d()I

    move-result v2

    invoke-virtual {p2}, Lb/i/m/c0;->b()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Lb/i/m/c0;->h(IIII)Lb/i/m/c0;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Lb/i/m/r;->u(Landroid/view/View;Lb/i/m/c0;)Lb/i/m/c0;

    move-result-object p1

    return-object p1
.end method
