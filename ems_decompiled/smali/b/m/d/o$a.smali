.class public Lb/m/d/o$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/m/d/o;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lb/m/d/o;


# direct methods
.method public constructor <init>(Lb/m/d/o;)V
    .locals 0

    iput-object p1, p0, Lb/m/d/o$a;->c:Lb/m/d/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lb/m/d/o$a;->c:Lb/m/d/o;

    iget-object v0, v0, Lb/m/d/o;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/m/d/o$a;->c:Lb/m/d/o;

    iget-object v0, v0, Lb/m/d/o;->b:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    iget-object v0, p0, Lb/m/d/o$a;->c:Lb/m/d/o;

    iget-object v1, v0, Lb/m/d/o;->c:Lb/m/d/p0$a;

    iget-object v2, v0, Lb/m/d/o;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Lb/m/d/o;->d:Lb/i/i/a;

    check-cast v1, Lb/m/d/y$d;

    invoke-virtual {v1, v2, v0}, Lb/m/d/y$d;->a(Landroidx/fragment/app/Fragment;Lb/i/i/a;)V

    :cond_0
    return-void
.end method
