.class public Lc/d/a/c/d0/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/c/d0/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/c/d0/a;


# direct methods
.method public constructor <init>(Lc/d/a/c/d0/a;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/d0/a$a;->a:Lc/d/a/c/d0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lc/d/a/c/d0/a$a;->a:Lc/d/a/c/d0/a;

    .line 1
    iget-object p1, p1, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lc/d/a/c/d0/a$a;->a:Lc/d/a/c/d0/a;

    .line 3
    iget-object p2, p1, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p1}, Lc/d/a/c/d0/a;->b()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lc/d/a/c/d0/a;->r:Lc/d/a/c/o/a;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lc/d/a/c/o/b;->c(Lc/d/a/c/o/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    :goto_0
    return-void
.end method
