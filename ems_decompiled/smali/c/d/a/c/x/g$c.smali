.class public Lc/d/a/c/x/g$c;
.super Lc/d/a/c/x/x;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/c/x/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc/d/a/c/x/g;


# direct methods
.method public constructor <init>(Lc/d/a/c/x/g;Landroid/content/Context;IZI)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/x/g$c;->b:Lc/d/a/c/x/g;

    iput p5, p0, Lc/d/a/c/x/g$c;->a:I

    invoke-direct {p0, p2, p3, p4}, Lc/d/a/c/x/x;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$x;[I)V
    .locals 2

    iget p1, p0, Lc/d/a/c/x/g$c;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/d/a/c/x/g$c;->b:Lc/d/a/c/x/g;

    .line 1
    iget-object p1, p1, Lc/d/a/c/x/g;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    aput p1, p2, v1

    iget-object p1, p0, Lc/d/a/c/x/g$c;->b:Lc/d/a/c/x/g;

    .line 3
    iget-object p1, p1, Lc/d/a/c/x/g;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    aput p1, p2, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/d/a/c/x/g$c;->b:Lc/d/a/c/x/g;

    .line 5
    iget-object p1, p1, Lc/d/a/c/x/g;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    aput p1, p2, v1

    iget-object p1, p0, Lc/d/a/c/x/g$c;->b:Lc/d/a/c/x/g;

    .line 7
    iget-object p1, p1, Lc/d/a/c/x/g;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    aput p1, p2, v0

    :goto_0
    return-void
.end method
