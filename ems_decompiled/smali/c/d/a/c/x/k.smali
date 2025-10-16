.class public Lc/d/a/c/x/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lc/d/a/c/x/g;


# direct methods
.method public constructor <init>(Lc/d/a/c/x/g;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/x/k;->c:Lc/d/a/c/x/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lc/d/a/c/x/k;->c:Lc/d/a/c/x/g;

    .line 1
    sget-object v0, Lc/d/a/c/x/g$e;->c:Lc/d/a/c/x/g$e;

    iget-object v1, p1, Lc/d/a/c/x/g;->h:Lc/d/a/c/x/g$e;

    sget-object v2, Lc/d/a/c/x/g$e;->d:Lc/d/a/c/x/g$e;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lc/d/a/c/x/g;->l(Lc/d/a/c/x/g$e;)V

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    invoke-virtual {p1, v2}, Lc/d/a/c/x/g;->l(Lc/d/a/c/x/g$e;)V

    :cond_1
    :goto_0
    return-void
.end method
