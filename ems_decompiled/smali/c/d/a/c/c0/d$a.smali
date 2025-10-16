.class public Lc/d/a/c/c0/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/c0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/d/a/c/c0/d;


# direct methods
.method public constructor <init>(Lc/d/a/c/c0/d;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/c0/d$a;->c:Lc/d/a/c/c0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-object v0, p0, Lc/d/a/c/c0/d$a;->c:Lc/d/a/c/c0/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/d/a/c/c0/d;->h(Z)V

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->getItemData()Lb/b/p/i/i;

    move-result-object p1

    iget-object v0, p0, Lc/d/a/c/c0/d$a;->c:Lc/d/a/c/c0/d;

    iget-object v2, v0, Lc/d/a/c/c0/d;->e:Lb/b/p/i/g;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v3}, Lb/b/p/i/g;->s(Landroid/view/MenuItem;Lb/b/p/i/m;I)Z

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/p/i/i;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/c0/d$a;->c:Lc/d/a/c/c0/d;

    iget-object v0, v0, Lc/d/a/c/c0/d;->g:Lc/d/a/c/c0/d$c;

    invoke-virtual {v0, p1}, Lc/d/a/c/c0/d$c;->b(Lb/b/p/i/i;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p1, p0, Lc/d/a/c/c0/d$a;->c:Lc/d/a/c/c0/d;

    invoke-virtual {p1, v3}, Lc/d/a/c/c0/d;->h(Z)V

    if-eqz v1, :cond_1

    iget-object p1, p0, Lc/d/a/c/c0/d$a;->c:Lc/d/a/c/c0/d;

    invoke-virtual {p1, v3}, Lc/d/a/c/c0/d;->g(Z)V

    :cond_1
    return-void
.end method
