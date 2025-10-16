.class public final Lc/d/a/c/c0/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/i/m/l;


# instance fields
.field public final synthetic a:Lc/d/a/c/c0/r;

.field public final synthetic b:Lc/d/a/c/c0/s;


# direct methods
.method public constructor <init>(Lc/d/a/c/c0/r;Lc/d/a/c/c0/s;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/c0/p;->a:Lc/d/a/c/c0/r;

    iput-object p2, p0, Lc/d/a/c/c0/p;->b:Lc/d/a/c/c0/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/i/m/c0;)Lb/i/m/c0;
    .locals 3

    iget-object v0, p0, Lc/d/a/c/c0/p;->a:Lc/d/a/c/c0/r;

    new-instance v1, Lc/d/a/c/c0/s;

    iget-object v2, p0, Lc/d/a/c/c0/p;->b:Lc/d/a/c/c0/s;

    invoke-direct {v1, v2}, Lc/d/a/c/c0/s;-><init>(Lc/d/a/c/c0/s;)V

    invoke-interface {v0, p1, p2, v1}, Lc/d/a/c/c0/r;->a(Landroid/view/View;Lb/i/m/c0;Lc/d/a/c/c0/s;)Lb/i/m/c0;

    move-result-object p1

    return-object p1
.end method
