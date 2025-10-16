.class public Lc/d/a/c/c0/d$h;
.super Lb/r/d/w;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/c0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic f:Lc/d/a/c/c0/d;


# direct methods
.method public constructor <init>(Lc/d/a/c/c0/d;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/c0/d$h;->f:Lc/d/a/c/c0/d;

    invoke-direct {p0, p2}, Lb/r/d/w;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Lb/i/m/d0/b;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lb/r/d/w;->d(Landroid/view/View;Lb/i/m/d0/b;)V

    iget-object p1, p0, Lc/d/a/c/c0/d$h;->f:Lc/d/a/c/c0/d;

    iget-object p1, p1, Lc/d/a/c/c0/d;->g:Lc/d/a/c/c0/d$c;

    .line 1
    iget-object v0, p1, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget-object v0, v0, Lc/d/a/c/c0/d;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p1, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget-object v3, v3, Lc/d/a/c/c0/d;->g:Lc/d/a/c/c0/d$c;

    invoke-virtual {v3}, Lc/d/a/c/c0/d$c;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p1, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget-object v3, v3, Lc/d/a/c/c0/d;->g:Lc/d/a/c/c0/d$c;

    invoke-virtual {v3, v2}, Lc/d/a/c/c0/d$c;->getItemViewType(I)I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2
    :cond_2
    new-instance p1, Lb/i/m/d0/b$b;

    invoke-static {v0, v1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/i/m/d0/b$b;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p2, p1}, Lb/i/m/d0/b;->s(Ljava/lang/Object;)V

    return-void
.end method
